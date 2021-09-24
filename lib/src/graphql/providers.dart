import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_http_link/gql_http_link.dart';

import 'package:anime_tracker/src/auth/providers.dart';
import 'package:anime_tracker/src/core/providers.dart';

final clientProvider = FutureProvider<Client>((ref) async {
  final config = ref.read(configProvider);
  final tokenRepository = ref.read(tokenRepositoryProvider);

  final token = await tokenRepository.getAccessToken();

  final link = HttpLink(
    config.graphqlUrl,
    defaultHeaders: {
      'Authorization': 'Bearer $token',
    },
  );

  return Client(
    link: link,
    cache: Cache(store: MemoryStore()),
  );
});
