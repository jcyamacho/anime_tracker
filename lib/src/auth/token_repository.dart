import 'package:anime_tracker/src/core/config.dart';
import 'package:anime_tracker/src/core/storage.dart';
import 'package:oauth2/oauth2.dart';

class TokenRepository {
  final Storage<Credentials> _storage;
  final Config _config;

  TokenRepository({
    required Storage<Credentials> storage,
    required Config config,
  })  : _storage = storage,
        _config = config;

  Future<String?> getAccessToken() async {
    var credentials = await _storage.read();
    if (credentials?.isExpired == true) {
      credentials = await credentials!.refresh(
        identifier: _config.clientId,
        secret: _config.clientSecret,
        basicAuth: false,
      );
      await _storage.write(credentials);
    }
    return credentials?.accessToken;
  }
}
