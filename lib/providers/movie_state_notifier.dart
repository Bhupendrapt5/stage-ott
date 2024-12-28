import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stage_ott_assignment/providers/connectivity_checker.dart';
import 'package:stage_ott_assignment/providers/favorite_movies_notifier.dart';
import 'package:stage_ott_assignment/providers/movies_state.dart';
import 'package:stage_ott_assignment/providers/trending_movies_notifier.dart';

part 'movie_state_notifier.g.dart';

@riverpod
class MovieStateNotifier extends _$MovieStateNotifier {
  @override
  MoviesState build() {
    ref.listen(connectvityChangedProvider, (previous, next) {
      ref.invalidate(connectvityProvider);
    });

    final result = ref.watch(connectvityProvider).maybeWhen(
          orElse: () => true,
          data: (data) => data.contains(ConnectivityResult.none),
        );
    return result
        ? MoviesState.data(
            onlyFavorites: true,
            movies: ref.watch(favoriteMoviesNotifierProvider).toList(),
          )
        : ref.watch(getTrendingMoviesProvider).when(
              data: (movies) => MoviesState.data(movies: movies),
              error: (error, stackTrace) =>
                  MoviesState.error(error: error.toString()),
              loading: () => MoviesState.loading(),
            );
  }
}
