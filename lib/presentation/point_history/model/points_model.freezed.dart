// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointsModel _$PointsModelFromJson(Map<String, dynamic> json) {
  return _PointsModel.fromJson(json);
}

/// @nodoc
mixin _$PointsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get student => throw _privateConstructorUsedError;
  String? get coin => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PointsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PointsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointsModelCopyWith<PointsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsModelCopyWith<$Res> {
  factory $PointsModelCopyWith(
          PointsModel value, $Res Function(PointsModel) then) =
      _$PointsModelCopyWithImpl<$Res, PointsModel>;
  @useResult
  $Res call(
      {String? id,
      String? student,
      String? coin,
      String? comment,
      String? status,
      String? createdAt});
}

/// @nodoc
class _$PointsModelCopyWithImpl<$Res, $Val extends PointsModel>
    implements $PointsModelCopyWith<$Res> {
  _$PointsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PointsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? coin = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String?,
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointsModelImplCopyWith<$Res>
    implements $PointsModelCopyWith<$Res> {
  factory _$$PointsModelImplCopyWith(
          _$PointsModelImpl value, $Res Function(_$PointsModelImpl) then) =
      __$$PointsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? student,
      String? coin,
      String? comment,
      String? status,
      String? createdAt});
}

/// @nodoc
class __$$PointsModelImplCopyWithImpl<$Res>
    extends _$PointsModelCopyWithImpl<$Res, _$PointsModelImpl>
    implements _$$PointsModelImplCopyWith<$Res> {
  __$$PointsModelImplCopyWithImpl(
      _$PointsModelImpl _value, $Res Function(_$PointsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PointsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? coin = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$PointsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String?,
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$PointsModelImpl implements _PointsModel {
  const _$PointsModelImpl(
      {this.id,
      this.student,
      this.coin,
      this.comment,
      this.status,
      this.createdAt});

  factory _$PointsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointsModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? student;
  @override
  final String? coin;
  @override
  final String? comment;
  @override
  final String? status;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'PointsModel(id: $id, student: $student, coin: $coin, comment: $comment, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, student, coin, comment, status, createdAt);

  /// Create a copy of PointsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointsModelImplCopyWith<_$PointsModelImpl> get copyWith =>
      __$$PointsModelImplCopyWithImpl<_$PointsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointsModelImplToJson(
      this,
    );
  }
}

abstract class _PointsModel implements PointsModel {
  const factory _PointsModel(
      {final String? id,
      final String? student,
      final String? coin,
      final String? comment,
      final String? status,
      final String? createdAt}) = _$PointsModelImpl;

  factory _PointsModel.fromJson(Map<String, dynamic> json) =
      _$PointsModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get student;
  @override
  String? get coin;
  @override
  String? get comment;
  @override
  String? get status;
  @override
  String? get createdAt;

  /// Create a copy of PointsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointsModelImplCopyWith<_$PointsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
