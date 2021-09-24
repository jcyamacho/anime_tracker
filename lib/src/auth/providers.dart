import 'package:oauth2/oauth2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:anime_tracker/src/core/storage.dart';
import 'package:anime_tracker/src/core/providers.dart';
import 'auth_service.dart';
import 'serializers.dart';
import 'token_repository.dart';

final credentialsStorageProvider = Provider<Storage<Credentials>>((_) {
  return SecureStorage<Credentials>(
    serializer: CredentialsSerializer(),
    storageKey: 'credentials',
  );
});

final tokenRepositoryProvider = Provider<TokenRepository>((ref) {
  return TokenRepository(
    storage: ref.read(credentialsStorageProvider),
    config: ref.read(configProvider),
  );
});

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(
    tokenRepository: ref.read(tokenRepositoryProvider),
    storage: ref.read(credentialsStorageProvider),
    config: ref.read(configProvider),
  );
});

final authStatusStreamProvider = StreamProvider<AuthenticationStatus>((ref) {
  final authService = ref.read(authServiceProvider);
  return authService.status;
});
