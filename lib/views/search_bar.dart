import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_ott_assignment/providers/search_notifier.dart';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  late final TextEditingController _textEditingController;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextField(
        autofocus: false,
        controller: _textEditingController,
        onChanged: (value) {
          if (_debounce?.isActive ?? false) _debounce?.cancel();
          _debounce = Timer(const Duration(milliseconds: 500), () {
            ref
                .read(searchMovieTextNotifierProvider.notifier)
                .searchMovies(value);
          });
        },
        decoration: InputDecoration(
          hintText: 'Search movie...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60.r),
          ),
          suffixIcon: Consumer(
            builder: (context, ref, child) {
              final searchQuery = ref.watch(searchMovieTextNotifierProvider);

              return searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _textEditingController.clear();
                        ref
                            .read(searchMovieTextNotifierProvider.notifier)
                            .searchMovies('');
                      },
                    )
                  : SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
