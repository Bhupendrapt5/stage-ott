// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_movies_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isMovieFavoriteNotifierHash() =>
    r'e40b09b317f18f838008120c0806976807d6be80';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [isMovieFavoriteNotifier].
@ProviderFor(isMovieFavoriteNotifier)
const isMovieFavoriteNotifierProvider = IsMovieFavoriteNotifierFamily();

/// See also [isMovieFavoriteNotifier].
class IsMovieFavoriteNotifierFamily extends Family<bool> {
  /// See also [isMovieFavoriteNotifier].
  const IsMovieFavoriteNotifierFamily();

  /// See also [isMovieFavoriteNotifier].
  IsMovieFavoriteNotifierProvider call({
    required Movie movie,
  }) {
    return IsMovieFavoriteNotifierProvider(
      movie: movie,
    );
  }

  @override
  IsMovieFavoriteNotifierProvider getProviderOverride(
    covariant IsMovieFavoriteNotifierProvider provider,
  ) {
    return call(
      movie: provider.movie,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isMovieFavoriteNotifierProvider';
}

/// See also [isMovieFavoriteNotifier].
class IsMovieFavoriteNotifierProvider extends AutoDisposeProvider<bool> {
  /// See also [isMovieFavoriteNotifier].
  IsMovieFavoriteNotifierProvider({
    required Movie movie,
  }) : this._internal(
          (ref) => isMovieFavoriteNotifier(
            ref as IsMovieFavoriteNotifierRef,
            movie: movie,
          ),
          from: isMovieFavoriteNotifierProvider,
          name: r'isMovieFavoriteNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isMovieFavoriteNotifierHash,
          dependencies: IsMovieFavoriteNotifierFamily._dependencies,
          allTransitiveDependencies:
              IsMovieFavoriteNotifierFamily._allTransitiveDependencies,
          movie: movie,
        );

  IsMovieFavoriteNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movie,
  }) : super.internal();

  final Movie movie;

  @override
  Override overrideWith(
    bool Function(IsMovieFavoriteNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsMovieFavoriteNotifierProvider._internal(
        (ref) => create(ref as IsMovieFavoriteNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movie: movie,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsMovieFavoriteNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsMovieFavoriteNotifierProvider && other.movie == movie;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movie.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsMovieFavoriteNotifierRef on AutoDisposeProviderRef<bool> {
  /// The parameter `movie` of this provider.
  Movie get movie;
}

class _IsMovieFavoriteNotifierProviderElement
    extends AutoDisposeProviderElement<bool> with IsMovieFavoriteNotifierRef {
  _IsMovieFavoriteNotifierProviderElement(super.provider);

  @override
  Movie get movie => (origin as IsMovieFavoriteNotifierProvider).movie;
}

String _$favoriteMoviesNotifierHash() =>
    r'fafb4b6d500a919dc03ed45545b940283da5b71e';

/// See also [FavoriteMoviesNotifier].
@ProviderFor(FavoriteMoviesNotifier)
final favoriteMoviesNotifierProvider =
    AutoDisposeNotifierProvider<FavoriteMoviesNotifier, Set<Movie>>.internal(
  FavoriteMoviesNotifier.new,
  name: r'favoriteMoviesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favoriteMoviesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FavoriteMoviesNotifier = AutoDisposeNotifier<Set<Movie>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
