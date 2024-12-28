import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stage_ott_assignment/models/movie.dart';
import 'package:stage_ott_assignment/repository/trending_movie_repository.dart';

part 'trending_movies_notifier.g.dart';

@riverpod
Future<List<Movie>> getTrendingMovies(Ref ref) {
  return ref.read(trendingMovieRepositoryProvider).getTrendingMovies();
}
