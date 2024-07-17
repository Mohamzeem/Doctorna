// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationModel specializationModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(specializationLoading value)
        specializationLoading,
    required TResult Function(specializationSuccess value)
        specializationSuccess,
    required TResult Function(specializationFailure value)
        specializationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(specializationLoading value)? specializationLoading,
    TResult? Function(specializationSuccess value)? specializationSuccess,
    TResult? Function(specializationFailure value)? specializationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(specializationLoading value)? specializationLoading,
    TResult Function(specializationSuccess value)? specializationSuccess,
    TResult Function(specializationFailure value)? specializationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationModel specializationModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(specializationLoading value)
        specializationLoading,
    required TResult Function(specializationSuccess value)
        specializationSuccess,
    required TResult Function(specializationFailure value)
        specializationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(specializationLoading value)? specializationLoading,
    TResult? Function(specializationSuccess value)? specializationSuccess,
    TResult? Function(specializationFailure value)? specializationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(specializationLoading value)? specializationLoading,
    TResult Function(specializationSuccess value)? specializationSuccess,
    TResult Function(specializationFailure value)? specializationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$specializationLoadingImplCopyWith<$Res> {
  factory _$$specializationLoadingImplCopyWith(
          _$specializationLoadingImpl value,
          $Res Function(_$specializationLoadingImpl) then) =
      __$$specializationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$specializationLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$specializationLoadingImpl>
    implements _$$specializationLoadingImplCopyWith<$Res> {
  __$$specializationLoadingImplCopyWithImpl(_$specializationLoadingImpl _value,
      $Res Function(_$specializationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$specializationLoadingImpl implements specializationLoading {
  const _$specializationLoadingImpl();

  @override
  String toString() {
    return 'HomeState.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$specializationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationModel specializationModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationFailure,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationFailure,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationFailure,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(specializationLoading value)
        specializationLoading,
    required TResult Function(specializationSuccess value)
        specializationSuccess,
    required TResult Function(specializationFailure value)
        specializationFailure,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(specializationLoading value)? specializationLoading,
    TResult? Function(specializationSuccess value)? specializationSuccess,
    TResult? Function(specializationFailure value)? specializationFailure,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(specializationLoading value)? specializationLoading,
    TResult Function(specializationSuccess value)? specializationSuccess,
    TResult Function(specializationFailure value)? specializationFailure,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class specializationLoading implements HomeState {
  const factory specializationLoading() = _$specializationLoadingImpl;
}

/// @nodoc
abstract class _$$specializationSuccessImplCopyWith<$Res> {
  factory _$$specializationSuccessImplCopyWith(
          _$specializationSuccessImpl value,
          $Res Function(_$specializationSuccessImpl) then) =
      __$$specializationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecializationModel specializationModel});
}

/// @nodoc
class __$$specializationSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$specializationSuccessImpl>
    implements _$$specializationSuccessImplCopyWith<$Res> {
  __$$specializationSuccessImplCopyWithImpl(_$specializationSuccessImpl _value,
      $Res Function(_$specializationSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationModel = null,
  }) {
    return _then(_$specializationSuccessImpl(
      null == specializationModel
          ? _value.specializationModel
          : specializationModel // ignore: cast_nullable_to_non_nullable
              as SpecializationModel,
    ));
  }
}

/// @nodoc

class _$specializationSuccessImpl implements specializationSuccess {
  const _$specializationSuccessImpl(this.specializationModel);

  @override
  final SpecializationModel specializationModel;

  @override
  String toString() {
    return 'HomeState.specializationSuccess(specializationModel: $specializationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$specializationSuccessImpl &&
            (identical(other.specializationModel, specializationModel) ||
                other.specializationModel == specializationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$specializationSuccessImplCopyWith<_$specializationSuccessImpl>
      get copyWith => __$$specializationSuccessImplCopyWithImpl<
          _$specializationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationModel specializationModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationFailure,
  }) {
    return specializationSuccess(specializationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationFailure,
  }) {
    return specializationSuccess?.call(specializationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationFailure,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(specializationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(specializationLoading value)
        specializationLoading,
    required TResult Function(specializationSuccess value)
        specializationSuccess,
    required TResult Function(specializationFailure value)
        specializationFailure,
  }) {
    return specializationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(specializationLoading value)? specializationLoading,
    TResult? Function(specializationSuccess value)? specializationSuccess,
    TResult? Function(specializationFailure value)? specializationFailure,
  }) {
    return specializationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(specializationLoading value)? specializationLoading,
    TResult Function(specializationSuccess value)? specializationSuccess,
    TResult Function(specializationFailure value)? specializationFailure,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(this);
    }
    return orElse();
  }
}

abstract class specializationSuccess implements HomeState {
  const factory specializationSuccess(
          final SpecializationModel specializationModel) =
      _$specializationSuccessImpl;

  SpecializationModel get specializationModel;
  @JsonKey(ignore: true)
  _$$specializationSuccessImplCopyWith<_$specializationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$specializationFailureImplCopyWith<$Res> {
  factory _$$specializationFailureImplCopyWith(
          _$specializationFailureImpl value,
          $Res Function(_$specializationFailureImpl) then) =
      __$$specializationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$specializationFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$specializationFailureImpl>
    implements _$$specializationFailureImplCopyWith<$Res> {
  __$$specializationFailureImplCopyWithImpl(_$specializationFailureImpl _value,
      $Res Function(_$specializationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$specializationFailureImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$specializationFailureImpl implements specializationFailure {
  const _$specializationFailureImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState.specializationFailure(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$specializationFailureImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$specializationFailureImplCopyWith<_$specializationFailureImpl>
      get copyWith => __$$specializationFailureImplCopyWithImpl<
          _$specializationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(SpecializationModel specializationModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationFailure,
  }) {
    return specializationFailure(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationFailure,
  }) {
    return specializationFailure?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationModel specializationModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationFailure,
    required TResult orElse(),
  }) {
    if (specializationFailure != null) {
      return specializationFailure(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(specializationLoading value)
        specializationLoading,
    required TResult Function(specializationSuccess value)
        specializationSuccess,
    required TResult Function(specializationFailure value)
        specializationFailure,
  }) {
    return specializationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(specializationLoading value)? specializationLoading,
    TResult? Function(specializationSuccess value)? specializationSuccess,
    TResult? Function(specializationFailure value)? specializationFailure,
  }) {
    return specializationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(specializationLoading value)? specializationLoading,
    TResult Function(specializationSuccess value)? specializationSuccess,
    TResult Function(specializationFailure value)? specializationFailure,
    required TResult orElse(),
  }) {
    if (specializationFailure != null) {
      return specializationFailure(this);
    }
    return orElse();
  }
}

abstract class specializationFailure implements HomeState {
  const factory specializationFailure(final ErrorHandler errorHandler) =
      _$specializationFailureImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$specializationFailureImplCopyWith<_$specializationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
