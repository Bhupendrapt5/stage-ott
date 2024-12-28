import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_ott_assignment/models/movie.dart';
import 'package:stage_ott_assignment/providers/favorite_movies_notifier.dart';
import 'package:stage_ott_assignment/utils/constant_string.dart';

class MovieTile extends ConsumerWidget {
  const MovieTile({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMoviesNotifier =
        ref.watch(favoriteMoviesNotifierProvider.notifier);
    final isFavorite = ref.watch(isMovieFavoriteNotifierProvider(movie: movie));
    return Column(
      children: [
        Image.network(
          AppConstants.assetBaseURL + movie.backdropPath,
          fit: BoxFit.cover,
          height: 600.h,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25.w,
              vertical: 35.w,
            ),
            color: Colors.blueGrey,
            alignment: Alignment.center,
            child: Column(
              spacing: 16.w,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        movie.title.trim(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.sp,
                        ),
                      ),
                    ),
                    Row(
                      spacing: 6.w,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 36.w),
                        BaseLabel(
                          text: movie.voteAverage.toStringAsFixed(1),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseLabel(text: movie.releaseDate),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        isFavorite
                            ? favoriteMoviesNotifier.removeFavoriteMovie(movie)
                            : favoriteMoviesNotifier.addFavoriteMovie(movie);
                      },
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: 40.w,
                        color: isFavorite ? Colors.red : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BaseLabel extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;

  const BaseLabel({super.key, required this.text, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.white70,
        fontSize: size?.sp ?? 28.sp,
      ),
    );
  }
}
