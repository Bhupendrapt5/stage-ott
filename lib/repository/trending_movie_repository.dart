import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stage_ott_assignment/models/movie.dart';
import 'package:stage_ott_assignment/services/api_client.dart';
import 'package:stage_ott_assignment/utils/constant_string.dart';

final trendingMovieRepositoryProvider = Provider<TrendingMovieRepository>(
    (ref) => TrendingMovieRepository(ref: ref));

class TrendingMovieRepository {
  final Ref ref;

  TrendingMovieRepository({required this.ref});

  Future<List<Movie>> getTrendingMovies() async {
    try {
      final getTrendingMoviesResponse = await ref
          .read(apiClientProvider)
          .request(endpoint: Endpoints.trendingMovies);

      return (getTrendingMoviesResponse.data['results'] as List).map((e) {
        return Movie.fromJson(e);
      }).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
