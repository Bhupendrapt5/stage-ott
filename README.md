# TMDB - Trending Movies

This app uses [The Movie Database](https://www.themoviedb.org/documentation/api) API's `trending/movie` endpoint to retrieve trending movies.

## How to run this 

* Make sure you have [Flutter](https://docs.flutter.dev/get-started/install) installed in your system
* Clone this repository 
* Generate TMDB API key for yourself from [here](https://developer.themoviedb.org/reference/intro/getting-started) and paste it in `env_config.dart`
```dart
    static const String apiKey = String.fromEnvironment(
    'API_KEY',
    defaultValue: 'ADD-YOUR-API-KEY-HERE',
  );
```

Voila..!! you are ready to run the app.

* Last point, before running the app, run the following commond in your terminal 
```
dart run build_runner build --delete-conflicting-outputs 
```

and now just run the app


