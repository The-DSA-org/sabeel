// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azkar_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AzkarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarStateCopyWith<$Res> {
  factory $AzkarStateCopyWith(
          AzkarState value, $Res Function(AzkarState) then) =
      _$AzkarStateCopyWithImpl<$Res, AzkarState>;
}

/// @nodoc
class _$AzkarStateCopyWithImpl<$Res, $Val extends AzkarState>
    implements $AzkarStateCopyWith<$Res> {
  _$AzkarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AzkarState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AzkarState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AzkarState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AzkarState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DuaSuccessImplCopyWith<$Res> {
  factory _$$DuaSuccessImplCopyWith(
          _$DuaSuccessImpl value, $Res Function(_$DuaSuccessImpl) then) =
      __$$DuaSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AzkarModel> azkar});
}

/// @nodoc
class __$$DuaSuccessImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$DuaSuccessImpl>
    implements _$$DuaSuccessImplCopyWith<$Res> {
  __$$DuaSuccessImplCopyWithImpl(
      _$DuaSuccessImpl _value, $Res Function(_$DuaSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? azkar = null,
  }) {
    return _then(_$DuaSuccessImpl(
      null == azkar
          ? _value._azkar
          : azkar // ignore: cast_nullable_to_non_nullable
              as List<AzkarModel>,
    ));
  }
}

/// @nodoc

class _$DuaSuccessImpl implements DuaSuccess {
  const _$DuaSuccessImpl(final List<AzkarModel> azkar) : _azkar = azkar;

