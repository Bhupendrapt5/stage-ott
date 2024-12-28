import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stage_ott_assignment/models/movie.dart';
import 'package:stage_ott_assignment/providers/connectivity_checker.dart';
import 'package:stage_ott_assignment/providers/favorite_movies_notifier.dart';
import 'package:stage_ott_assignment/providers/movies_state.dart';
import 'package:stage_ott_assignment/providers/search_notifier.dart';
import 'package:stage_ott_assignment/providers/trending_movies_notifier.dart';

part 'movie_state_notifier.g.dart';

@riverpod
class MovieStateNotifier extends _$MovieStateNotifier {
  @override
  MoviesState build() {
    ref.listen(connectvityChangedProvider, (previous, next) {
      ref.invalidate(connectvityProvider);
    });

    final hasNoConnection = ref.watch(connectvityProvider).maybeWhen(
          orElse: () => true,
          data: (data) => data.contains(ConnectivityResult.none),
        );

    final searchQuery = ref.watch(searchMovieTextNotifierProvider);

    if (hasNoConnection) {
      final favoriteMovies = ref.watch(favoriteMoviesNotifierProvider).toList();
      final filteredMovies = _applySearchFilter(favoriteMovies, searchQuery);
      return MoviesState.data(
        onlyFavorites: true,
        movies: filteredMovies,
      );
    } else {
      return ref.watch(getTrendingMoviesProvider).when(
            data: (movies) {
              final filteredMovies = _applySearchFilter(movies, searchQuery);
              return MoviesState.data(movies: filteredMovies);
            },
            loading: () => MoviesState.loading(),
            error: (error, stackTrace) =>
                MoviesState.error(error: error.toString()),
          );
    }
  }
}

List<Movie> _applySearchFilter(List<Movie> movies, String searchQuery) {
  if (searchQuery.isEmpty) return movies;
  return List.from(movies.where(
    (movie) => movie.title.toLowerCase().contains(
          searchQuery.toLowerCase(),
        ),
  ));
}
