// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return _ResultsModel.fromJson(json);
}

/// @nodoc
mixin _$ResultsModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_name')
  FKNameModel? get fkName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_photo')
  Photo? get studentPhoto => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  String? get point => throw _privateConstructorUsedError;
  FileModel? get file => throw _privateConstructorUsedError;

  /// Serializes this ResultsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsModelCopyWith<ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsModelCopyWith<$Res> {
  factory $ResultsModelCopyWith(
          ResultsModel value, $Res Function(ResultsModel) then) =
      _$ResultsModelCopyWithImpl<$Res, ResultsModel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'student_id') String? studentId,
      @JsonKey(name: 'fk_name') FKNameModel? fkName,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'student_photo') Photo? studentPhoto,
      String? type,
      String? teacher,
      String? point,
      FileModel? file});

  $FKNameModelCopyWith<$Res>? get fkName;
  $PhotoCopyWith<$Res>? get studentPhoto;
  $FileModelCopyWith<$Res>? get file;
}

/// @nodoc
class _$ResultsModelCopyWithImpl<$Res, $Val extends ResultsModel>
    implements $ResultsModelCopyWith<$Res> {
  _$ResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? fkName = freezed,
    Object? fullName = freezed,
    Object? studentPhoto = freezed,
    Object? type = freezed,
    Object? teacher = freezed,
    Object? point = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      fkName: freezed == fkName
          ? _value.fkName
          : fkName // ignore: cast_nullable_to_non_nullable
              as FKNameModel?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentPhoto: freezed == studentPhoto
          ? _value.studentPhoto
          : studentPhoto // ignore: cast_nullable_to_non_nullable
              as Photo?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileModel?,
    ) as $Val);
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FKNameModelCopyWith<$Res>? get fkName {
    if (_value.fkName == null) {
      return null;
    }

    return $FKNameModelCopyWith<$Res>(_value.fkName!, (value) {
      return _then(_value.copyWith(fkName: value) as $Val);
    });
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get studentPhoto {
    if (_value.studentPhoto == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.studentPhoto!, (value) {
      return _then(_value.copyWith(studentPhoto: value) as $Val);
    });
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileModelCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $FileModelCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsModelImplCopyWith<$Res>
    implements $ResultsModelCopyWith<$Res> {
  factory _$$ResultsModelImplCopyWith(
          _$ResultsModelImpl value, $Res Function(_$ResultsModelImpl) then) =
      __$$ResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'student_id') String? studentId,
      @JsonKey(name: 'fk_name') FKNameModel? fkName,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'student_photo') Photo? studentPhoto,
      String? type,
      String? teacher,
      String? point,
      FileModel? file});

  @override
  $FKNameModelCopyWith<$Res>? get fkName;
  @override
  $PhotoCopyWith<$Res>? get studentPhoto;
  @override
  $FileModelCopyWith<$Res>? get file;
}

/// @nodoc
class __$$ResultsModelImplCopyWithImpl<$Res>
    extends _$ResultsModelCopyWithImpl<$Res, _$ResultsModelImpl>
    implements _$$ResultsModelImplCopyWith<$Res> {
  __$$ResultsModelImplCopyWithImpl(
      _$ResultsModelImpl _value, $Res Function(_$ResultsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? fkName = freezed,
    Object? fullName = freezed,
    Object? studentPhoto = freezed,
    Object? type = freezed,
    Object? teacher = freezed,
    Object? point = freezed,
    Object? file = freezed,
  }) {
    return _then(_$ResultsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      fkName: freezed == fkName
          ? _value.fkName
          : fkName // ignore: cast_nullable_to_non_nullable
              as FKNameModel?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentPhoto: freezed == studentPhoto
          ? _value.studentPhoto
          : studentPhoto // ignore: cast_nullable_to_non_nullable
              as Photo?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsModelImpl implements _ResultsModel {
  const _$ResultsModelImpl(
      {this.id,
      @JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'fk_name') this.fkName,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'student_photo') this.studentPhoto,
      this.type,
      this.teacher,
      this.point,
      this.file});

  factory _$ResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'student_id')
  final String? studentId;
  @override
  @JsonKey(name: 'fk_name')
  final FKNameModel? fkName;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'student_photo')
  final Photo? studentPhoto;
  @override
  final String? type;
  @override
  final String? teacher;
  @override
  final String? point;
  @override
  final FileModel? file;

  @override
  String toString() {
    return 'ResultsModel(id: $id, studentId: $studentId, fkName: $fkName, fullName: $fullName, studentPhoto: $studentPhoto, type: $type, teacher: $teacher, point: $point, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.fkName, fkName) || other.fkName == fkName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.studentPhoto, studentPhoto) ||
                other.studentPhoto == studentPhoto) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, studentId, fkName, fullName,
      studentPhoto, type, teacher, point, file);

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      __$$ResultsModelImplCopyWithImpl<_$ResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsModelImplToJson(
      this,
    );
  }
}