  final List<AzkarModel> _azkar;
  @override
  List<AzkarModel> get azkar {
    if (_azkar is EqualUnmodifiableListView) return _azkar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_azkar);
  }

  @override
  String toString() {
    return 'AzkarState.duaSuccess(azkar: $azkar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaSuccessImpl &&
            const DeepCollectionEquality().equals(other._azkar, _azkar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_azkar));

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuaSuccessImplCopyWith<_$DuaSuccessImpl> get copyWith =>
      __$$DuaSuccessImplCopyWithImpl<_$DuaSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) {
    return duaSuccess(azkar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) {
    return duaSuccess?.call(azkar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
    required TResult orElse(),
  }) {
    if (duaSuccess != null) {
      return duaSuccess(azkar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) {
    return duaSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) {
    return duaSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) {
    if (duaSuccess != null) {
      return duaSuccess(this);
    }
    return orElse();
  }
}

abstract class DuaSuccess implements AzkarState {
  const factory DuaSuccess(final List<AzkarModel> azkar) = _$DuaSuccessImpl;

  List<AzkarModel> get azkar;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuaSuccessImplCopyWith<_$DuaSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuaErrorImplCopyWith<$Res> {
  factory _$$DuaErrorImplCopyWith(
          _$DuaErrorImpl value, $Res Function(_$DuaErrorImpl) then) =
      __$$DuaErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DuaErrorImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$DuaErrorImpl>
    implements _$$DuaErrorImplCopyWith<$Res> {
  __$$DuaErrorImplCopyWithImpl(
      _$DuaErrorImpl _value, $Res Function(_$DuaErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DuaErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DuaErrorImpl implements DuaError {
  const _$DuaErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AzkarState.duaError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuaErrorImplCopyWith<_$DuaErrorImpl> get copyWith =>
      __$$DuaErrorImplCopyWithImpl<_$DuaErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) {
    return duaError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) {
    return duaError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
    required TResult orElse(),
  }) {
    if (duaError != null) {
      return duaError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) {
    return duaError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) {
    return duaError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) {
    if (duaError != null) {
      return duaError(this);
    }
    return orElse();
  }
}

abstract class DuaError implements AzkarState {
  const factory DuaError(final String errorMessage) = _$DuaErrorImpl;

  String get errorMessage;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuaErrorImplCopyWith<_$DuaErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AzkarSuccessImplCopyWith<$Res> {
  factory _$$AzkarSuccessImplCopyWith(
          _$AzkarSuccessImpl value, $Res Function(_$AzkarSuccessImpl) then) =
      __$$AzkarSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AzkarModel> azkar});
}

/// @nodoc
class __$$AzkarSuccessImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$AzkarSuccessImpl>
    implements _$$AzkarSuccessImplCopyWith<$Res> {
  __$$AzkarSuccessImplCopyWithImpl(
      _$AzkarSuccessImpl _value, $Res Function(_$AzkarSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? azkar = null,
  }) {
    return _then(_$AzkarSuccessImpl(
      null == azkar
          ? _value._azkar
          : azkar // ignore: cast_nullable_to_non_nullable
              as List<AzkarModel>,
    ));
  }
}

/// @nodoc

class _$AzkarSuccessImpl implements AzkarSuccess {
  const _$AzkarSuccessImpl(final List<AzkarModel> azkar) : _azkar = azkar;

  final List<AzkarModel> _azkar;
  @override
  List<AzkarModel> get azkar {
    if (_azkar is EqualUnmodifiableListView) return _azkar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_azkar);
  }

  @override
  String toString() {
    return 'AzkarState.azkarSuccess(azkar: $azkar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzkarSuccessImpl &&
            const DeepCollectionEquality().equals(other._azkar, _azkar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_azkar));

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AzkarSuccessImplCopyWith<_$AzkarSuccessImpl> get copyWith =>
      __$$AzkarSuccessImplCopyWithImpl<_$AzkarSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) {
    return azkarSuccess(azkar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) {
    return azkarSuccess?.call(azkar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
    required TResult orElse(),
  }) {
    if (azkarSuccess != null) {
      return azkarSuccess(azkar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) {
    return azkarSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) {
    return azkarSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) {
    if (azkarSuccess != null) {
      return azkarSuccess(this);
    }
    return orElse();
  }
}

abstract class AzkarSuccess implements AzkarState {
  const factory AzkarSuccess(final List<AzkarModel> azkar) = _$AzkarSuccessImpl;

  List<AzkarModel> get azkar;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AzkarSuccessImplCopyWith<_$AzkarSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AzkarErrorImplCopyWith<$Res> {
  factory _$$AzkarErrorImplCopyWith(
          _$AzkarErrorImpl value, $Res Function(_$AzkarErrorImpl) then) =
      __$$AzkarErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AzkarErrorImplCopyWithImpl<$Res>
    extends _$AzkarStateCopyWithImpl<$Res, _$AzkarErrorImpl>
    implements _$$AzkarErrorImplCopyWith<$Res> {
  __$$AzkarErrorImplCopyWithImpl(
      _$AzkarErrorImpl _value, $Res Function(_$AzkarErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AzkarErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AzkarErrorImpl implements AzkarError {
  const _$AzkarErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AzkarState.azkarError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AzkarErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AzkarErrorImplCopyWith<_$AzkarErrorImpl> get copyWith =>
      __$$AzkarErrorImplCopyWithImpl<_$AzkarErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AzkarModel> azkar) duaSuccess,
    required TResult Function(String errorMessage) duaError,
    required TResult Function(List<AzkarModel> azkar) azkarSuccess,
    required TResult Function(String errorMessage) azkarError,
  }) {
    return azkarError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AzkarModel> azkar)? duaSuccess,
    TResult? Function(String errorMessage)? duaError,
    TResult? Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult? Function(String errorMessage)? azkarError,
  }) {
    return azkarError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AzkarModel> azkar)? duaSuccess,
    TResult Function(String errorMessage)? duaError,
    TResult Function(List<AzkarModel> azkar)? azkarSuccess,
    TResult Function(String errorMessage)? azkarError,
    required TResult orElse(),
  }) {
    if (azkarError != null) {
      return azkarError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DuaSuccess value) duaSuccess,
    required TResult Function(DuaError value) duaError,
    required TResult Function(AzkarSuccess value) azkarSuccess,
    required TResult Function(AzkarError value) azkarError,
  }) {
    return azkarError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DuaSuccess value)? duaSuccess,
    TResult? Function(DuaError value)? duaError,
    TResult? Function(AzkarSuccess value)? azkarSuccess,
    TResult? Function(AzkarError value)? azkarError,
  }) {
    return azkarError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DuaSuccess value)? duaSuccess,
    TResult Function(DuaError value)? duaError,
    TResult Function(AzkarSuccess value)? azkarSuccess,
    TResult Function(AzkarError value)? azkarError,
    required TResult orElse(),
  }) {
    if (azkarError != null) {
      return azkarError(this);
    }
    return orElse();
  }
}

abstract class AzkarError implements AzkarState {
  const factory AzkarError(final String errorMessage) = _$AzkarErrorImpl;

  String get errorMessage;

  /// Create a copy of AzkarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AzkarErrorImplCopyWith<_$AzkarErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
