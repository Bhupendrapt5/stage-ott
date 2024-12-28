import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stage_ott_assignment/models/movie.dart';
import 'package:stage_ott_assignment/services/shared_preference_service.dart';
import 'package:stage_ott_assignment/utils/constant_string.dart';

part 'favorite_movies_notifier.g.dart';

@riverpod
class FavoriteMoviesNotifier extends _$FavoriteMoviesNotifier {
  @override
  Set<Movie> build() {
    return {};
  }

  Future<void> loadFavorites() async {
    final favoriteMoviesListJsonEncoded = ref
        .read(sharedPreferenceServiceProvider)
        .sharedPreference
        .getString(SharedPreferencesKeys.favoriteMovies);

    if (favoriteMoviesListJsonEncoded == null) {
      return;
    }

    final decoded = jsonDecode(favoriteMoviesListJsonEncoded);
    final favoriteMoviesList = (decoded as List).map((e) => Movie.fromJson(e));

    state = Set<Movie>.from(favoriteMoviesList);
  }

  void addFavoriteMovie(Movie movie) {
    final favoriteMoviesList = Set<Movie>.from(state);
    favoriteMoviesList.add(movie);
    state = favoriteMoviesList;
    _saveFavorites();
  }

  void removeFavoriteMovie(Movie movie) {
    final favoriteMoviesList = Set<Movie>.from(state);
    favoriteMoviesList.remove(movie);
    state = favoriteMoviesList;
    _saveFavorites();
  }

  Future<void> _saveFavorites() async {
    final favoriteMoviesList = List.from(state);
    final favoriteMoviesListJsonEncoded = jsonEncode(favoriteMoviesList);
    ref.read(sharedPreferenceServiceProvider).sharedPreference.setString(
        SharedPreferencesKeys.favoriteMovies, favoriteMoviesListJsonEncoded);
  }
}

@riverpod
bool isMovieFavoriteNotifier(Ref ref, {required Movie movie}) {
  final favoriteMovies = ref.watch(favoriteMoviesNotifierProvider);
  return favoriteMovies.contains(movie);
}
