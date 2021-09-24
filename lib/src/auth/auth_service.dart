import 'dart:async';
import 'package:oauth2/oauth2.dart';

import 'package:anime_tracker/src/core/config.dart';
import 'package:anime_tracker/src/core/storage.dart';
import 'token_repository.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthService {
  final _controller = StreamController<AuthenticationStatus>();
  final TokenRepository _tokenRepository;
  final Storage<Credentials> _storage;
  final Config _config;

  AuthService({
    required TokenRepository tokenRepository,
    required Storage<Credentials> storage,
    required Config config,
  })  : _tokenRepository = tokenRepository,
        _storage = storage,
        _config = config;

  Stream<AuthenticationStatus> get status async* {
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<bool> login() async {
    final token = await _tokenRepository.getAccessToken();
    return _validateToken(token);
  }

  Future<bool> loginFrom(Uri redirected) async {
    final grant = _createAuthorizationCodeGrant();
    // required to internal set redirect uri
    grant.getAuthorizationUrl(Uri.parse(_config.redirectUrl));
    final client = await grant.handleAuthorizationResponse(
      redirected.queryParameters,
    );
    await _storage.write(client.credentials);
    return _validateToken(client.credentials.accessToken);
  }

  Uri getAuthorizationUrl() {
    final grant = _createAuthorizationCodeGrant();
    return grant.getAuthorizationUrl(Uri.parse(_config.redirectUrl));
  }

  bool _validateToken(String? token) {
    if (token != null) {
      _controller.add(AuthenticationStatus.authenticated);
      return true;
    }
    _controller.add(AuthenticationStatus.unauthenticated);
    return false;
  }

  AuthorizationCodeGrant _createAuthorizationCodeGrant() {
    return AuthorizationCodeGrant(
      _config.clientId,
      Uri.parse(_config.authUrl),
      Uri.parse(_config.tokenUrl),
      secret: _config.clientSecret,
    );
  }
}
