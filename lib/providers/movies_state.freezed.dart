// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies, bool onlyFavorites) data,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateData value) data,
    required TResult Function(_MoviesStateError value) error,
    required TResult Function(_MoviesStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoviesStateData value)? data,
    TResult? Function(_MoviesStateError value)? error,
    TResult? Function(_MoviesStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateData value)? data,
    TResult Function(_MoviesStateError value)? error,
    TResult Function(_MoviesStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MoviesStateDataImplCopyWith<$Res> {
  factory _$$MoviesStateDataImplCopyWith(_$MoviesStateDataImpl value,
          $Res Function(_$MoviesStateDataImpl) then) =
      __$$MoviesStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> movies, bool onlyFavorites});
}

/// @nodoc
class __$$MoviesStateDataImplCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesStateDataImpl>
    implements _$$MoviesStateDataImplCopyWith<$Res> {
  __$$MoviesStateDataImplCopyWithImpl(
      _$MoviesStateDataImpl _value, $Res Function(_$MoviesStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? onlyFavorites = null,
  }) {
    return _then(_$MoviesStateDataImpl(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      onlyFavorites: null == onlyFavorites
          ? _value.onlyFavorites
          : onlyFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MoviesStateDataImpl implements _MoviesStateData {
  const _$MoviesStateDataImpl(
      {required final List<Movie> movies, this.onlyFavorites = false})
      : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  @JsonKey()
  final bool onlyFavorites;

  @override
  String toString() {
    return 'MoviesState.data(movies: $movies, onlyFavorites: $onlyFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateDataImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.onlyFavorites, onlyFavorites) ||
                other.onlyFavorites == onlyFavorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movies), onlyFavorites);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesStateDataImplCopyWith<_$MoviesStateDataImpl> get copyWith =>
      __$$MoviesStateDataImplCopyWithImpl<_$MoviesStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies, bool onlyFavorites) data,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) {
    return data(movies, onlyFavorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) {
    return data?.call(movies, onlyFavorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(movies, onlyFavorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateData value) data,
    required TResult Function(_MoviesStateError value) error,
    required TResult Function(_MoviesStateLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoviesStateData value)? data,
    TResult? Function(_MoviesStateError value)? error,
    TResult? Function(_MoviesStateLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateData value)? data,
    TResult Function(_MoviesStateError value)? error,
    TResult Function(_MoviesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _MoviesStateData implements MoviesState {
  const factory _MoviesStateData(
      {required final List<Movie> movies,
      final bool onlyFavorites}) = _$MoviesStateDataImpl;

  List<Movie> get movies;
  bool get onlyFavorites;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesStateDataImplCopyWith<_$MoviesStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesStateErrorImplCopyWith<$Res> {
  factory _$$MoviesStateErrorImplCopyWith(_$MoviesStateErrorImpl value,
          $Res Function(_$MoviesStateErrorImpl) then) =
      __$$MoviesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MoviesStateErrorImplCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesStateErrorImpl>
    implements _$$MoviesStateErrorImplCopyWith<$Res> {
  __$$MoviesStateErrorImplCopyWithImpl(_$MoviesStateErrorImpl _value,
      $Res Function(_$MoviesStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MoviesStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoviesStateErrorImpl implements _MoviesStateError {
  const _$MoviesStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MoviesState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesStateErrorImplCopyWith<_$MoviesStateErrorImpl> get copyWith =>
      __$$MoviesStateErrorImplCopyWithImpl<_$MoviesStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies, bool onlyFavorites) data,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateData value) data,
    required TResult Function(_MoviesStateError value) error,
    required TResult Function(_MoviesStateLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoviesStateData value)? data,
    TResult? Function(_MoviesStateError value)? error,
    TResult? Function(_MoviesStateLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateData value)? data,
    TResult Function(_MoviesStateError value)? error,
    TResult Function(_MoviesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MoviesStateError implements MoviesState {
  const factory _MoviesStateError({required final String error}) =
      _$MoviesStateErrorImpl;

  String get error;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesStateErrorImplCopyWith<_$MoviesStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesStateLoadingImplCopyWith<$Res> {
  factory _$$MoviesStateLoadingImplCopyWith(_$MoviesStateLoadingImpl value,
          $Res Function(_$MoviesStateLoadingImpl) then) =
      __$$MoviesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesStateLoadingImplCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesStateLoadingImpl>
    implements _$$MoviesStateLoadingImplCopyWith<$Res> {
  __$$MoviesStateLoadingImplCopyWithImpl(_$MoviesStateLoadingImpl _value,
      $Res Function(_$MoviesStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MoviesStateLoadingImpl implements _MoviesStateLoading {
  const _$MoviesStateLoadingImpl();

  @override
  String toString() {
    return 'MoviesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Movie> movies, bool onlyFavorites) data,
    required TResult Function(String error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Movie> movies, bool onlyFavorites)? data,
    TResult Function(String error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateData value) data,
    required TResult Function(_MoviesStateError value) error,
    required TResult Function(_MoviesStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoviesStateData value)? data,
    TResult? Function(_MoviesStateError value)? error,
    TResult? Function(_MoviesStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateData value)? data,
    TResult Function(_MoviesStateError value)? error,
    TResult Function(_MoviesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MoviesStateLoading implements MoviesState {
  const factory _MoviesStateLoading() = _$MoviesStateLoadingImpl;
}
