import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stage_ott_assignment/models/movie.dart';

part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState.data({
    required List<Movie> movies,
    @Default(false) bool onlyFavorites,
  }) = _MoviesStateData;
  const factory MoviesState.error({required String error}) = _MoviesStateError;
  const factory MoviesState.loading() = _MoviesStateLoading;
}