abstract class _ResultsModel implements ResultsModel {
  const factory _ResultsModel(
      {final String? id,
      @JsonKey(name: 'student_id') final String? studentId,
      @JsonKey(name: 'fk_name') final FKNameModel? fkName,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'student_photo') final Photo? studentPhoto,
      final String? type,
      final String? teacher,
      final String? point,
      final FileModel? file}) = _$ResultsModelImpl;

  factory _ResultsModel.fromJson(Map<String, dynamic> json) =
      _$ResultsModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'student_id')
  String? get studentId;
  @override
  @JsonKey(name: 'fk_name')
  FKNameModel? get fkName;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'student_photo')
  Photo? get studentPhoto;
  @override
  String? get type;
  @override
  String? get teacher;
  @override
  String? get point;
  @override
  FileModel? get file;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FKNameModel _$FKNameModelFromJson(Map<String, dynamic> json) {
  return _FKNameModel.fromJson(json);
}

/// @nodoc
mixin _$FKNameModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;
  String? get pointType => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this FKNameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FKNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FKNameModelCopyWith<FKNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FKNameModelCopyWith<$Res> {
  factory $FKNameModelCopyWith(
          FKNameModel value, $Res Function(FKNameModel) then) =
      _$FKNameModelCopyWithImpl<$Res, FKNameModel>;
  @useResult
  $Res call(
      {String? id, String? name, String? who, String? pointType, String? type});
}

/// @nodoc
class _$FKNameModelCopyWithImpl<$Res, $Val extends FKNameModel>
    implements $FKNameModelCopyWith<$Res> {
  _$FKNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FKNameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? who = freezed,
    Object? pointType = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      pointType: freezed == pointType
          ? _value.pointType
          : pointType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FKNameModelImplCopyWith<$Res>
    implements $FKNameModelCopyWith<$Res> {
  factory _$$FKNameModelImplCopyWith(
          _$FKNameModelImpl value, $Res Function(_$FKNameModelImpl) then) =
      __$$FKNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? name, String? who, String? pointType, String? type});
}

/// @nodoc
class __$$FKNameModelImplCopyWithImpl<$Res>
    extends _$FKNameModelCopyWithImpl<$Res, _$FKNameModelImpl>
    implements _$$FKNameModelImplCopyWith<$Res> {
  __$$FKNameModelImplCopyWithImpl(
      _$FKNameModelImpl _value, $Res Function(_$FKNameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FKNameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? who = freezed,
    Object? pointType = freezed,
    Object? type = freezed,
  }) {
    return _then(_$FKNameModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      pointType: freezed == pointType
          ? _value.pointType
          : pointType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$FKNameModelImpl implements _FKNameModel {
  const _$FKNameModelImpl(
      {this.id, this.name, this.who, this.pointType, this.type});

  factory _$FKNameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FKNameModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? who;
  @override
  final String? pointType;
  @override
  final String? type;

  @override
  String toString() {
    return 'FKNameModel(id: $id, name: $name, who: $who, pointType: $pointType, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FKNameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.pointType, pointType) ||
                other.pointType == pointType) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, who, pointType, type);

  /// Create a copy of FKNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FKNameModelImplCopyWith<_$FKNameModelImpl> get copyWith =>
      __$$FKNameModelImplCopyWithImpl<_$FKNameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FKNameModelImplToJson(
      this,
    );
  }
}

abstract class _FKNameModel implements FKNameModel {
  const factory _FKNameModel(
      {final String? id,
      final String? name,
      final String? who,
      final String? pointType,
      final String? type}) = _$FKNameModelImpl;

  factory _FKNameModel.fromJson(Map<String, dynamic> json) =
      _$FKNameModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get who;
  @override
  String? get pointType;
  @override
  String? get type;

  /// Create a copy of FKNameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FKNameModelImplCopyWith<_$FKNameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
