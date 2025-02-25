// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(T data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(T data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(T data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) signupLoading,
    required TResult Function(SignupSuccess<T> value) signupSuccess,
    required TResult Function(SignupFailure<T> value) signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? signupLoading,
    TResult? Function(SignupSuccess<T> value)? signupSuccess,
    TResult? Function(SignupFailure<T> value)? signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? signupLoading,
    TResult Function(SignupSuccess<T> value)? signupSuccess,
    TResult Function(SignupFailure<T> value)? signupFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<T, $Res> {
  factory $SignupStateCopyWith(
          SignupState<T> value, $Res Function(SignupState<T>) then) =
      _$SignupStateCopyWithImpl<T, $Res, SignupState<T>>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<T, $Res, $Val extends SignupState<T>>
    implements $SignupStateCopyWith<T, $Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignupState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(T data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(T data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(T data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) signupLoading,
    required TResult Function(SignupSuccess<T> value) signupSuccess,
    required TResult Function(SignupFailure<T> value) signupFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? signupLoading,
    TResult? Function(SignupSuccess<T> value)? signupSuccess,
    TResult? Function(SignupFailure<T> value)? signupFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? signupLoading,
    TResult Function(SignupSuccess<T> value)? signupSuccess,
    TResult Function(SignupFailure<T> value)? signupFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignupState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignupLoadingImplCopyWith<T, $Res> {
  factory _$$SignupLoadingImplCopyWith(_$SignupLoadingImpl<T> value,
          $Res Function(_$SignupLoadingImpl<T>) then) =
      __$$SignupLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignupLoadingImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SignupLoadingImpl<T>>
    implements _$$SignupLoadingImplCopyWith<T, $Res> {
  __$$SignupLoadingImplCopyWithImpl(_$SignupLoadingImpl<T> _value,
      $Res Function(_$SignupLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupLoadingImpl<T> implements SignupLoading<T> {
  const _$SignupLoadingImpl();

  @override
  String toString() {
    return 'SignupState<$T>.signupLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(T data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupFailure,
  }) {
    return signupLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(T data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupFailure,
  }) {
    return signupLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(T data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupLoading != null) {
      return signupLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) signupLoading,
    required TResult Function(SignupSuccess<T> value) signupSuccess,
    required TResult Function(SignupFailure<T> value) signupFailure,
  }) {
    return signupLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? signupLoading,
    TResult? Function(SignupSuccess<T> value)? signupSuccess,
    TResult? Function(SignupFailure<T> value)? signupFailure,
  }) {
    return signupLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? signupLoading,
    TResult Function(SignupSuccess<T> value)? signupSuccess,
    TResult Function(SignupFailure<T> value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupLoading != null) {
      return signupLoading(this);
    }
    return orElse();
  }
}

abstract class SignupLoading<T> implements SignupState<T> {
  const factory SignupLoading() = _$SignupLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<T, $Res> {
  factory _$$SignupSuccessImplCopyWith(_$SignupSuccessImpl<T> value,
          $Res Function(_$SignupSuccessImpl<T>) then) =
      __$$SignupSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SignupSuccessImpl<T>>
    implements _$$SignupSuccessImplCopyWith<T, $Res> {
  __$$SignupSuccessImplCopyWithImpl(_$SignupSuccessImpl<T> _value,
      $Res Function(_$SignupSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignupSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignupSuccessImpl<T> implements SignupSuccess<T> {
  const _$SignupSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignupState<$T>.signupSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<T, _$SignupSuccessImpl<T>> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<T, _$SignupSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(T data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupFailure,
  }) {
    return signupSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(T data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupFailure,
  }) {
    return signupSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(T data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) signupLoading,
    required TResult Function(SignupSuccess<T> value) signupSuccess,
    required TResult Function(SignupFailure<T> value) signupFailure,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? signupLoading,
    TResult? Function(SignupSuccess<T> value)? signupSuccess,
    TResult? Function(SignupFailure<T> value)? signupFailure,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? signupLoading,
    TResult Function(SignupSuccess<T> value)? signupSuccess,
    TResult Function(SignupFailure<T> value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess<T> implements SignupState<T> {
  const factory SignupSuccess(final T data) = _$SignupSuccessImpl<T>;

  T get data;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSuccessImplCopyWith<T, _$SignupSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFailureImplCopyWith<T, $Res> {
  factory _$$SignupFailureImplCopyWith(_$SignupFailureImpl<T> value,
          $Res Function(_$SignupFailureImpl<T>) then) =
      __$$SignupFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignupFailureImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SignupFailureImpl<T>>
    implements _$$SignupFailureImplCopyWith<T, $Res> {
  __$$SignupFailureImplCopyWithImpl(_$SignupFailureImpl<T> _value,
      $Res Function(_$SignupFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SignupFailureImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SignupFailureImpl<T> implements SignupFailure<T> {
  const _$SignupFailureImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignupState<$T>.signupFailure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFailureImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFailureImplCopyWith<T, _$SignupFailureImpl<T>> get copyWith =>
      __$$SignupFailureImplCopyWithImpl<T, _$SignupFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signupLoading,
    required TResult Function(T data) signupSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) signupFailure,
  }) {
    return signupFailure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signupLoading,
    TResult? Function(T data)? signupSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? signupFailure,
  }) {
    return signupFailure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signupLoading,
    TResult Function(T data)? signupSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) signupLoading,
    required TResult Function(SignupSuccess<T> value) signupSuccess,
    required TResult Function(SignupFailure<T> value) signupFailure,
  }) {
    return signupFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? signupLoading,
    TResult? Function(SignupSuccess<T> value)? signupSuccess,
    TResult? Function(SignupFailure<T> value)? signupFailure,
  }) {
    return signupFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? signupLoading,
    TResult Function(SignupSuccess<T> value)? signupSuccess,
    TResult Function(SignupFailure<T> value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(this);
    }
    return orElse();
  }
}

abstract class SignupFailure<T> implements SignupState<T> {
  const factory SignupFailure(final ApiErrorModel apiErrorModel) =
      _$SignupFailureImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupFailureImplCopyWith<T, _$SignupFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
