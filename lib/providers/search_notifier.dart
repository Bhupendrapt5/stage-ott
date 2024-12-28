import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_notifier.g.dart';

@riverpod
class SearchMovieTextNotifier extends _$SearchMovieTextNotifier {
  @override
  String build() {
    return '';
  }

  void searchMovies(String value) {
    state = value;
  }
}
