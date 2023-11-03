// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenericState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericStateCopyWith<T, $Res> {
  factory $GenericStateCopyWith(
          GenericState<T> value, $Res Function(GenericState<T>) then) =
      _$GenericStateCopyWithImpl<T, $Res, GenericState<T>>;
}

/// @nodoc
class _$GenericStateCopyWithImpl<T, $Res, $Val extends GenericState<T>>
    implements $GenericStateCopyWith<T, $Res> {
  _$GenericStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenericLoadingStateImplCopyWith<T, $Res> {
  factory _$$GenericLoadingStateImplCopyWith(_$GenericLoadingStateImpl<T> value,
          $Res Function(_$GenericLoadingStateImpl<T>) then) =
      __$$GenericLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GenericLoadingStateImplCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericLoadingStateImpl<T>>
    implements _$$GenericLoadingStateImplCopyWith<T, $Res> {
  __$$GenericLoadingStateImplCopyWithImpl(_$GenericLoadingStateImpl<T> _value,
      $Res Function(_$GenericLoadingStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenericLoadingStateImpl<T> implements GenericLoadingState<T> {
  const _$GenericLoadingStateImpl();

  @override
  String toString() {
    return 'GenericState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
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
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GenericLoadingState<T> implements GenericState<T> {
  const factory GenericLoadingState() = _$GenericLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$GenericInitialStateImplCopyWith<T, $Res> {
  factory _$$GenericInitialStateImplCopyWith(_$GenericInitialStateImpl<T> value,
          $Res Function(_$GenericInitialStateImpl<T>) then) =
      __$$GenericInitialStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GenericInitialStateImplCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericInitialStateImpl<T>>
    implements _$$GenericInitialStateImplCopyWith<T, $Res> {
  __$$GenericInitialStateImplCopyWithImpl(_$GenericInitialStateImpl<T> _value,
      $Res Function(_$GenericInitialStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenericInitialStateImpl<T> implements GenericInitialState<T> {
  const _$GenericInitialStateImpl();

  @override
  String toString() {
    return 'GenericState<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericInitialStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class GenericInitialState<T> implements GenericState<T> {
  const factory GenericInitialState() = _$GenericInitialStateImpl<T>;
}

/// @nodoc
abstract class _$$GenericSuccessStateImplCopyWith<T, $Res> {
  factory _$$GenericSuccessStateImplCopyWith(_$GenericSuccessStateImpl<T> value,
          $Res Function(_$GenericSuccessStateImpl<T>) then) =
      __$$GenericSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$GenericSuccessStateImplCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericSuccessStateImpl<T>>
    implements _$$GenericSuccessStateImplCopyWith<T, $Res> {
  __$$GenericSuccessStateImplCopyWithImpl(_$GenericSuccessStateImpl<T> _value,
      $Res Function(_$GenericSuccessStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GenericSuccessStateImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$GenericSuccessStateImpl<T> implements GenericSuccessState<T> {
  const _$GenericSuccessStateImpl([this.data]);

  @override
  final T? data;

  @override
  String toString() {
    return 'GenericState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericSuccessStateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericSuccessStateImplCopyWith<T, _$GenericSuccessStateImpl<T>>
      get copyWith => __$$GenericSuccessStateImplCopyWithImpl<T,
          _$GenericSuccessStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GenericSuccessState<T> implements GenericState<T> {
  const factory GenericSuccessState([final T? data]) =
      _$GenericSuccessStateImpl<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$$GenericSuccessStateImplCopyWith<T, _$GenericSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericSuccessListStateImplCopyWith<T, $Res> {
  factory _$$GenericSuccessListStateImplCopyWith(
          _$GenericSuccessListStateImpl<T> value,
          $Res Function(_$GenericSuccessListStateImpl<T>) then) =
      __$$GenericSuccessListStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class __$$GenericSuccessListStateImplCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res,
        _$GenericSuccessListStateImpl<T>>
    implements _$$GenericSuccessListStateImplCopyWith<T, $Res> {
  __$$GenericSuccessListStateImplCopyWithImpl(
      _$GenericSuccessListStateImpl<T> _value,
      $Res Function(_$GenericSuccessListStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GenericSuccessListStateImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$GenericSuccessListStateImpl<T> implements GenericSuccessListState<T> {
  const _$GenericSuccessListStateImpl(final List<T> data) : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GenericState<$T>.successList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericSuccessListStateImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericSuccessListStateImplCopyWith<T, _$GenericSuccessListStateImpl<T>>
      get copyWith => __$$GenericSuccessListStateImplCopyWithImpl<T,
          _$GenericSuccessListStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) {
    return successList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) {
    return successList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) {
    return successList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) {
    return successList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(this);
    }
    return orElse();
  }
}

abstract class GenericSuccessListState<T> implements GenericState<T> {
  const factory GenericSuccessListState(final List<T> data) =
      _$GenericSuccessListStateImpl<T>;

  List<T> get data;
  @JsonKey(ignore: true)
  _$$GenericSuccessListStateImplCopyWith<T, _$GenericSuccessListStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericErrorStateImplCopyWith<T, $Res> {
  factory _$$GenericErrorStateImplCopyWith(_$GenericErrorStateImpl<T> value,
          $Res Function(_$GenericErrorStateImpl<T>) then) =
      __$$GenericErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$GenericErrorStateImplCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericErrorStateImpl<T>>
    implements _$$GenericErrorStateImplCopyWith<T, $Res> {
  __$$GenericErrorStateImplCopyWithImpl(_$GenericErrorStateImpl<T> _value,
      $Res Function(_$GenericErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$GenericErrorStateImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$GenericErrorStateImpl<T> implements GenericErrorState<T> {
  const _$GenericErrorStateImpl([this.error]);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GenericState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericErrorStateImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericErrorStateImplCopyWith<T, _$GenericErrorStateImpl<T>>
      get copyWith =>
          __$$GenericErrorStateImplCopyWithImpl<T, _$GenericErrorStateImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
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
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GenericErrorState<T> implements GenericState<T> {
  const factory GenericErrorState([final dynamic error]) =
      _$GenericErrorStateImpl<T>;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$GenericErrorStateImplCopyWith<T, _$GenericErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericEmptyStateImplCopyWith<T, $Res> {
  factory _$$GenericEmptyStateImplCopyWith(_$GenericEmptyStateImpl<T> value,
          $Res Function(_$GenericEmptyStateImpl<T>) then) =
      __$$GenericEmptyStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GenericEmptyStateImplCopyWithImpl<T, $Res>
    extends _$GenericStateCopyWithImpl<T, $Res, _$GenericEmptyStateImpl<T>>
    implements _$$GenericEmptyStateImplCopyWith<T, $Res> {
  __$$GenericEmptyStateImplCopyWithImpl(_$GenericEmptyStateImpl<T> _value,
      $Res Function(_$GenericEmptyStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenericEmptyStateImpl<T> implements GenericEmptyState<T> {
  const _$GenericEmptyStateImpl();

  @override
  String toString() {
    return 'GenericState<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericEmptyStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() init,
    required TResult Function(T? data) success,
    required TResult Function(List<T> data) successList,
    required TResult Function(dynamic error) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? init,
    TResult? Function(T? data)? success,
    TResult? Function(List<T> data)? successList,
    TResult? Function(dynamic error)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? init,
    TResult Function(T? data)? success,
    TResult Function(List<T> data)? successList,
    TResult Function(dynamic error)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericLoadingState<T> value) loading,
    required TResult Function(GenericInitialState<T> value) init,
    required TResult Function(GenericSuccessState<T> value) success,
    required TResult Function(GenericSuccessListState<T> value) successList,
    required TResult Function(GenericErrorState<T> value) error,
    required TResult Function(GenericEmptyState<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericLoadingState<T> value)? loading,
    TResult? Function(GenericInitialState<T> value)? init,
    TResult? Function(GenericSuccessState<T> value)? success,
    TResult? Function(GenericSuccessListState<T> value)? successList,
    TResult? Function(GenericErrorState<T> value)? error,
    TResult? Function(GenericEmptyState<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericLoadingState<T> value)? loading,
    TResult Function(GenericInitialState<T> value)? init,
    TResult Function(GenericSuccessState<T> value)? success,
    TResult Function(GenericSuccessListState<T> value)? successList,
    TResult Function(GenericErrorState<T> value)? error,
    TResult Function(GenericEmptyState<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GenericEmptyState<T> implements GenericState<T> {
  const factory GenericEmptyState() = _$GenericEmptyStateImpl<T>;
}
