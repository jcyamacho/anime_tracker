class Config {
  final String authUrl;
  final String tokenUrl;
  final String redirectUrl;
  final String clientId;
  final String clientSecret;
  final String graphqlUrl;

  const Config({
    required this.authUrl,
    required this.tokenUrl,
    required this.redirectUrl,
    required this.clientId,
    required this.clientSecret,
    required this.graphqlUrl,
  });

  factory Config.fromEnvironment() {
    return const Config(
      authUrl: String.fromEnvironment('AUTH_URL',
          defaultValue: 'https://anilist.co/api/v2/oauth/authorize'),
      tokenUrl: String.fromEnvironment('TOKEN_URL',
          defaultValue: 'https://anilist.co/api/v2/oauth/token'),
      redirectUrl: String.fromEnvironment('REDIRECT_URL',
          defaultValue: 'http://localhost'),
      clientId: String.fromEnvironment('CLIENT_ID', defaultValue: '6153'),
      clientSecret: String.fromEnvironment('CLIENT_SECRET',
          defaultValue: '7sH8gRK6VxankezlzwYxIoFDjggAbhuv0HKZsGWn'),
      graphqlUrl: String.fromEnvironment('GRAPHQL_URL',
          defaultValue: 'https://graphql.anilist.co'),
    );
  }
}
