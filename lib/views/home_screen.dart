import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_ott_assignment/models/movie.dart';
import 'package:stage_ott_assignment/providers/favorite_movies_notifier.dart';
import 'package:stage_ott_assignment/providers/trending_movies_notifier.dart';
import 'package:stage_ott_assignment/views/movie_tile_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(favoriteMoviesNotifierProvider.notifier).loadFavorites();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<Set<Movie>>(favoriteMoviesNotifierProvider, (prev, next) {});
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Trending Movies',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 65.sp,
          ),
        ),
      ),
      body: ref.watch(getTrendingMoviesProvider).when(
            data: (movies) => _TrendingMoviesGridView(movies: movies),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}

class _TrendingMoviesGridView extends StatelessWidget {
  final List<Movie> movies;
  const _TrendingMoviesGridView({required this.movies});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.w,
        childAspectRatio: 4 / 6,
      ),
      cacheExtent: 9999,
      itemCount: movies.length,
      itemBuilder: (context, index) => MovieTile(
        movie: movies[index],
      ),
    );
  }
}
