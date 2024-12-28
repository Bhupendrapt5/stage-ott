class EnvConfig {
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://api.themoviedb.org/3/',
  );

  static const String apiKey = String.fromEnvironment(
    'API_KEY',
    defaultValue: 'ADD-YOUR-API-KEY-HERE',
  );
}
