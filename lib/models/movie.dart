import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String backdropPath,
    required int id,
    required String title,
    required String originalTitle,
    required String overview,
    required String posterPath,
    required String mediaType,
    required bool adult,
    required String originalLanguage,
    required List<int> genreIds,
    required double popularity,
    required DateTime releaseDate,
    required double voteAverage,
    required int voteCount,
    @Default(false) bool video,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
