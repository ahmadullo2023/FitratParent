// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  String? get id => throw _privateConstructorUsedError;
  GroupMinModel? get group => throw _privateConstructorUsedError;
  Lid? get lid => throw _privateConstructorUsedError;
  Student? get student => throw _privateConstructorUsedError;
  String? get homeworkType => throw _privateConstructorUsedError;

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
          StudentModel value, $Res Function(StudentModel) then) =
      _$StudentModelCopyWithImpl<$Res, StudentModel>;
  @useResult
  $Res call(
      {String? id,
      GroupMinModel? group,
      Lid? lid,
      Student? student,
      String? homeworkType});

  $GroupMinModelCopyWith<$Res>? get group;
  $LidCopyWith<$Res>? get lid;
  $StudentCopyWith<$Res>? get student;
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? group = freezed,
    Object? lid = freezed,
    Object? student = freezed,
    Object? homeworkType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupMinModel?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as Lid?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      homeworkType: freezed == homeworkType
          ? _value.homeworkType
          : homeworkType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMinModelCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupMinModelCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LidCopyWith<$Res>? get lid {
    if (_value.lid == null) {
      return null;
    }

    return $LidCopyWith<$Res>(_value.lid!, (value) {
      return _then(_value.copyWith(lid: value) as $Val);
    });
  }

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentModelImplCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$StudentModelImplCopyWith(
          _$StudentModelImpl value, $Res Function(_$StudentModelImpl) then) =
      __$$StudentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      GroupMinModel? group,
      Lid? lid,
      Student? student,
      String? homeworkType});

  @override
  $GroupMinModelCopyWith<$Res>? get group;
  @override
  $LidCopyWith<$Res>? get lid;
  @override
  $StudentCopyWith<$Res>? get student;
}

/// @nodoc
class __$$StudentModelImplCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$StudentModelImpl>
    implements _$$StudentModelImplCopyWith<$Res> {
  __$$StudentModelImplCopyWithImpl(
      _$StudentModelImpl _value, $Res Function(_$StudentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? group = freezed,
    Object? lid = freezed,
    Object? student = freezed,
    Object? homeworkType = freezed,
  }) {
    return _then(_$StudentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupMinModel?,
      lid: freezed == lid
          ? _value.lid
          : lid // ignore: cast_nullable_to_non_nullable
              as Lid?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      homeworkType: freezed == homeworkType
          ? _value.homeworkType
          : homeworkType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$StudentModelImpl implements _StudentModel {
  const _$StudentModelImpl(
      {this.id, this.group, this.lid, this.student, this.homeworkType});

  factory _$StudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentModelImplFromJson(json);

  @override
  final String? id;
  @override
  final GroupMinModel? group;
  @override
  final Lid? lid;
  @override
  final Student? student;
  @override
  final String? homeworkType;

  @override
  String toString() {
    return 'StudentModel(id: $id, group: $group, lid: $lid, student: $student, homeworkType: $homeworkType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.lid, lid) || other.lid == lid) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.homeworkType, homeworkType) ||
                other.homeworkType == homeworkType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, group, lid, student, homeworkType);

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      __$$StudentModelImplCopyWithImpl<_$StudentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentModelImplToJson(
      this,
    );
  }
}

abstract class _StudentModel implements StudentModel {
  const factory _StudentModel(
      {final String? id,
      final GroupMinModel? group,
      final Lid? lid,
      final Student? student,
      final String? homeworkType}) = _$StudentModelImpl;

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$StudentModelImpl.fromJson;

  @override
  String? get id;
  @override
  GroupMinModel? get group;
  @override
  Lid? get lid;
  @override
  Student? get student;
  @override
  String? get homeworkType;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  String? get id => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get middleName =>
      throw _privateConstructorUsedError; // IsAttendance? isAttendance,
  bool? get isAttendance => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Learning? get learning => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get educationLang => throw _privateConstructorUsedError;
  String? get studentType => throw _privateConstructorUsedError;
  String? get eduClass => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  List<SalesData>? get sales => throw _privateConstructorUsedError;
  List<VoucherData?>? get voucher => throw _privateConstructorUsedError;
  int? get ball => throw _privateConstructorUsedError;
  Filial? get filial => throw _privateConstructorUsedError;
  MarketingChannel? get marketingChannel => throw _privateConstructorUsedError;
  String? get studentStageType => throw _privateConstructorUsedError;
  String? get balanceStatus => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  ServiceManager? get serviceManager => throw _privateConstructorUsedError;
  List<CourseData>? get course =>
      throw _privateConstructorUsedError; // String? course,
  List<GroupData>? get group =>
      throw _privateConstructorUsedError; // String? group,
  Teacher? get teacher => throw _privateConstructorUsedError;
  String? get callOperator => throw _privateConstructorUsedError;
  SalesManager? get salesManager => throw _privateConstructorUsedError;
  bool? get isArchived => throw _privateConstructorUsedError;
  bool? get isFrozen => throw _privateConstructorUsedError;
  int? get attendanceCount => throw _privateConstructorUsedError;
  List<RelativesData>? get relatives => throw _privateConstructorUsedError;
  List<FileData>? get file => throw _privateConstructorUsedError;
  SecondaryGroupMin? get secondaryGroup => throw _privateConstructorUsedError;
  SecondaryTeacherMin? get secondaryTeacher =>
      throw _privateConstructorUsedError;
  String? get newStudentStages => throw _privateConstructorUsedError;
  DateTime? get newStudentDate => throw _privateConstructorUsedError;
  String? get activeDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {String? id,
      Photo? photo,
      String? firstName,
      String? lastName,
      String? middleName,
      bool? isAttendance,
      String? phone,
      Learning? learning,
      DateTime? dateOfBirth,
      String? educationLang,
      String? studentType,
      String? eduClass,
      String? subject,
      List<SalesData>? sales,
      List<VoucherData?>? voucher,
      int? ball,
      Filial? filial,
      MarketingChannel? marketingChannel,
      String? studentStageType,
      String? balanceStatus,
      String? balance,
      ServiceManager? serviceManager,
      List<CourseData>? course,
      List<GroupData>? group,
      Teacher? teacher,
      String? callOperator,
      SalesManager? salesManager,
      bool? isArchived,
      bool? isFrozen,
      int? attendanceCount,
      List<RelativesData>? relatives,
      List<FileData>? file,
      SecondaryGroupMin? secondaryGroup,
      SecondaryTeacherMin? secondaryTeacher,
      String? newStudentStages,
      DateTime? newStudentDate,
      String? activeDate,
      DateTime? createdAt,
      DateTime? updatedAt});

  $PhotoCopyWith<$Res>? get photo;
  $LearningCopyWith<$Res>? get learning;
  $FilialCopyWith<$Res>? get filial;
  $MarketingChannelCopyWith<$Res>? get marketingChannel;
  $ServiceManagerCopyWith<$Res>? get serviceManager;
  $TeacherCopyWith<$Res>? get teacher;
  $SalesManagerCopyWith<$Res>? get salesManager;
  $SecondaryGroupMinCopyWith<$Res>? get secondaryGroup;
  $SecondaryTeacherMinCopyWith<$Res>? get secondaryTeacher;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? isAttendance = freezed,
    Object? phone = freezed,
    Object? learning = freezed,
    Object? dateOfBirth = freezed,
    Object? educationLang = freezed,
    Object? studentType = freezed,
    Object? eduClass = freezed,
    Object? subject = freezed,
    Object? sales = freezed,
    Object? voucher = freezed,
    Object? ball = freezed,
    Object? filial = freezed,
    Object? marketingChannel = freezed,
    Object? studentStageType = freezed,
    Object? balanceStatus = freezed,
    Object? balance = freezed,
    Object? serviceManager = freezed,
    Object? course = freezed,
    Object? group = freezed,
    Object? teacher = freezed,
    Object? callOperator = freezed,
    Object? salesManager = freezed,
    Object? isArchived = freezed,
    Object? isFrozen = freezed,
    Object? attendanceCount = freezed,
    Object? relatives = freezed,
    Object? file = freezed,
    Object? secondaryGroup = freezed,
    Object? secondaryTeacher = freezed,
    Object? newStudentStages = freezed,
    Object? newStudentDate = freezed,
    Object? activeDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      isAttendance: freezed == isAttendance
          ? _value.isAttendance
          : isAttendance // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      learning: freezed == learning
          ? _value.learning
          : learning // ignore: cast_nullable_to_non_nullable
              as Learning?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      educationLang: freezed == educationLang
          ? _value.educationLang
          : educationLang // ignore: cast_nullable_to_non_nullable
              as String?,
      studentType: freezed == studentType
          ? _value.studentType
          : studentType // ignore: cast_nullable_to_non_nullable
              as String?,
      eduClass: freezed == eduClass
          ? _value.eduClass
          : eduClass // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      sales: freezed == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesData>?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<VoucherData?>?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as int?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as Filial?,
      marketingChannel: freezed == marketingChannel
          ? _value.marketingChannel
          : marketingChannel // ignore: cast_nullable_to_non_nullable
              as MarketingChannel?,
      studentStageType: freezed == studentStageType
          ? _value.studentStageType
          : studentStageType // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceStatus: freezed == balanceStatus
          ? _value.balanceStatus
          : balanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceManager: freezed == serviceManager
          ? _value.serviceManager
          : serviceManager // ignore: cast_nullable_to_non_nullable
              as ServiceManager?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseData>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<GroupData>?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      callOperator: freezed == callOperator
          ? _value.callOperator
          : callOperator // ignore: cast_nullable_to_non_nullable
              as String?,
      salesManager: freezed == salesManager
          ? _value.salesManager
          : salesManager // ignore: cast_nullable_to_non_nullable
              as SalesManager?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      attendanceCount: freezed == attendanceCount
          ? _value.attendanceCount
          : attendanceCount // ignore: cast_nullable_to_non_nullable
              as int?,
      relatives: freezed == relatives
          ? _value.relatives
          : relatives // ignore: cast_nullable_to_non_nullable
              as List<RelativesData>?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
      secondaryGroup: freezed == secondaryGroup
          ? _value.secondaryGroup
          : secondaryGroup // ignore: cast_nullable_to_non_nullable
              as SecondaryGroupMin?,
      secondaryTeacher: freezed == secondaryTeacher
          ? _value.secondaryTeacher
          : secondaryTeacher // ignore: cast_nullable_to_non_nullable
              as SecondaryTeacherMin?,
      newStudentStages: freezed == newStudentStages
          ? _value.newStudentStages
          : newStudentStages // ignore: cast_nullable_to_non_nullable
              as String?,
      newStudentDate: freezed == newStudentDate
          ? _value.newStudentDate
          : newStudentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeDate: freezed == activeDate
          ? _value.activeDate
          : activeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LearningCopyWith<$Res>? get learning {
    if (_value.learning == null) {
      return null;
    }

    return $LearningCopyWith<$Res>(_value.learning!, (value) {
      return _then(_value.copyWith(learning: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilialCopyWith<$Res>? get filial {
    if (_value.filial == null) {
      return null;
    }

    return $FilialCopyWith<$Res>(_value.filial!, (value) {
      return _then(_value.copyWith(filial: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketingChannelCopyWith<$Res>? get marketingChannel {
    if (_value.marketingChannel == null) {
      return null;
    }

    return $MarketingChannelCopyWith<$Res>(_value.marketingChannel!, (value) {
      return _then(_value.copyWith(marketingChannel: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceManagerCopyWith<$Res>? get serviceManager {
    if (_value.serviceManager == null) {
      return null;
    }

    return $ServiceManagerCopyWith<$Res>(_value.serviceManager!, (value) {
      return _then(_value.copyWith(serviceManager: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalesManagerCopyWith<$Res>? get salesManager {
    if (_value.salesManager == null) {
      return null;
    }

    return $SalesManagerCopyWith<$Res>(_value.salesManager!, (value) {
      return _then(_value.copyWith(salesManager: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecondaryGroupMinCopyWith<$Res>? get secondaryGroup {
    if (_value.secondaryGroup == null) {
      return null;
    }

    return $SecondaryGroupMinCopyWith<$Res>(_value.secondaryGroup!, (value) {
      return _then(_value.copyWith(secondaryGroup: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecondaryTeacherMinCopyWith<$Res>? get secondaryTeacher {
    if (_value.secondaryTeacher == null) {
      return null;
    }

    return $SecondaryTeacherMinCopyWith<$Res>(_value.secondaryTeacher!,
        (value) {
      return _then(_value.copyWith(secondaryTeacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Photo? photo,
      String? firstName,
      String? lastName,
      String? middleName,
      bool? isAttendance,
      String? phone,
      Learning? learning,
      DateTime? dateOfBirth,
      String? educationLang,
      String? studentType,
      String? eduClass,
      String? subject,
      List<SalesData>? sales,
      List<VoucherData?>? voucher,
      int? ball,
      Filial? filial,
      MarketingChannel? marketingChannel,
      String? studentStageType,
      String? balanceStatus,
      String? balance,
      ServiceManager? serviceManager,
      List<CourseData>? course,
      List<GroupData>? group,
      Teacher? teacher,
      String? callOperator,
      SalesManager? salesManager,
      bool? isArchived,
      bool? isFrozen,
      int? attendanceCount,
      List<RelativesData>? relatives,
      List<FileData>? file,
      SecondaryGroupMin? secondaryGroup,
      SecondaryTeacherMin? secondaryTeacher,
      String? newStudentStages,
      DateTime? newStudentDate,
      String? activeDate,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $PhotoCopyWith<$Res>? get photo;
  @override
  $LearningCopyWith<$Res>? get learning;
  @override
  $FilialCopyWith<$Res>? get filial;
  @override
  $MarketingChannelCopyWith<$Res>? get marketingChannel;
  @override
  $ServiceManagerCopyWith<$Res>? get serviceManager;
  @override
  $TeacherCopyWith<$Res>? get teacher;
  @override
  $SalesManagerCopyWith<$Res>? get salesManager;
  @override
  $SecondaryGroupMinCopyWith<$Res>? get secondaryGroup;
  @override
  $SecondaryTeacherMinCopyWith<$Res>? get secondaryTeacher;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? isAttendance = freezed,
    Object? phone = freezed,
    Object? learning = freezed,
    Object? dateOfBirth = freezed,
    Object? educationLang = freezed,
    Object? studentType = freezed,
    Object? eduClass = freezed,
    Object? subject = freezed,
    Object? sales = freezed,
    Object? voucher = freezed,
    Object? ball = freezed,
    Object? filial = freezed,
    Object? marketingChannel = freezed,
    Object? studentStageType = freezed,
    Object? balanceStatus = freezed,
    Object? balance = freezed,
    Object? serviceManager = freezed,
    Object? course = freezed,
    Object? group = freezed,
    Object? teacher = freezed,
    Object? callOperator = freezed,
    Object? salesManager = freezed,
    Object? isArchived = freezed,
    Object? isFrozen = freezed,
    Object? attendanceCount = freezed,
    Object? relatives = freezed,
    Object? file = freezed,
    Object? secondaryGroup = freezed,
    Object? secondaryTeacher = freezed,
    Object? newStudentStages = freezed,
    Object? newStudentDate = freezed,
    Object? activeDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      isAttendance: freezed == isAttendance
          ? _value.isAttendance
          : isAttendance // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      learning: freezed == learning
          ? _value.learning
          : learning // ignore: cast_nullable_to_non_nullable
              as Learning?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      educationLang: freezed == educationLang
          ? _value.educationLang
          : educationLang // ignore: cast_nullable_to_non_nullable
              as String?,
      studentType: freezed == studentType
          ? _value.studentType
          : studentType // ignore: cast_nullable_to_non_nullable
              as String?,
      eduClass: freezed == eduClass
          ? _value.eduClass
          : eduClass // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      sales: freezed == sales
          ? _value._sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesData>?,
      voucher: freezed == voucher
          ? _value._voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<VoucherData?>?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as int?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as Filial?,
      marketingChannel: freezed == marketingChannel
          ? _value.marketingChannel
          : marketingChannel // ignore: cast_nullable_to_non_nullable
              as MarketingChannel?,
      studentStageType: freezed == studentStageType
          ? _value.studentStageType
          : studentStageType // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceStatus: freezed == balanceStatus
          ? _value.balanceStatus
          : balanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceManager: freezed == serviceManager
          ? _value.serviceManager
          : serviceManager // ignore: cast_nullable_to_non_nullable
              as ServiceManager?,
      course: freezed == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseData>?,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<GroupData>?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      callOperator: freezed == callOperator
          ? _value.callOperator
          : callOperator // ignore: cast_nullable_to_non_nullable
              as String?,
      salesManager: freezed == salesManager
          ? _value.salesManager
          : salesManager // ignore: cast_nullable_to_non_nullable
              as SalesManager?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      attendanceCount: freezed == attendanceCount
          ? _value.attendanceCount
          : attendanceCount // ignore: cast_nullable_to_non_nullable
              as int?,
      relatives: freezed == relatives
          ? _value._relatives
          : relatives // ignore: cast_nullable_to_non_nullable
              as List<RelativesData>?,
      file: freezed == file
          ? _value._file
          : file // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
      secondaryGroup: freezed == secondaryGroup
          ? _value.secondaryGroup
          : secondaryGroup // ignore: cast_nullable_to_non_nullable
              as SecondaryGroupMin?,
      secondaryTeacher: freezed == secondaryTeacher
          ? _value.secondaryTeacher
          : secondaryTeacher // ignore: cast_nullable_to_non_nullable
              as SecondaryTeacherMin?,
      newStudentStages: freezed == newStudentStages
          ? _value.newStudentStages
          : newStudentStages // ignore: cast_nullable_to_non_nullable
              as String?,
      newStudentDate: freezed == newStudentDate
          ? _value.newStudentDate
          : newStudentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeDate: freezed == activeDate
          ? _value.activeDate
          : activeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {this.id,
      this.photo,
      this.firstName,
      this.lastName,
      this.middleName,
      this.isAttendance,
      this.phone,
      this.learning,
      this.dateOfBirth,
      this.educationLang,
      this.studentType,
      this.eduClass,
      this.subject,
      final List<SalesData>? sales,
      final List<VoucherData?>? voucher,
      this.ball,
      this.filial,
      this.marketingChannel,
      this.studentStageType,
      this.balanceStatus,
      this.balance,
      this.serviceManager,
      final List<CourseData>? course,
      final List<GroupData>? group,
      this.teacher,
      this.callOperator,
      this.salesManager,
      this.isArchived,
      this.isFrozen,
      this.attendanceCount,
      final List<RelativesData>? relatives,
      final List<FileData>? file,
      this.secondaryGroup,
      this.secondaryTeacher,
      this.newStudentStages,
      this.newStudentDate,
      this.activeDate,
      this.createdAt,
      this.updatedAt})
      : _sales = sales,
        _voucher = voucher,
        _course = course,
        _group = group,
        _relatives = relatives,
        _file = file;

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  final String? id;
  @override
  final Photo? photo;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? middleName;
// IsAttendance? isAttendance,
  @override
  final bool? isAttendance;
  @override
  final String? phone;
  @override
  final Learning? learning;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? educationLang;
  @override
  final String? studentType;
  @override
  final String? eduClass;
  @override
  final String? subject;
  final List<SalesData>? _sales;
  @override
  List<SalesData>? get sales {
    final value = _sales;
    if (value == null) return null;
    if (_sales is EqualUnmodifiableListView) return _sales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VoucherData?>? _voucher;
  @override
  List<VoucherData?>? get voucher {
    final value = _voucher;
    if (value == null) return null;
    if (_voucher is EqualUnmodifiableListView) return _voucher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? ball;
  @override
  final Filial? filial;
  @override
  final MarketingChannel? marketingChannel;
  @override
  final String? studentStageType;
  @override
  final String? balanceStatus;
  @override
  final String? balance;
  @override
  final ServiceManager? serviceManager;
  final List<CourseData>? _course;
  @override
  List<CourseData>? get course {
    final value = _course;
    if (value == null) return null;
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// String? course,
  final List<GroupData>? _group;
// String? course,
  @override
  List<GroupData>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// String? group,
  @override
  final Teacher? teacher;
  @override
  final String? callOperator;
  @override
  final SalesManager? salesManager;
  @override
  final bool? isArchived;
  @override
  final bool? isFrozen;
  @override
  final int? attendanceCount;
  final List<RelativesData>? _relatives;
  @override
  List<RelativesData>? get relatives {
    final value = _relatives;
    if (value == null) return null;
    if (_relatives is EqualUnmodifiableListView) return _relatives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FileData>? _file;
  @override
  List<FileData>? get file {
    final value = _file;
    if (value == null) return null;
    if (_file is EqualUnmodifiableListView) return _file;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SecondaryGroupMin? secondaryGroup;
  @override
  final SecondaryTeacherMin? secondaryTeacher;
  @override
  final String? newStudentStages;
  @override
  final DateTime? newStudentDate;
  @override
  final String? activeDate;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Student(id: $id, photo: $photo, firstName: $firstName, lastName: $lastName, middleName: $middleName, isAttendance: $isAttendance, phone: $phone, learning: $learning, dateOfBirth: $dateOfBirth, educationLang: $educationLang, studentType: $studentType, eduClass: $eduClass, subject: $subject, sales: $sales, voucher: $voucher, ball: $ball, filial: $filial, marketingChannel: $marketingChannel, studentStageType: $studentStageType, balanceStatus: $balanceStatus, balance: $balance, serviceManager: $serviceManager, course: $course, group: $group, teacher: $teacher, callOperator: $callOperator, salesManager: $salesManager, isArchived: $isArchived, isFrozen: $isFrozen, attendanceCount: $attendanceCount, relatives: $relatives, file: $file, secondaryGroup: $secondaryGroup, secondaryTeacher: $secondaryTeacher, newStudentStages: $newStudentStages, newStudentDate: $newStudentDate, activeDate: $activeDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.isAttendance, isAttendance) ||
                other.isAttendance == isAttendance) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.learning, learning) ||
                other.learning == learning) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.educationLang, educationLang) ||
                other.educationLang == educationLang) &&
            (identical(other.studentType, studentType) ||
                other.studentType == studentType) &&
            (identical(other.eduClass, eduClass) ||
                other.eduClass == eduClass) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            const DeepCollectionEquality().equals(other._sales, _sales) &&
            const DeepCollectionEquality().equals(other._voucher, _voucher) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            (identical(other.filial, filial) || other.filial == filial) &&
            (identical(other.marketingChannel, marketingChannel) ||
                other.marketingChannel == marketingChannel) &&
            (identical(other.studentStageType, studentStageType) ||
                other.studentStageType == studentStageType) &&
            (identical(other.balanceStatus, balanceStatus) ||
                other.balanceStatus == balanceStatus) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.serviceManager, serviceManager) ||
                other.serviceManager == serviceManager) &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.callOperator, callOperator) ||
                other.callOperator == callOperator) &&
            (identical(other.salesManager, salesManager) ||
                other.salesManager == salesManager) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            (identical(other.attendanceCount, attendanceCount) ||
                other.attendanceCount == attendanceCount) &&
            const DeepCollectionEquality()
                .equals(other._relatives, _relatives) &&
            const DeepCollectionEquality().equals(other._file, _file) &&
            (identical(other.secondaryGroup, secondaryGroup) ||
                other.secondaryGroup == secondaryGroup) &&
            (identical(other.secondaryTeacher, secondaryTeacher) ||
                other.secondaryTeacher == secondaryTeacher) &&
            (identical(other.newStudentStages, newStudentStages) ||
                other.newStudentStages == newStudentStages) &&
            (identical(other.newStudentDate, newStudentDate) ||
                other.newStudentDate == newStudentDate) &&
            (identical(other.activeDate, activeDate) ||
                other.activeDate == activeDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        photo,
        firstName,
        lastName,
        middleName,
        isAttendance,
        phone,
        learning,
        dateOfBirth,
        educationLang,
        studentType,
        eduClass,
        subject,
        const DeepCollectionEquality().hash(_sales),
        const DeepCollectionEquality().hash(_voucher),
        ball,
        filial,
        marketingChannel,
        studentStageType,
        balanceStatus,
        balance,
        serviceManager,
        const DeepCollectionEquality().hash(_course),
        const DeepCollectionEquality().hash(_group),
        teacher,
        callOperator,
        salesManager,
        isArchived,
        isFrozen,
        attendanceCount,
        const DeepCollectionEquality().hash(_relatives),
        const DeepCollectionEquality().hash(_file),
        secondaryGroup,
        secondaryTeacher,
        newStudentStages,
        newStudentDate,
        activeDate,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {final String? id,
      final Photo? photo,
      final String? firstName,
      final String? lastName,
      final String? middleName,
      final bool? isAttendance,
      final String? phone,
      final Learning? learning,
      final DateTime? dateOfBirth,
      final String? educationLang,
      final String? studentType,
      final String? eduClass,
      final String? subject,
      final List<SalesData>? sales,
      final List<VoucherData?>? voucher,
      final int? ball,
      final Filial? filial,
      final MarketingChannel? marketingChannel,
      final String? studentStageType,
      final String? balanceStatus,
      final String? balance,
      final ServiceManager? serviceManager,
      final List<CourseData>? course,
      final List<GroupData>? group,
      final Teacher? teacher,
      final String? callOperator,
      final SalesManager? salesManager,
      final bool? isArchived,
      final bool? isFrozen,
      final int? attendanceCount,
      final List<RelativesData>? relatives,
      final List<FileData>? file,
      final SecondaryGroupMin? secondaryGroup,
      final SecondaryTeacherMin? secondaryTeacher,
      final String? newStudentStages,
      final DateTime? newStudentDate,
      final String? activeDate,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  String? get id;
  @override
  Photo? get photo;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get middleName; // IsAttendance? isAttendance,
  @override
  bool? get isAttendance;
  @override
  String? get phone;
  @override
  Learning? get learning;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get educationLang;
  @override
  String? get studentType;
  @override
  String? get eduClass;
  @override
  String? get subject;
  @override
  List<SalesData>? get sales;
  @override
  List<VoucherData?>? get voucher;
  @override
  int? get ball;
  @override
  Filial? get filial;
  @override
  MarketingChannel? get marketingChannel;
  @override
  String? get studentStageType;
  @override
  String? get balanceStatus;
  @override
  String? get balance;
  @override
  ServiceManager? get serviceManager;
  @override
  List<CourseData>? get course; // String? course,
  @override
  List<GroupData>? get group; // String? group,
  @override
  Teacher? get teacher;
  @override
  String? get callOperator;
  @override
  SalesManager? get salesManager;
  @override
  bool? get isArchived;
  @override
  bool? get isFrozen;
  @override
  int? get attendanceCount;
  @override
  List<RelativesData>? get relatives;
  @override
  List<FileData>? get file;
  @override
  SecondaryGroupMin? get secondaryGroup;
  @override
  SecondaryTeacherMin? get secondaryTeacher;
  @override
  String? get newStudentStages;
  @override
  DateTime? get newStudentDate;
  @override
  String? get activeDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lid _$LidFromJson(Map<String, dynamic> json) {
  return _Lid.fromJson(json);
}

/// @nodoc
mixin _$Lid {
  String? get id => throw _privateConstructorUsedError; //
  String? get senderId => throw _privateConstructorUsedError; //
  String? get messageText => throw _privateConstructorUsedError; //
  Photo? get photo => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError; //
  String? get lastName => throw _privateConstructorUsedError; //
  String? get middleName => throw _privateConstructorUsedError; //
  String? get phoneNumber => throw _privateConstructorUsedError; //
  String? get dateOfBirth => throw _privateConstructorUsedError; //
  String? get educationLang => throw _privateConstructorUsedError; //
  String? get studentType => throw _privateConstructorUsedError; //
  List<SalesData>? get sales => throw _privateConstructorUsedError; //
  List<VoucherData>? get voucher => throw _privateConstructorUsedError;
  String? get orderedDate => throw _privateConstructorUsedError; //
  String? get eduClass => throw _privateConstructorUsedError; //
  String? get eduLevel => throw _privateConstructorUsedError; //
  String? get subject => throw _privateConstructorUsedError; //
  int? get ball => throw _privateConstructorUsedError; //
  Filial? get filial => throw _privateConstructorUsedError; //
  bool? get isFrozen => throw _privateConstructorUsedError;
  IsAttendance? get isAttendance => throw _privateConstructorUsedError; //
  MarketingChannel? get marketingChannel =>
      throw _privateConstructorUsedError; //
  String? get lidStageType => throw _privateConstructorUsedError; //
  String? get orderedStages => throw _privateConstructorUsedError; //
  String? get extraNumber => throw _privateConstructorUsedError; //
  String? get student => throw _privateConstructorUsedError; //
  String? get balance => throw _privateConstructorUsedError; //
  String? get lidStages => throw _privateConstructorUsedError; //
  bool? get isArchived => throw _privateConstructorUsedError; //
  List<List<String>>? get course => throw _privateConstructorUsedError; //
  List<List<String>>? get group => throw _privateConstructorUsedError; //
  String? get serviceManager => throw _privateConstructorUsedError; //
// ServiceManager? serviceManager,
  bool? get isStudent => throw _privateConstructorUsedError; //
  CallOperator? get callOperator => throw _privateConstructorUsedError; //
  List<RelativesData>? get relatives => throw _privateConstructorUsedError; //
  int? get lessonsCount => throw _privateConstructorUsedError; //
  String? get createdAt => throw _privateConstructorUsedError; //
// SalesManager? salesManager,
  String? get salesManager => throw _privateConstructorUsedError; //
  bool? get isExpired => throw _privateConstructorUsedError; //
  List<FileData>? get file => throw _privateConstructorUsedError;

  /// Serializes this Lid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LidCopyWith<Lid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LidCopyWith<$Res> {
  factory $LidCopyWith(Lid value, $Res Function(Lid) then) =
      _$LidCopyWithImpl<$Res, Lid>;
  @useResult
  $Res call(
      {String? id,
      String? senderId,
      String? messageText,
      Photo? photo,
      String? firstName,
      String? lastName,
      String? middleName,
      String? phoneNumber,
      String? dateOfBirth,
      String? educationLang,
      String? studentType,
      List<SalesData>? sales,
      List<VoucherData>? voucher,
      String? orderedDate,
      String? eduClass,
      String? eduLevel,
      String? subject,
      int? ball,
      Filial? filial,
      bool? isFrozen,
      IsAttendance? isAttendance,
      MarketingChannel? marketingChannel,
      String? lidStageType,
      String? orderedStages,
      String? extraNumber,
      String? student,
      String? balance,
      String? lidStages,
      bool? isArchived,
      List<List<String>>? course,
      List<List<String>>? group,
      String? serviceManager,
      bool? isStudent,
      CallOperator? callOperator,
      List<RelativesData>? relatives,
      int? lessonsCount,
      String? createdAt,
      String? salesManager,
      bool? isExpired,
      List<FileData>? file});

  $PhotoCopyWith<$Res>? get photo;
  $FilialCopyWith<$Res>? get filial;
  $IsAttendanceCopyWith<$Res>? get isAttendance;
  $MarketingChannelCopyWith<$Res>? get marketingChannel;
  $CallOperatorCopyWith<$Res>? get callOperator;
}

/// @nodoc
class _$LidCopyWithImpl<$Res, $Val extends Lid> implements $LidCopyWith<$Res> {
  _$LidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderId = freezed,
    Object? messageText = freezed,
    Object? photo = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? educationLang = freezed,
    Object? studentType = freezed,
    Object? sales = freezed,
    Object? voucher = freezed,
    Object? orderedDate = freezed,
    Object? eduClass = freezed,
    Object? eduLevel = freezed,
    Object? subject = freezed,
    Object? ball = freezed,
    Object? filial = freezed,
    Object? isFrozen = freezed,
    Object? isAttendance = freezed,
    Object? marketingChannel = freezed,
    Object? lidStageType = freezed,
    Object? orderedStages = freezed,
    Object? extraNumber = freezed,
    Object? student = freezed,
    Object? balance = freezed,
    Object? lidStages = freezed,
    Object? isArchived = freezed,
    Object? course = freezed,
    Object? group = freezed,
    Object? serviceManager = freezed,
    Object? isStudent = freezed,
    Object? callOperator = freezed,
    Object? relatives = freezed,
    Object? lessonsCount = freezed,
    Object? createdAt = freezed,
    Object? salesManager = freezed,
    Object? isExpired = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLang: freezed == educationLang
          ? _value.educationLang
          : educationLang // ignore: cast_nullable_to_non_nullable
              as String?,
      studentType: freezed == studentType
          ? _value.studentType
          : studentType // ignore: cast_nullable_to_non_nullable
              as String?,
      sales: freezed == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesData>?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<VoucherData>?,
      orderedDate: freezed == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      eduClass: freezed == eduClass
          ? _value.eduClass
          : eduClass // ignore: cast_nullable_to_non_nullable
              as String?,
      eduLevel: freezed == eduLevel
          ? _value.eduLevel
          : eduLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as int?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as Filial?,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAttendance: freezed == isAttendance
          ? _value.isAttendance
          : isAttendance // ignore: cast_nullable_to_non_nullable
              as IsAttendance?,
      marketingChannel: freezed == marketingChannel
          ? _value.marketingChannel
          : marketingChannel // ignore: cast_nullable_to_non_nullable
              as MarketingChannel?,
      lidStageType: freezed == lidStageType
          ? _value.lidStageType
          : lidStageType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedStages: freezed == orderedStages
          ? _value.orderedStages
          : orderedStages // ignore: cast_nullable_to_non_nullable
              as String?,
      extraNumber: freezed == extraNumber
          ? _value.extraNumber
          : extraNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      lidStages: freezed == lidStages
          ? _value.lidStages
          : lidStages // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      serviceManager: freezed == serviceManager
          ? _value.serviceManager
          : serviceManager // ignore: cast_nullable_to_non_nullable
              as String?,
      isStudent: freezed == isStudent
          ? _value.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool?,
      callOperator: freezed == callOperator
          ? _value.callOperator
          : callOperator // ignore: cast_nullable_to_non_nullable
              as CallOperator?,
      relatives: freezed == relatives
          ? _value.relatives
          : relatives // ignore: cast_nullable_to_non_nullable
              as List<RelativesData>?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      salesManager: freezed == salesManager
          ? _value.salesManager
          : salesManager // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
    ) as $Val);
  }

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilialCopyWith<$Res>? get filial {
    if (_value.filial == null) {
      return null;
    }

    return $FilialCopyWith<$Res>(_value.filial!, (value) {
      return _then(_value.copyWith(filial: value) as $Val);
    });
  }

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IsAttendanceCopyWith<$Res>? get isAttendance {
    if (_value.isAttendance == null) {
      return null;
    }

    return $IsAttendanceCopyWith<$Res>(_value.isAttendance!, (value) {
      return _then(_value.copyWith(isAttendance: value) as $Val);
    });
  }

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketingChannelCopyWith<$Res>? get marketingChannel {
    if (_value.marketingChannel == null) {
      return null;
    }

    return $MarketingChannelCopyWith<$Res>(_value.marketingChannel!, (value) {
      return _then(_value.copyWith(marketingChannel: value) as $Val);
    });
  }

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallOperatorCopyWith<$Res>? get callOperator {
    if (_value.callOperator == null) {
      return null;
    }

    return $CallOperatorCopyWith<$Res>(_value.callOperator!, (value) {
      return _then(_value.copyWith(callOperator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LidImplCopyWith<$Res> implements $LidCopyWith<$Res> {
  factory _$$LidImplCopyWith(_$LidImpl value, $Res Function(_$LidImpl) then) =
      __$$LidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? senderId,
      String? messageText,
      Photo? photo,
      String? firstName,
      String? lastName,
      String? middleName,
      String? phoneNumber,
      String? dateOfBirth,
      String? educationLang,
      String? studentType,
      List<SalesData>? sales,
      List<VoucherData>? voucher,
      String? orderedDate,
      String? eduClass,
      String? eduLevel,
      String? subject,
      int? ball,
      Filial? filial,
      bool? isFrozen,
      IsAttendance? isAttendance,
      MarketingChannel? marketingChannel,
      String? lidStageType,
      String? orderedStages,
      String? extraNumber,
      String? student,
      String? balance,
      String? lidStages,
      bool? isArchived,
      List<List<String>>? course,
      List<List<String>>? group,
      String? serviceManager,
      bool? isStudent,
      CallOperator? callOperator,
      List<RelativesData>? relatives,
      int? lessonsCount,
      String? createdAt,
      String? salesManager,
      bool? isExpired,
      List<FileData>? file});

  @override
  $PhotoCopyWith<$Res>? get photo;
  @override
  $FilialCopyWith<$Res>? get filial;
  @override
  $IsAttendanceCopyWith<$Res>? get isAttendance;
  @override
  $MarketingChannelCopyWith<$Res>? get marketingChannel;
  @override
  $CallOperatorCopyWith<$Res>? get callOperator;
}

/// @nodoc
class __$$LidImplCopyWithImpl<$Res> extends _$LidCopyWithImpl<$Res, _$LidImpl>
    implements _$$LidImplCopyWith<$Res> {
  __$$LidImplCopyWithImpl(_$LidImpl _value, $Res Function(_$LidImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderId = freezed,
    Object? messageText = freezed,
    Object? photo = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? educationLang = freezed,
    Object? studentType = freezed,
    Object? sales = freezed,
    Object? voucher = freezed,
    Object? orderedDate = freezed,
    Object? eduClass = freezed,
    Object? eduLevel = freezed,
    Object? subject = freezed,
    Object? ball = freezed,
    Object? filial = freezed,
    Object? isFrozen = freezed,
    Object? isAttendance = freezed,
    Object? marketingChannel = freezed,
    Object? lidStageType = freezed,
    Object? orderedStages = freezed,
    Object? extraNumber = freezed,
    Object? student = freezed,
    Object? balance = freezed,
    Object? lidStages = freezed,
    Object? isArchived = freezed,
    Object? course = freezed,
    Object? group = freezed,
    Object? serviceManager = freezed,
    Object? isStudent = freezed,
    Object? callOperator = freezed,
    Object? relatives = freezed,
    Object? lessonsCount = freezed,
    Object? createdAt = freezed,
    Object? salesManager = freezed,
    Object? isExpired = freezed,
    Object? file = freezed,
  }) {
    return _then(_$LidImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLang: freezed == educationLang
          ? _value.educationLang
          : educationLang // ignore: cast_nullable_to_non_nullable
              as String?,
      studentType: freezed == studentType
          ? _value.studentType
          : studentType // ignore: cast_nullable_to_non_nullable
              as String?,
      sales: freezed == sales
          ? _value._sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesData>?,
      voucher: freezed == voucher
          ? _value._voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<VoucherData>?,
      orderedDate: freezed == orderedDate
          ? _value.orderedDate
          : orderedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      eduClass: freezed == eduClass
          ? _value.eduClass
          : eduClass // ignore: cast_nullable_to_non_nullable
              as String?,
      eduLevel: freezed == eduLevel
          ? _value.eduLevel
          : eduLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as int?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as Filial?,
      isFrozen: freezed == isFrozen
          ? _value.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAttendance: freezed == isAttendance
          ? _value.isAttendance
          : isAttendance // ignore: cast_nullable_to_non_nullable
              as IsAttendance?,
      marketingChannel: freezed == marketingChannel
          ? _value.marketingChannel
          : marketingChannel // ignore: cast_nullable_to_non_nullable
              as MarketingChannel?,
      lidStageType: freezed == lidStageType
          ? _value.lidStageType
          : lidStageType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderedStages: freezed == orderedStages
          ? _value.orderedStages
          : orderedStages // ignore: cast_nullable_to_non_nullable
              as String?,
      extraNumber: freezed == extraNumber
          ? _value.extraNumber
          : extraNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      lidStages: freezed == lidStages
          ? _value.lidStages
          : lidStages // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
      course: freezed == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      serviceManager: freezed == serviceManager
          ? _value.serviceManager
          : serviceManager // ignore: cast_nullable_to_non_nullable
              as String?,
      isStudent: freezed == isStudent
          ? _value.isStudent
          : isStudent // ignore: cast_nullable_to_non_nullable
              as bool?,
      callOperator: freezed == callOperator
          ? _value.callOperator
          : callOperator // ignore: cast_nullable_to_non_nullable
              as CallOperator?,
      relatives: freezed == relatives
          ? _value._relatives
          : relatives // ignore: cast_nullable_to_non_nullable
              as List<RelativesData>?,
      lessonsCount: freezed == lessonsCount
          ? _value.lessonsCount
          : lessonsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      salesManager: freezed == salesManager
          ? _value.salesManager
          : salesManager // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      file: freezed == file
          ? _value._file
          : file // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LidImpl implements _Lid {
  const _$LidImpl(
      {this.id,
      this.senderId,
      this.messageText,
      this.photo,
      this.firstName,
      this.lastName,
      this.middleName,
      this.phoneNumber,
      this.dateOfBirth,
      this.educationLang,
      this.studentType,
      final List<SalesData>? sales,
      final List<VoucherData>? voucher,
      this.orderedDate,
      this.eduClass,
      this.eduLevel,
      this.subject,
      this.ball,
      this.filial,
      this.isFrozen,
      this.isAttendance,
      this.marketingChannel,
      this.lidStageType,
      this.orderedStages,
      this.extraNumber,
      this.student,
      this.balance,
      this.lidStages,
      this.isArchived,
      final List<List<String>>? course,
      final List<List<String>>? group,
      this.serviceManager,
      this.isStudent,
      this.callOperator,
      final List<RelativesData>? relatives,
      this.lessonsCount,
      this.createdAt,
      this.salesManager,
      this.isExpired,
      final List<FileData>? file})
      : _sales = sales,
        _voucher = voucher,
        _course = course,
        _group = group,
        _relatives = relatives,
        _file = file;

  factory _$LidImpl.fromJson(Map<String, dynamic> json) =>
      _$$LidImplFromJson(json);

  @override
  final String? id;
//
  @override
  final String? senderId;
//
  @override
  final String? messageText;
//
  @override
  final Photo? photo;
  @override
  final String? firstName;
//
  @override
  final String? lastName;
//
  @override
  final String? middleName;
//
  @override
  final String? phoneNumber;
//
  @override
  final String? dateOfBirth;
//
  @override
  final String? educationLang;
//
  @override
  final String? studentType;
//
  final List<SalesData>? _sales;
//
  @override
  List<SalesData>? get sales {
    final value = _sales;
    if (value == null) return null;
    if (_sales is EqualUnmodifiableListView) return _sales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//
  final List<VoucherData>? _voucher;
//
  @override
  List<VoucherData>? get voucher {
    final value = _voucher;
    if (value == null) return null;
    if (_voucher is EqualUnmodifiableListView) return _voucher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? orderedDate;
//
  @override
  final String? eduClass;
//
  @override
  final String? eduLevel;
//
  @override
  final String? subject;
//
  @override
  final int? ball;
//
  @override
  final Filial? filial;
//
  @override
  final bool? isFrozen;
  @override
  final IsAttendance? isAttendance;
//
  @override
  final MarketingChannel? marketingChannel;
//
  @override
  final String? lidStageType;
//
  @override
  final String? orderedStages;
//
  @override
  final String? extraNumber;
//
  @override
  final String? student;
//
  @override
  final String? balance;
//
  @override
  final String? lidStages;
//
  @override
  final bool? isArchived;
//
  final List<List<String>>? _course;
//
  @override
  List<List<String>>? get course {
    final value = _course;
    if (value == null) return null;
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//
  final List<List<String>>? _group;
//
  @override
  List<List<String>>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//
  @override
  final String? serviceManager;
//
// ServiceManager? serviceManager,
  @override
  final bool? isStudent;
//
  @override
  final CallOperator? callOperator;
//
  final List<RelativesData>? _relatives;
//
  @override
  List<RelativesData>? get relatives {
    final value = _relatives;
    if (value == null) return null;
    if (_relatives is EqualUnmodifiableListView) return _relatives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//
  @override
  final int? lessonsCount;
//
  @override
  final String? createdAt;
//
// SalesManager? salesManager,
  @override
  final String? salesManager;
//
  @override
  final bool? isExpired;
//
  final List<FileData>? _file;
//
  @override
  List<FileData>? get file {
    final value = _file;
    if (value == null) return null;
    if (_file is EqualUnmodifiableListView) return _file;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Lid(id: $id, senderId: $senderId, messageText: $messageText, photo: $photo, firstName: $firstName, lastName: $lastName, middleName: $middleName, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, educationLang: $educationLang, studentType: $studentType, sales: $sales, voucher: $voucher, orderedDate: $orderedDate, eduClass: $eduClass, eduLevel: $eduLevel, subject: $subject, ball: $ball, filial: $filial, isFrozen: $isFrozen, isAttendance: $isAttendance, marketingChannel: $marketingChannel, lidStageType: $lidStageType, orderedStages: $orderedStages, extraNumber: $extraNumber, student: $student, balance: $balance, lidStages: $lidStages, isArchived: $isArchived, course: $course, group: $group, serviceManager: $serviceManager, isStudent: $isStudent, callOperator: $callOperator, relatives: $relatives, lessonsCount: $lessonsCount, createdAt: $createdAt, salesManager: $salesManager, isExpired: $isExpired, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LidImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.educationLang, educationLang) ||
                other.educationLang == educationLang) &&
            (identical(other.studentType, studentType) ||
                other.studentType == studentType) &&
            const DeepCollectionEquality().equals(other._sales, _sales) &&
            const DeepCollectionEquality().equals(other._voucher, _voucher) &&
            (identical(other.orderedDate, orderedDate) ||
                other.orderedDate == orderedDate) &&
            (identical(other.eduClass, eduClass) ||
                other.eduClass == eduClass) &&
            (identical(other.eduLevel, eduLevel) ||
                other.eduLevel == eduLevel) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            (identical(other.filial, filial) || other.filial == filial) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            (identical(other.isAttendance, isAttendance) ||
                other.isAttendance == isAttendance) &&
            (identical(other.marketingChannel, marketingChannel) ||
                other.marketingChannel == marketingChannel) &&
            (identical(other.lidStageType, lidStageType) ||
                other.lidStageType == lidStageType) &&
            (identical(other.orderedStages, orderedStages) ||
                other.orderedStages == orderedStages) &&
            (identical(other.extraNumber, extraNumber) ||
                other.extraNumber == extraNumber) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.lidStages, lidStages) ||
                other.lidStages == lidStages) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived) &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            (identical(other.serviceManager, serviceManager) ||
                other.serviceManager == serviceManager) &&
            (identical(other.isStudent, isStudent) ||
                other.isStudent == isStudent) &&
            (identical(other.callOperator, callOperator) ||
                other.callOperator == callOperator) &&
            const DeepCollectionEquality()
                .equals(other._relatives, _relatives) &&
            (identical(other.lessonsCount, lessonsCount) ||
                other.lessonsCount == lessonsCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.salesManager, salesManager) ||
                other.salesManager == salesManager) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            const DeepCollectionEquality().equals(other._file, _file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        senderId,
        messageText,
        photo,
        firstName,
        lastName,
        middleName,
        phoneNumber,
        dateOfBirth,
        educationLang,
        studentType,
        const DeepCollectionEquality().hash(_sales),
        const DeepCollectionEquality().hash(_voucher),
        orderedDate,
        eduClass,
        eduLevel,
        subject,
        ball,
        filial,
        isFrozen,
        isAttendance,
        marketingChannel,
        lidStageType,
        orderedStages,
        extraNumber,
        student,
        balance,
        lidStages,
        isArchived,
        const DeepCollectionEquality().hash(_course),
        const DeepCollectionEquality().hash(_group),
        serviceManager,
        isStudent,
        callOperator,
        const DeepCollectionEquality().hash(_relatives),
        lessonsCount,
        createdAt,
        salesManager,
        isExpired,
        const DeepCollectionEquality().hash(_file)
      ]);

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LidImplCopyWith<_$LidImpl> get copyWith =>
      __$$LidImplCopyWithImpl<_$LidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LidImplToJson(
      this,
    );
  }
}

abstract class _Lid implements Lid {
  const factory _Lid(
      {final String? id,
      final String? senderId,
      final String? messageText,
      final Photo? photo,
      final String? firstName,
      final String? lastName,
      final String? middleName,
      final String? phoneNumber,
      final String? dateOfBirth,
      final String? educationLang,
      final String? studentType,
      final List<SalesData>? sales,
      final List<VoucherData>? voucher,
      final String? orderedDate,
      final String? eduClass,
      final String? eduLevel,
      final String? subject,
      final int? ball,
      final Filial? filial,
      final bool? isFrozen,
      final IsAttendance? isAttendance,
      final MarketingChannel? marketingChannel,
      final String? lidStageType,
      final String? orderedStages,
      final String? extraNumber,
      final String? student,
      final String? balance,
      final String? lidStages,
      final bool? isArchived,
      final List<List<String>>? course,
      final List<List<String>>? group,
      final String? serviceManager,
      final bool? isStudent,
      final CallOperator? callOperator,
      final List<RelativesData>? relatives,
      final int? lessonsCount,
      final String? createdAt,
      final String? salesManager,
      final bool? isExpired,
      final List<FileData>? file}) = _$LidImpl;

  factory _Lid.fromJson(Map<String, dynamic> json) = _$LidImpl.fromJson;

  @override
  String? get id; //
  @override
  String? get senderId; //
  @override
  String? get messageText; //
  @override
  Photo? get photo;
  @override
  String? get firstName; //
  @override
  String? get lastName; //
  @override
  String? get middleName; //
  @override
  String? get phoneNumber; //
  @override
  String? get dateOfBirth; //
  @override
  String? get educationLang; //
  @override
  String? get studentType; //
  @override
  List<SalesData>? get sales; //
  @override
  List<VoucherData>? get voucher;
  @override
  String? get orderedDate; //
  @override
  String? get eduClass; //
  @override
  String? get eduLevel; //
  @override
  String? get subject; //
  @override
  int? get ball; //
  @override
  Filial? get filial; //
  @override
  bool? get isFrozen;
  @override
  IsAttendance? get isAttendance; //
  @override
  MarketingChannel? get marketingChannel; //
  @override
  String? get lidStageType; //
  @override
  String? get orderedStages; //
  @override
  String? get extraNumber; //
  @override
  String? get student; //
  @override
  String? get balance; //
  @override
  String? get lidStages; //
  @override
  bool? get isArchived; //
  @override
  List<List<String>>? get course; //
  @override
  List<List<String>>? get group; //
  @override
  String? get serviceManager; //
// ServiceManager? serviceManager,
  @override
  bool? get isStudent; //
  @override
  CallOperator? get callOperator; //
  @override
  List<RelativesData>? get relatives; //
  @override
  int? get lessonsCount; //
  @override
  String? get createdAt; //
// SalesManager? salesManager,
  @override
  String? get salesManager; //
  @override
  bool? get isExpired; //
  @override
  List<FileData>? get file;

  /// Create a copy of Lid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LidImplCopyWith<_$LidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupMinModel _$GroupMinModelFromJson(Map<String, dynamic> json) {
  return _GroupMinModel.fromJson(json);
}

/// @nodoc
mixin _$GroupMinModel {
  String? get roomNumber => throw _privateConstructorUsedError;
  String? get groupName =>
      throw _privateConstructorUsedError; // Teacher? teacher,
  String? get levelId => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  String? get course => throw _privateConstructorUsedError;
  SubjectData? get subject => throw _privateConstructorUsedError;
  String? get courseId => throw _privateConstructorUsedError;

  /// Serializes this GroupMinModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupMinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMinModelCopyWith<GroupMinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMinModelCopyWith<$Res> {
  factory $GroupMinModelCopyWith(
          GroupMinModel value, $Res Function(GroupMinModel) then) =
      _$GroupMinModelCopyWithImpl<$Res, GroupMinModel>;
  @useResult
  $Res call(
      {String? roomNumber,
      String? groupName,
      String? levelId,
      String? teacher,
      String? course,
      SubjectData? subject,
      String? courseId});

  $SubjectDataCopyWith<$Res>? get subject;
}

/// @nodoc
class _$GroupMinModelCopyWithImpl<$Res, $Val extends GroupMinModel>
    implements $GroupMinModelCopyWith<$Res> {
  _$GroupMinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomNumber = freezed,
    Object? groupName = freezed,
    Object? levelId = freezed,
    Object? teacher = freezed,
    Object? course = freezed,
    Object? subject = freezed,
    Object? courseId = freezed,
  }) {
    return _then(_value.copyWith(
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectData?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of GroupMinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectDataCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $SubjectDataCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupMinModelImplCopyWith<$Res>
    implements $GroupMinModelCopyWith<$Res> {
  factory _$$GroupMinModelImplCopyWith(
          _$GroupMinModelImpl value, $Res Function(_$GroupMinModelImpl) then) =
      __$$GroupMinModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? roomNumber,
      String? groupName,
      String? levelId,
      String? teacher,
      String? course,
      SubjectData? subject,
      String? courseId});

  @override
  $SubjectDataCopyWith<$Res>? get subject;
}

/// @nodoc
class __$$GroupMinModelImplCopyWithImpl<$Res>
    extends _$GroupMinModelCopyWithImpl<$Res, _$GroupMinModelImpl>
    implements _$$GroupMinModelImplCopyWith<$Res> {
  __$$GroupMinModelImplCopyWithImpl(
      _$GroupMinModelImpl _value, $Res Function(_$GroupMinModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupMinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomNumber = freezed,
    Object? groupName = freezed,
    Object? levelId = freezed,
    Object? teacher = freezed,
    Object? course = freezed,
    Object? subject = freezed,
    Object? courseId = freezed,
  }) {
    return _then(_$GroupMinModelImpl(
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      levelId: freezed == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectData?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GroupMinModelImpl implements _GroupMinModel {
  const _$GroupMinModelImpl(
      {this.roomNumber,
      this.groupName,
      this.levelId,
      this.teacher,
      this.course,
      this.subject,
      this.courseId});

  factory _$GroupMinModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupMinModelImplFromJson(json);

  @override
  final String? roomNumber;
  @override
  final String? groupName;
// Teacher? teacher,
  @override
  final String? levelId;
  @override
  final String? teacher;
  @override
  final String? course;
  @override
  final SubjectData? subject;
  @override
  final String? courseId;

  @override
  String toString() {
    return 'GroupMinModel(roomNumber: $roomNumber, groupName: $groupName, levelId: $levelId, teacher: $teacher, course: $course, subject: $subject, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMinModelImpl &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roomNumber, groupName, levelId,
      teacher, course, subject, courseId);

  /// Create a copy of GroupMinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMinModelImplCopyWith<_$GroupMinModelImpl> get copyWith =>
      __$$GroupMinModelImplCopyWithImpl<_$GroupMinModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupMinModelImplToJson(
      this,
    );
  }
}

abstract class _GroupMinModel implements GroupMinModel {
  const factory _GroupMinModel(
      {final String? roomNumber,
      final String? groupName,
      final String? levelId,
      final String? teacher,
      final String? course,
      final SubjectData? subject,
      final String? courseId}) = _$GroupMinModelImpl;

  factory _GroupMinModel.fromJson(Map<String, dynamic> json) =
      _$GroupMinModelImpl.fromJson;

  @override
  String? get roomNumber;
  @override
  String? get groupName; // Teacher? teacher,
  @override
  String? get levelId;
  @override
  String? get teacher;
  @override
  String? get course;
  @override
  SubjectData? get subject;
  @override
  String? get courseId;

  /// Create a copy of GroupMinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMinModelImplCopyWith<_$GroupMinModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  String? get id => throw _privateConstructorUsedError;
  String? get file =>
      throw _privateConstructorUsedError; // video: mp4, mov, audio: mp3, rasm:  png, jpeg(jpg),
  String? get choice => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({String? id, String? file, String? choice, String? url});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? choice = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      choice: freezed == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? file, String? choice, String? url});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? choice = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PhotoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      choice: freezed == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl({this.id, this.file, this.choice, this.url});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? file;
// video: mp4, mov, audio: mp3, rasm:  png, jpeg(jpg),
  @override
  final String? choice;
  @override
  final String? url;

  @override
  String toString() {
    return 'Photo(id: $id, file: $file, choice: $choice, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.choice, choice) || other.choice == choice) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, file, choice, url);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {final String? id,
      final String? file,
      final String? choice,
      final String? url}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get file; // video: mp4, mov, audio: mp3, rasm:  png, jpeg(jpg),
  @override
  String? get choice;
  @override
  String? get url;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Learning _$LearningFromJson(Map<String, dynamic> json) {
  return _Learning.fromJson(json);
}

/// @nodoc
mixin _$Learning {
  double? get score => throw _privateConstructorUsedError;
  double? get learning => throw _privateConstructorUsedError;

  /// Serializes this Learning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Learning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningCopyWith<Learning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningCopyWith<$Res> {
  factory $LearningCopyWith(Learning value, $Res Function(Learning) then) =
      _$LearningCopyWithImpl<$Res, Learning>;
  @useResult
  $Res call({double? score, double? learning});
}

/// @nodoc
class _$LearningCopyWithImpl<$Res, $Val extends Learning>
    implements $LearningCopyWith<$Res> {
  _$LearningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Learning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? learning = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      learning: freezed == learning
          ? _value.learning
          : learning // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningImplCopyWith<$Res>
    implements $LearningCopyWith<$Res> {
  factory _$$LearningImplCopyWith(
          _$LearningImpl value, $Res Function(_$LearningImpl) then) =
      __$$LearningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? score, double? learning});
}

/// @nodoc
class __$$LearningImplCopyWithImpl<$Res>
    extends _$LearningCopyWithImpl<$Res, _$LearningImpl>
    implements _$$LearningImplCopyWith<$Res> {
  __$$LearningImplCopyWithImpl(
      _$LearningImpl _value, $Res Function(_$LearningImpl) _then)
      : super(_value, _then);

  /// Create a copy of Learning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? learning = freezed,
  }) {
    return _then(_$LearningImpl(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      learning: freezed == learning
          ? _value.learning
          : learning // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LearningImpl implements _Learning {
  const _$LearningImpl({this.score, this.learning});

  factory _$LearningImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningImplFromJson(json);

  @override
  final double? score;
  @override
  final double? learning;

  @override
  String toString() {
    return 'Learning(score: $score, learning: $learning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.learning, learning) ||
                other.learning == learning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, score, learning);

  /// Create a copy of Learning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningImplCopyWith<_$LearningImpl> get copyWith =>
      __$$LearningImplCopyWithImpl<_$LearningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningImplToJson(
      this,
    );
  }
}

abstract class _Learning implements Learning {
  const factory _Learning({final double? score, final double? learning}) =
      _$LearningImpl;

  factory _Learning.fromJson(Map<String, dynamic> json) =
      _$LearningImpl.fromJson;

  @override
  double? get score;
  @override
  double? get learning;

  /// Create a copy of Learning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningImplCopyWith<_$LearningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesData _$SalesDataFromJson(Map<String, dynamic> json) {
  return _SalesData.fromJson(json);
}

/// @nodoc
mixin _$SalesData {
  String? get id => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get saleStatus => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this SalesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesDataCopyWith<SalesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesDataCopyWith<$Res> {
  factory $SalesDataCopyWith(SalesData value, $Res Function(SalesData) then) =
      _$SalesDataCopyWithImpl<$Res, SalesData>;
  @useResult
  $Res call({String? id, double? amount, String? saleStatus, String? date});
}

/// @nodoc
class _$SalesDataCopyWithImpl<$Res, $Val extends SalesData>
    implements $SalesDataCopyWith<$Res> {
  _$SalesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? saleStatus = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      saleStatus: freezed == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesDataImplCopyWith<$Res>
    implements $SalesDataCopyWith<$Res> {
  factory _$$SalesDataImplCopyWith(
          _$SalesDataImpl value, $Res Function(_$SalesDataImpl) then) =
      __$$SalesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, double? amount, String? saleStatus, String? date});
}

/// @nodoc
class __$$SalesDataImplCopyWithImpl<$Res>
    extends _$SalesDataCopyWithImpl<$Res, _$SalesDataImpl>
    implements _$$SalesDataImplCopyWith<$Res> {
  __$$SalesDataImplCopyWithImpl(
      _$SalesDataImpl _value, $Res Function(_$SalesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? saleStatus = freezed,
    Object? date = freezed,
  }) {
    return _then(_$SalesDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      saleStatus: freezed == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SalesDataImpl implements _SalesData {
  const _$SalesDataImpl({this.id, this.amount, this.saleStatus, this.date});

  factory _$SalesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesDataImplFromJson(json);

  @override
  final String? id;
  @override
  final double? amount;
  @override
  final String? saleStatus;
  @override
  final String? date;

  @override
  String toString() {
    return 'SalesData(id: $id, amount: $amount, saleStatus: $saleStatus, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.saleStatus, saleStatus) ||
                other.saleStatus == saleStatus) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, saleStatus, date);

  /// Create a copy of SalesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesDataImplCopyWith<_$SalesDataImpl> get copyWith =>
      __$$SalesDataImplCopyWithImpl<_$SalesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesDataImplToJson(
      this,
    );
  }
}

abstract class _SalesData implements SalesData {
  const factory _SalesData(
      {final String? id,
      final double? amount,
      final String? saleStatus,
      final String? date}) = _$SalesDataImpl;

  factory _SalesData.fromJson(Map<String, dynamic> json) =
      _$SalesDataImpl.fromJson;

  @override
  String? get id;
  @override
  double? get amount;
  @override
  String? get saleStatus;
  @override
  String? get date;

  /// Create a copy of SalesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesDataImplCopyWith<_$SalesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesManager _$SalesManagerFromJson(Map<String, dynamic> json) {
  return _SalesManager.fromJson(json);
}

/// @nodoc
mixin _$SalesManager {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  List<bool>? get isLinked => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError;
  dynamic get penalty => throw _privateConstructorUsedError;
  List<int>? get filial => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  double? get ball => throw _privateConstructorUsedError;
  List<PagesData>? get pages => throw _privateConstructorUsedError;
  List<FileData>? get files => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;
  String? get extraNumber => throw _privateConstructorUsedError;
  bool? get isCallCenter => throw _privateConstructorUsedError;
  String? get enter => throw _privateConstructorUsedError;
  String? get leave => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  List<BonusData>? get bonus => throw _privateConstructorUsedError;
  List<dynamic>? get compensation => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  bool? get isArchived => throw _privateConstructorUsedError;

  /// Serializes this SalesManager to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesManagerCopyWith<SalesManager> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesManagerCopyWith<$Res> {
  factory $SalesManagerCopyWith(
          SalesManager value, $Res Function(SalesManager) then) =
      _$SalesManagerCopyWithImpl<$Res, SalesManager>;
  @useResult
  $Res call(
      {String? id,
      String? fullName,
      String? firstName,
      String? lastName,
      List<bool>? isLinked,
      String? phone,
      String? role,
      Photo? photo,
      dynamic penalty,
      List<int>? filial,
      String? balance,
      double? ball,
      List<PagesData>? pages,
      List<FileData>? files,
      double? salary,
      String? extraNumber,
      bool? isCallCenter,
      String? enter,
      String? leave,
      String? dateOfBirth,
      String? createdAt,
      List<BonusData>? bonus,
      List<dynamic>? compensation,
      String? updatedAt,
      bool? isArchived});

  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$SalesManagerCopyWithImpl<$Res, $Val extends SalesManager>
    implements $SalesManagerCopyWith<$Res> {
  _$SalesManagerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isLinked = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? photo = freezed,
    Object? penalty = freezed,
    Object? filial = freezed,
    Object? balance = freezed,
    Object? ball = freezed,
    Object? pages = freezed,
    Object? files = freezed,
    Object? salary = freezed,
    Object? extraNumber = freezed,
    Object? isCallCenter = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? bonus = freezed,
    Object? compensation = freezed,
    Object? updatedAt = freezed,
    Object? isArchived = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isLinked: freezed == isLinked
          ? _value.isLinked
          : isLinked // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      penalty: freezed == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PagesData>?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      extraNumber: freezed == extraNumber
          ? _value.extraNumber
          : extraNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isCallCenter: freezed == isCallCenter
          ? _value.isCallCenter
          : isCallCenter // ignore: cast_nullable_to_non_nullable
              as bool?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as String?,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
      compensation: freezed == compensation
          ? _value.compensation
          : compensation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of SalesManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesManagerImplCopyWith<$Res>
    implements $SalesManagerCopyWith<$Res> {
  factory _$$SalesManagerImplCopyWith(
          _$SalesManagerImpl value, $Res Function(_$SalesManagerImpl) then) =
      __$$SalesManagerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? fullName,
      String? firstName,
      String? lastName,
      List<bool>? isLinked,
      String? phone,
      String? role,
      Photo? photo,
      dynamic penalty,
      List<int>? filial,
      String? balance,
      double? ball,
      List<PagesData>? pages,
      List<FileData>? files,
      double? salary,
      String? extraNumber,
      bool? isCallCenter,
      String? enter,
      String? leave,
      String? dateOfBirth,
      String? createdAt,
      List<BonusData>? bonus,
      List<dynamic>? compensation,
      String? updatedAt,
      bool? isArchived});

  @override
  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$SalesManagerImplCopyWithImpl<$Res>
    extends _$SalesManagerCopyWithImpl<$Res, _$SalesManagerImpl>
    implements _$$SalesManagerImplCopyWith<$Res> {
  __$$SalesManagerImplCopyWithImpl(
      _$SalesManagerImpl _value, $Res Function(_$SalesManagerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isLinked = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? photo = freezed,
    Object? penalty = freezed,
    Object? filial = freezed,
    Object? balance = freezed,
    Object? ball = freezed,
    Object? pages = freezed,
    Object? files = freezed,
    Object? salary = freezed,
    Object? extraNumber = freezed,
    Object? isCallCenter = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? bonus = freezed,
    Object? compensation = freezed,
    Object? updatedAt = freezed,
    Object? isArchived = freezed,
  }) {
    return _then(_$SalesManagerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isLinked: freezed == isLinked
          ? _value._isLinked
          : isLinked // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      penalty: freezed == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filial: freezed == filial
          ? _value._filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      pages: freezed == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PagesData>?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      extraNumber: freezed == extraNumber
          ? _value.extraNumber
          : extraNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isCallCenter: freezed == isCallCenter
          ? _value.isCallCenter
          : isCallCenter // ignore: cast_nullable_to_non_nullable
              as bool?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as String?,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: freezed == bonus
          ? _value._bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
      compensation: freezed == compensation
          ? _value._compensation
          : compensation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SalesManagerImpl implements _SalesManager {
  const _$SalesManagerImpl(
      {this.id,
      this.fullName,
      this.firstName,
      this.lastName,
      final List<bool>? isLinked,
      this.phone,
      this.role,
      this.photo,
      this.penalty,
      final List<int>? filial,
      this.balance,
      this.ball,
      final List<PagesData>? pages,
      final List<FileData>? files,
      this.salary,
      this.extraNumber,
      this.isCallCenter,
      this.enter,
      this.leave,
      this.dateOfBirth,
      this.createdAt,
      final List<BonusData>? bonus,
      final List<dynamic>? compensation,
      this.updatedAt,
      this.isArchived})
      : _isLinked = isLinked,
        _filial = filial,
        _pages = pages,
        _files = files,
        _bonus = bonus,
        _compensation = compensation;

  factory _$SalesManagerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesManagerImplFromJson(json);

  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  final List<bool>? _isLinked;
  @override
  List<bool>? get isLinked {
    final value = _isLinked;
    if (value == null) return null;
    if (_isLinked is EqualUnmodifiableListView) return _isLinked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? phone;
  @override
  final String? role;
  @override
  final Photo? photo;
  @override
  final dynamic penalty;
  final List<int>? _filial;
  @override
  List<int>? get filial {
    final value = _filial;
    if (value == null) return null;
    if (_filial is EqualUnmodifiableListView) return _filial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? balance;
  @override
  final double? ball;
  final List<PagesData>? _pages;
  @override
  List<PagesData>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FileData>? _files;
  @override
  List<FileData>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? salary;
  @override
  final String? extraNumber;
  @override
  final bool? isCallCenter;
  @override
  final String? enter;
  @override
  final String? leave;
  @override
  final String? dateOfBirth;
  @override
  final String? createdAt;
  final List<BonusData>? _bonus;
  @override
  List<BonusData>? get bonus {
    final value = _bonus;
    if (value == null) return null;
    if (_bonus is EqualUnmodifiableListView) return _bonus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _compensation;
  @override
  List<dynamic>? get compensation {
    final value = _compensation;
    if (value == null) return null;
    if (_compensation is EqualUnmodifiableListView) return _compensation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? updatedAt;
  @override
  final bool? isArchived;

  @override
  String toString() {
    return 'SalesManager(id: $id, fullName: $fullName, firstName: $firstName, lastName: $lastName, isLinked: $isLinked, phone: $phone, role: $role, photo: $photo, penalty: $penalty, filial: $filial, balance: $balance, ball: $ball, pages: $pages, files: $files, salary: $salary, extraNumber: $extraNumber, isCallCenter: $isCallCenter, enter: $enter, leave: $leave, dateOfBirth: $dateOfBirth, createdAt: $createdAt, bonus: $bonus, compensation: $compensation, updatedAt: $updatedAt, isArchived: $isArchived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesManagerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other._isLinked, _isLinked) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality().equals(other.penalty, penalty) &&
            const DeepCollectionEquality().equals(other._filial, _filial) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.extraNumber, extraNumber) ||
                other.extraNumber == extraNumber) &&
            (identical(other.isCallCenter, isCallCenter) ||
                other.isCallCenter == isCallCenter) &&
            (identical(other.enter, enter) || other.enter == enter) &&
            (identical(other.leave, leave) || other.leave == leave) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._bonus, _bonus) &&
            const DeepCollectionEquality()
                .equals(other._compensation, _compensation) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        fullName,
        firstName,
        lastName,
        const DeepCollectionEquality().hash(_isLinked),
        phone,
        role,
        photo,
        const DeepCollectionEquality().hash(penalty),
        const DeepCollectionEquality().hash(_filial),
        balance,
        ball,
        const DeepCollectionEquality().hash(_pages),
        const DeepCollectionEquality().hash(_files),
        salary,
        extraNumber,
        isCallCenter,
        enter,
        leave,
        dateOfBirth,
        createdAt,
        const DeepCollectionEquality().hash(_bonus),
        const DeepCollectionEquality().hash(_compensation),
        updatedAt,
        isArchived
      ]);

  /// Create a copy of SalesManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesManagerImplCopyWith<_$SalesManagerImpl> get copyWith =>
      __$$SalesManagerImplCopyWithImpl<_$SalesManagerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesManagerImplToJson(
      this,
    );
  }
}

abstract class _SalesManager implements SalesManager {
  const factory _SalesManager(
      {final String? id,
      final String? fullName,
      final String? firstName,
      final String? lastName,
      final List<bool>? isLinked,
      final String? phone,
      final String? role,
      final Photo? photo,
      final dynamic penalty,
      final List<int>? filial,
      final String? balance,
      final double? ball,
      final List<PagesData>? pages,
      final List<FileData>? files,
      final double? salary,
      final String? extraNumber,
      final bool? isCallCenter,
      final String? enter,
      final String? leave,
      final String? dateOfBirth,
      final String? createdAt,
      final List<BonusData>? bonus,
      final List<dynamic>? compensation,
      final String? updatedAt,
      final bool? isArchived}) = _$SalesManagerImpl;

  factory _SalesManager.fromJson(Map<String, dynamic> json) =
      _$SalesManagerImpl.fromJson;

  @override
  String? get id;
  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  List<bool>? get isLinked;
  @override
  String? get phone;
  @override
  String? get role;
  @override
  Photo? get photo;
  @override
  dynamic get penalty;
  @override
  List<int>? get filial;
  @override
  String? get balance;
  @override
  double? get ball;
  @override
  List<PagesData>? get pages;
  @override
  List<FileData>? get files;
  @override
  double? get salary;
  @override
  String? get extraNumber;
  @override
  bool? get isCallCenter;
  @override
  String? get enter;
  @override
  String? get leave;
  @override
  String? get dateOfBirth;
  @override
  String? get createdAt;
  @override
  List<BonusData>? get bonus;
  @override
  List<dynamic>? get compensation;
  @override
  String? get updatedAt;
  @override
  bool? get isArchived;

  /// Create a copy of SalesManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesManagerImplCopyWith<_$SalesManagerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelativesData _$RelativesDataFromJson(Map<String, dynamic> json) {
  return _RelativesData.fromJson(json);
}

/// @nodoc
mixin _$RelativesData {
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;

  /// Serializes this RelativesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelativesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelativesDataCopyWith<RelativesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelativesDataCopyWith<$Res> {
  factory $RelativesDataCopyWith(
          RelativesData value, $Res Function(RelativesData) then) =
      _$RelativesDataCopyWithImpl<$Res, RelativesData>;
  @useResult
  $Res call({String? name, String? phone, String? who});
}

/// @nodoc
class _$RelativesDataCopyWithImpl<$Res, $Val extends RelativesData>
    implements $RelativesDataCopyWith<$Res> {
  _$RelativesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelativesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? who = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelativesDataImplCopyWith<$Res>
    implements $RelativesDataCopyWith<$Res> {
  factory _$$RelativesDataImplCopyWith(
          _$RelativesDataImpl value, $Res Function(_$RelativesDataImpl) then) =
      __$$RelativesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? phone, String? who});
}

/// @nodoc
class __$$RelativesDataImplCopyWithImpl<$Res>
    extends _$RelativesDataCopyWithImpl<$Res, _$RelativesDataImpl>
    implements _$$RelativesDataImplCopyWith<$Res> {
  __$$RelativesDataImplCopyWithImpl(
      _$RelativesDataImpl _value, $Res Function(_$RelativesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelativesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? who = freezed,
  }) {
    return _then(_$RelativesDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$RelativesDataImpl implements _RelativesData {
  const _$RelativesDataImpl({this.name, this.phone, this.who});

  factory _$RelativesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelativesDataImplFromJson(json);

  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? who;

  @override
  String toString() {
    return 'RelativesData(name: $name, phone: $phone, who: $who)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelativesDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.who, who) || other.who == who));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone, who);

  /// Create a copy of RelativesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelativesDataImplCopyWith<_$RelativesDataImpl> get copyWith =>
      __$$RelativesDataImplCopyWithImpl<_$RelativesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelativesDataImplToJson(
      this,
    );
  }
}

abstract class _RelativesData implements RelativesData {
  const factory _RelativesData(
      {final String? name,
      final String? phone,
      final String? who}) = _$RelativesDataImpl;

  factory _RelativesData.fromJson(Map<String, dynamic> json) =
      _$RelativesDataImpl.fromJson;

  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get who;

  /// Create a copy of RelativesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelativesDataImplCopyWith<_$RelativesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceManager _$ServiceManagerFromJson(Map<String, dynamic> json) {
  return _ServiceManager.fromJson(json);
}

/// @nodoc
mixin _$ServiceManager {
  String? get balance => throw _privateConstructorUsedError;
  double? get ball => throw _privateConstructorUsedError;
  List<bool>? get isLinked => throw _privateConstructorUsedError;
  List<FileData>? get files => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError; //check this
  List<int>? get filial => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;
  String? get extraNumber => throw _privateConstructorUsedError;
  bool? get isCallCenter => throw _privateConstructorUsedError;
  String? get enter => throw _privateConstructorUsedError;
  String? get leave => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  List<BonusData>? get bonus => throw _privateConstructorUsedError;
  List<BonusData>? get compensation => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  bool? get isArchived => throw _privateConstructorUsedError;

  /// Serializes this ServiceManager to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceManagerCopyWith<ServiceManager> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceManagerCopyWith<$Res> {
  factory $ServiceManagerCopyWith(
          ServiceManager value, $Res Function(ServiceManager) then) =
      _$ServiceManagerCopyWithImpl<$Res, ServiceManager>;
  @useResult
  $Res call(
      {String? balance,
      double? ball,
      List<bool>? isLinked,
      List<FileData>? files,
      Photo? photo,
      List<int>? filial,
      double? salary,
      String? extraNumber,
      bool? isCallCenter,
      String? enter,
      String? leave,
      String? dateOfBirth,
      String? createdAt,
      List<BonusData>? bonus,
      List<BonusData>? compensation,
      String? updatedAt,
      bool? isArchived});

  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$ServiceManagerCopyWithImpl<$Res, $Val extends ServiceManager>
    implements $ServiceManagerCopyWith<$Res> {
  _$ServiceManagerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = freezed,
    Object? ball = freezed,
    Object? isLinked = freezed,
    Object? files = freezed,
    Object? photo = freezed,
    Object? filial = freezed,
    Object? salary = freezed,
    Object? extraNumber = freezed,
    Object? isCallCenter = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? bonus = freezed,
    Object? compensation = freezed,
    Object? updatedAt = freezed,
    Object? isArchived = freezed,
  }) {
    return _then(_value.copyWith(
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      isLinked: freezed == isLinked
          ? _value.isLinked
          : isLinked // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      extraNumber: freezed == extraNumber
          ? _value.extraNumber
          : extraNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isCallCenter: freezed == isCallCenter
          ? _value.isCallCenter
          : isCallCenter // ignore: cast_nullable_to_non_nullable
              as bool?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as String?,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
      compensation: freezed == compensation
          ? _value.compensation
          : compensation // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ServiceManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceManagerImplCopyWith<$Res>
    implements $ServiceManagerCopyWith<$Res> {
  factory _$$ServiceManagerImplCopyWith(_$ServiceManagerImpl value,
          $Res Function(_$ServiceManagerImpl) then) =
      __$$ServiceManagerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? balance,
      double? ball,
      List<bool>? isLinked,
      List<FileData>? files,
      Photo? photo,
      List<int>? filial,
      double? salary,
      String? extraNumber,
      bool? isCallCenter,
      String? enter,
      String? leave,
      String? dateOfBirth,
      String? createdAt,
      List<BonusData>? bonus,
      List<BonusData>? compensation,
      String? updatedAt,
      bool? isArchived});

  @override
  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$ServiceManagerImplCopyWithImpl<$Res>
    extends _$ServiceManagerCopyWithImpl<$Res, _$ServiceManagerImpl>
    implements _$$ServiceManagerImplCopyWith<$Res> {
  __$$ServiceManagerImplCopyWithImpl(
      _$ServiceManagerImpl _value, $Res Function(_$ServiceManagerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = freezed,
    Object? ball = freezed,
    Object? isLinked = freezed,
    Object? files = freezed,
    Object? photo = freezed,
    Object? filial = freezed,
    Object? salary = freezed,
    Object? extraNumber = freezed,
    Object? isCallCenter = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? bonus = freezed,
    Object? compensation = freezed,
    Object? updatedAt = freezed,
    Object? isArchived = freezed,
  }) {
    return _then(_$ServiceManagerImpl(
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      isLinked: freezed == isLinked
          ? _value._isLinked
          : isLinked // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileData>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      filial: freezed == filial
          ? _value._filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      extraNumber: freezed == extraNumber
          ? _value.extraNumber
          : extraNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isCallCenter: freezed == isCallCenter
          ? _value.isCallCenter
          : isCallCenter // ignore: cast_nullable_to_non_nullable
              as bool?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as String?,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bonus: freezed == bonus
          ? _value._bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
      compensation: freezed == compensation
          ? _value._compensation
          : compensation // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isArchived: freezed == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ServiceManagerImpl implements _ServiceManager {
  const _$ServiceManagerImpl(
      {this.balance,
      this.ball,
      final List<bool>? isLinked,
      final List<FileData>? files,
      this.photo,
      final List<int>? filial,
      this.salary,
      this.extraNumber,
      this.isCallCenter,
      this.enter,
      this.leave,
      this.dateOfBirth,
      this.createdAt,
      final List<BonusData>? bonus,
      final List<BonusData>? compensation,
      this.updatedAt,
      this.isArchived})
      : _isLinked = isLinked,
        _files = files,
        _filial = filial,
        _bonus = bonus,
        _compensation = compensation;

  factory _$ServiceManagerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceManagerImplFromJson(json);

  @override
  final String? balance;
  @override
  final double? ball;
  final List<bool>? _isLinked;
  @override
  List<bool>? get isLinked {
    final value = _isLinked;
    if (value == null) return null;
    if (_isLinked is EqualUnmodifiableListView) return _isLinked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FileData>? _files;
  @override
  List<FileData>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Photo? photo;
//check this
  final List<int>? _filial;
//check this
  @override
  List<int>? get filial {
    final value = _filial;
    if (value == null) return null;
    if (_filial is EqualUnmodifiableListView) return _filial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? salary;
  @override
  final String? extraNumber;
  @override
  final bool? isCallCenter;
  @override
  final String? enter;
  @override
  final String? leave;
  @override
  final String? dateOfBirth;
  @override
  final String? createdAt;
  final List<BonusData>? _bonus;
  @override
  List<BonusData>? get bonus {
    final value = _bonus;
    if (value == null) return null;
    if (_bonus is EqualUnmodifiableListView) return _bonus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BonusData>? _compensation;
  @override
  List<BonusData>? get compensation {
    final value = _compensation;
    if (value == null) return null;
    if (_compensation is EqualUnmodifiableListView) return _compensation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? updatedAt;
  @override
  final bool? isArchived;

  @override
  String toString() {
    return 'ServiceManager(balance: $balance, ball: $ball, isLinked: $isLinked, files: $files, photo: $photo, filial: $filial, salary: $salary, extraNumber: $extraNumber, isCallCenter: $isCallCenter, enter: $enter, leave: $leave, dateOfBirth: $dateOfBirth, createdAt: $createdAt, bonus: $bonus, compensation: $compensation, updatedAt: $updatedAt, isArchived: $isArchived)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceManagerImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            const DeepCollectionEquality().equals(other._isLinked, _isLinked) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality().equals(other._filial, _filial) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.extraNumber, extraNumber) ||
                other.extraNumber == extraNumber) &&
            (identical(other.isCallCenter, isCallCenter) ||
                other.isCallCenter == isCallCenter) &&
            (identical(other.enter, enter) || other.enter == enter) &&
            (identical(other.leave, leave) || other.leave == leave) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._bonus, _bonus) &&
            const DeepCollectionEquality()
                .equals(other._compensation, _compensation) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      balance,
      ball,
      const DeepCollectionEquality().hash(_isLinked),
      const DeepCollectionEquality().hash(_files),
      photo,
      const DeepCollectionEquality().hash(_filial),
      salary,
      extraNumber,
      isCallCenter,
      enter,
      leave,
      dateOfBirth,
      createdAt,
      const DeepCollectionEquality().hash(_bonus),
      const DeepCollectionEquality().hash(_compensation),
      updatedAt,
      isArchived);

  /// Create a copy of ServiceManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceManagerImplCopyWith<_$ServiceManagerImpl> get copyWith =>
      __$$ServiceManagerImplCopyWithImpl<_$ServiceManagerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceManagerImplToJson(
      this,
    );
  }
}

abstract class _ServiceManager implements ServiceManager {
  const factory _ServiceManager(
      {final String? balance,
      final double? ball,
      final List<bool>? isLinked,
      final List<FileData>? files,
      final Photo? photo,
      final List<int>? filial,
      final double? salary,
      final String? extraNumber,
      final bool? isCallCenter,
      final String? enter,
      final String? leave,
      final String? dateOfBirth,
      final String? createdAt,
      final List<BonusData>? bonus,
      final List<BonusData>? compensation,
      final String? updatedAt,
      final bool? isArchived}) = _$ServiceManagerImpl;

  factory _ServiceManager.fromJson(Map<String, dynamic> json) =
      _$ServiceManagerImpl.fromJson;

  @override
  String? get balance;
  @override
  double? get ball;
  @override
  List<bool>? get isLinked;
  @override
  List<FileData>? get files;
  @override
  Photo? get photo; //check this
  @override
  List<int>? get filial;
  @override
  double? get salary;
  @override
  String? get extraNumber;
  @override
  bool? get isCallCenter;
  @override
  String? get enter;
  @override
  String? get leave;
  @override
  String? get dateOfBirth;
  @override
  String? get createdAt;
  @override
  List<BonusData>? get bonus;
  @override
  List<BonusData>? get compensation;
  @override
  String? get updatedAt;
  @override
  bool? get isArchived;

  /// Create a copy of ServiceManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceManagerImplCopyWith<_$ServiceManagerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VoucherData _$VoucherDataFromJson(Map<String, dynamic> json) {
  return _VoucherData.fromJson(json);
}

/// @nodoc
mixin _$VoucherData {
  String? get id => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  bool? get isExpired => throw _privateConstructorUsedError;

  /// Serializes this VoucherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VoucherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherDataCopyWith<VoucherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherDataCopyWith<$Res> {
  factory $VoucherDataCopyWith(
          VoucherData value, $Res Function(VoucherData) then) =
      _$VoucherDataCopyWithImpl<$Res, VoucherData>;
  @useResult
  $Res call({String? id, int? amount, String? createdAt, bool? isExpired});
}

/// @nodoc
class _$VoucherDataCopyWithImpl<$Res, $Val extends VoucherData>
    implements $VoucherDataCopyWith<$Res> {
  _$VoucherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoucherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherDataImplCopyWith<$Res>
    implements $VoucherDataCopyWith<$Res> {
  factory _$$VoucherDataImplCopyWith(
          _$VoucherDataImpl value, $Res Function(_$VoucherDataImpl) then) =
      __$$VoucherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? amount, String? createdAt, bool? isExpired});
}

/// @nodoc
class __$$VoucherDataImplCopyWithImpl<$Res>
    extends _$VoucherDataCopyWithImpl<$Res, _$VoucherDataImpl>
    implements _$$VoucherDataImplCopyWith<$Res> {
  __$$VoucherDataImplCopyWithImpl(
      _$VoucherDataImpl _value, $Res Function(_$VoucherDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoucherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(_$VoucherDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$VoucherDataImpl implements _VoucherData {
  const _$VoucherDataImpl(
      {this.id, this.amount, this.createdAt, this.isExpired});

  factory _$VoucherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherDataImplFromJson(json);

  @override
  final String? id;
  @override
  final int? amount;
  @override
  final String? createdAt;
  @override
  final bool? isExpired;

  @override
  String toString() {
    return 'VoucherData(id: $id, amount: $amount, createdAt: $createdAt, isExpired: $isExpired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, createdAt, isExpired);

  /// Create a copy of VoucherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherDataImplCopyWith<_$VoucherDataImpl> get copyWith =>
      __$$VoucherDataImplCopyWithImpl<_$VoucherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherDataImplToJson(
      this,
    );
  }
}

abstract class _VoucherData implements VoucherData {
  const factory _VoucherData(
      {final String? id,
      final int? amount,
      final String? createdAt,
      final bool? isExpired}) = _$VoucherDataImpl;

  factory _VoucherData.fromJson(Map<String, dynamic> json) =
      _$VoucherDataImpl.fromJson;

  @override
  String? get id;
  @override
  int? get amount;
  @override
  String? get createdAt;
  @override
  bool? get isExpired;

  /// Create a copy of VoucherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherDataImplCopyWith<_$VoucherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Filial _$FilialFromJson(Map<String, dynamic> json) {
  return _Filial.fromJson(json);
}

/// @nodoc
mixin _$Filial {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get latitude => throw _privateConstructorUsedError;
  int? get longitude => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Filial to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Filial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilialCopyWith<Filial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilialCopyWith<$Res> {
  factory $FilialCopyWith(Filial value, $Res Function(Filial) then) =
      _$FilialCopyWithImpl<$Res, Filial>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? latitude,
      int? longitude,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$FilialCopyWithImpl<$Res, $Val extends Filial>
    implements $FilialCopyWith<$Res> {
  _$FilialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Filial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilialImplCopyWith<$Res> implements $FilialCopyWith<$Res> {
  factory _$$FilialImplCopyWith(
          _$FilialImpl value, $Res Function(_$FilialImpl) then) =
      __$$FilialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? latitude,
      int? longitude,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$FilialImplCopyWithImpl<$Res>
    extends _$FilialCopyWithImpl<$Res, _$FilialImpl>
    implements _$$FilialImplCopyWith<$Res> {
  __$$FilialImplCopyWithImpl(
      _$FilialImpl _value, $Res Function(_$FilialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Filial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FilialImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$FilialImpl implements _Filial {
  const _$FilialImpl(
      {this.id,
      this.name,
      this.latitude,
      this.longitude,
      this.createdAt,
      this.updatedAt});

  factory _$FilialImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilialImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? latitude;
  @override
  final int? longitude;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Filial(id: $id, name: $name, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, latitude, longitude, createdAt, updatedAt);

  /// Create a copy of Filial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilialImplCopyWith<_$FilialImpl> get copyWith =>
      __$$FilialImplCopyWithImpl<_$FilialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilialImplToJson(
      this,
    );
  }
}

abstract class _Filial implements Filial {
  const factory _Filial(
      {final int? id,
      final String? name,
      final int? latitude,
      final int? longitude,
      final String? createdAt,
      final String? updatedAt}) = _$FilialImpl;

  factory _Filial.fromJson(Map<String, dynamic> json) = _$FilialImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get latitude;
  @override
  int? get longitude;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of Filial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilialImplCopyWith<_$FilialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IsAttendance _$IsAttendanceFromJson(Map<String, dynamic> json) {
  return _IsAttendance.fromJson(json);
}

/// @nodoc
mixin _$IsAttendance {
  String? get date =>
      throw _privateConstructorUsedError; //attendance qilinmagan bolsa is attendance bosh keladi, agar attendance bolgan bolsa sana keladi
  String? get time => throw _privateConstructorUsedError;

  /// Serializes this IsAttendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IsAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsAttendanceCopyWith<IsAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsAttendanceCopyWith<$Res> {
  factory $IsAttendanceCopyWith(
          IsAttendance value, $Res Function(IsAttendance) then) =
      _$IsAttendanceCopyWithImpl<$Res, IsAttendance>;
  @useResult
  $Res call({String? date, String? time});
}

/// @nodoc
class _$IsAttendanceCopyWithImpl<$Res, $Val extends IsAttendance>
    implements $IsAttendanceCopyWith<$Res> {
  _$IsAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsAttendanceImplCopyWith<$Res>
    implements $IsAttendanceCopyWith<$Res> {
  factory _$$IsAttendanceImplCopyWith(
          _$IsAttendanceImpl value, $Res Function(_$IsAttendanceImpl) then) =
      __$$IsAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? time});
}

/// @nodoc
class __$$IsAttendanceImplCopyWithImpl<$Res>
    extends _$IsAttendanceCopyWithImpl<$Res, _$IsAttendanceImpl>
    implements _$$IsAttendanceImplCopyWith<$Res> {
  __$$IsAttendanceImplCopyWithImpl(
      _$IsAttendanceImpl _value, $Res Function(_$IsAttendanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
  }) {
    return _then(_$IsAttendanceImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$IsAttendanceImpl implements _IsAttendance {
  const _$IsAttendanceImpl({this.date, this.time});

  factory _$IsAttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsAttendanceImplFromJson(json);

  @override
  final String? date;
//attendance qilinmagan bolsa is attendance bosh keladi, agar attendance bolgan bolsa sana keladi
  @override
  final String? time;

  @override
  String toString() {
    return 'IsAttendance(date: $date, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsAttendanceImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, time);

  /// Create a copy of IsAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsAttendanceImplCopyWith<_$IsAttendanceImpl> get copyWith =>
      __$$IsAttendanceImplCopyWithImpl<_$IsAttendanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsAttendanceImplToJson(
      this,
    );
  }
}

abstract class _IsAttendance implements IsAttendance {
  const factory _IsAttendance({final String? date, final String? time}) =
      _$IsAttendanceImpl;

  factory _IsAttendance.fromJson(Map<String, dynamic> json) =
      _$IsAttendanceImpl.fromJson;

  @override
  String?
      get date; //attendance qilinmagan bolsa is attendance bosh keladi, agar attendance bolgan bolsa sana keladi
  @override
  String? get time;

  /// Create a copy of IsAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsAttendanceImplCopyWith<_$IsAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketingChannel _$MarketingChannelFromJson(Map<String, dynamic> json) {
  return _MarketingChannel.fromJson(json);
}

/// @nodoc
mixin _$MarketingChannel {
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get filial => throw _privateConstructorUsedError;

  /// Serializes this MarketingChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketingChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketingChannelCopyWith<MarketingChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingChannelCopyWith<$Res> {
  factory $MarketingChannelCopyWith(
          MarketingChannel value, $Res Function(MarketingChannel) then) =
      _$MarketingChannelCopyWithImpl<$Res, MarketingChannel>;
  @useResult
  $Res call(
      {String? id,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? name,
      String? type,
      int? filial});
}

/// @nodoc
class _$MarketingChannelCopyWithImpl<$Res, $Val extends MarketingChannel>
    implements $MarketingChannelCopyWith<$Res> {
  _$MarketingChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketingChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? filial = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketingChannelImplCopyWith<$Res>
    implements $MarketingChannelCopyWith<$Res> {
  factory _$$MarketingChannelImplCopyWith(_$MarketingChannelImpl value,
          $Res Function(_$MarketingChannelImpl) then) =
      __$$MarketingChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? name,
      String? type,
      int? filial});
}

/// @nodoc
class __$$MarketingChannelImplCopyWithImpl<$Res>
    extends _$MarketingChannelCopyWithImpl<$Res, _$MarketingChannelImpl>
    implements _$$MarketingChannelImplCopyWith<$Res> {
  __$$MarketingChannelImplCopyWithImpl(_$MarketingChannelImpl _value,
      $Res Function(_$MarketingChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketingChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? filial = freezed,
  }) {
    return _then(_$MarketingChannelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$MarketingChannelImpl implements _MarketingChannel {
  const _$MarketingChannelImpl(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.type,
      this.filial});

  factory _$MarketingChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketingChannelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deletedAt;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final int? filial;

  @override
  String toString() {
    return 'MarketingChannel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, name: $name, type: $type, filial: $filial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.filial, filial) || other.filial == filial));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, deletedAt, name, type, filial);

  /// Create a copy of MarketingChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingChannelImplCopyWith<_$MarketingChannelImpl> get copyWith =>
      __$$MarketingChannelImplCopyWithImpl<_$MarketingChannelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketingChannelImplToJson(
      this,
    );
  }
}

abstract class _MarketingChannel implements MarketingChannel {
  const factory _MarketingChannel(
      {final String? id,
      final String? createdAt,
      final String? updatedAt,
      final String? deletedAt,
      final String? name,
      final String? type,
      final int? filial}) = _$MarketingChannelImpl;

  factory _MarketingChannel.fromJson(Map<String, dynamic> json) =
      _$MarketingChannelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get deletedAt;
  @override
  String? get name;
  @override
  String? get type;
  @override
  int? get filial;

  /// Create a copy of MarketingChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketingChannelImplCopyWith<_$MarketingChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CallOperator _$CallOperatorFromJson(Map<String, dynamic> json) {
  return _CallOperator.fromJson(json);
}

/// @nodoc
mixin _$CallOperator {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  dynamic get firstName => throw _privateConstructorUsedError;
  dynamic get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  dynamic get photo => throw _privateConstructorUsedError;
  List<int>? get filial => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  double? get ball => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;
  String? get enter => throw _privateConstructorUsedError;
  String? get leave => throw _privateConstructorUsedError;
  dynamic get dateOfBirth => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  List<Compensation>? get compensation => throw _privateConstructorUsedError;
  List<BonusData>? get bonus => throw _privateConstructorUsedError;

  /// Serializes this CallOperator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CallOperator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallOperatorCopyWith<CallOperator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallOperatorCopyWith<$Res> {
  factory $CallOperatorCopyWith(
          CallOperator value, $Res Function(CallOperator) then) =
      _$CallOperatorCopyWithImpl<$Res, CallOperator>;
  @useResult
  $Res call(
      {String? id,
      String? fullName,
      dynamic firstName,
      dynamic lastName,
      String? phone,
      String? role,
      dynamic photo,
      List<int>? filial,
      String? balance,
      double? ball,
      double? salary,
      String? enter,
      String? leave,
      dynamic dateOfBirth,
      String? createdAt,
      String? updatedAt,
      List<Compensation>? compensation,
      List<BonusData>? bonus});
}

/// @nodoc
class _$CallOperatorCopyWithImpl<$Res, $Val extends CallOperator>
    implements $CallOperatorCopyWith<$Res> {
  _$CallOperatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallOperator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? photo = freezed,
    Object? filial = freezed,
    Object? balance = freezed,
    Object? ball = freezed,
    Object? salary = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? compensation = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as String?,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      compensation: freezed == compensation
          ? _value.compensation
          : compensation // ignore: cast_nullable_to_non_nullable
              as List<Compensation>?,
      bonus: freezed == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallOperatorImplCopyWith<$Res>
    implements $CallOperatorCopyWith<$Res> {
  factory _$$CallOperatorImplCopyWith(
          _$CallOperatorImpl value, $Res Function(_$CallOperatorImpl) then) =
      __$$CallOperatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? fullName,
      dynamic firstName,
      dynamic lastName,
      String? phone,
      String? role,
      dynamic photo,
      List<int>? filial,
      String? balance,
      double? ball,
      double? salary,
      String? enter,
      String? leave,
      dynamic dateOfBirth,
      String? createdAt,
      String? updatedAt,
      List<Compensation>? compensation,
      List<BonusData>? bonus});
}

/// @nodoc
class __$$CallOperatorImplCopyWithImpl<$Res>
    extends _$CallOperatorCopyWithImpl<$Res, _$CallOperatorImpl>
    implements _$$CallOperatorImplCopyWith<$Res> {
  __$$CallOperatorImplCopyWithImpl(
      _$CallOperatorImpl _value, $Res Function(_$CallOperatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallOperator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? photo = freezed,
    Object? filial = freezed,
    Object? balance = freezed,
    Object? ball = freezed,
    Object? salary = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? compensation = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_$CallOperatorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filial: freezed == filial
          ? _value._filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as String?,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      compensation: freezed == compensation
          ? _value._compensation
          : compensation // ignore: cast_nullable_to_non_nullable
              as List<Compensation>?,
      bonus: freezed == bonus
          ? _value._bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as List<BonusData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$CallOperatorImpl implements _CallOperator {
  const _$CallOperatorImpl(
      {this.id,
      this.fullName,
      this.firstName,
      this.lastName,
      this.phone,
      this.role,
      this.photo,
      final List<int>? filial,
      this.balance,
      this.ball,
      this.salary,
      this.enter,
      this.leave,
      this.dateOfBirth,
      this.createdAt,
      this.updatedAt,
      final List<Compensation>? compensation,
      final List<BonusData>? bonus})
      : _filial = filial,
        _compensation = compensation,
        _bonus = bonus;

  factory _$CallOperatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallOperatorImplFromJson(json);

  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final dynamic firstName;
  @override
  final dynamic lastName;
  @override
  final String? phone;
  @override
  final String? role;
  @override
  final dynamic photo;
  final List<int>? _filial;
  @override
  List<int>? get filial {
    final value = _filial;
    if (value == null) return null;
    if (_filial is EqualUnmodifiableListView) return _filial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? balance;
  @override
  final double? ball;
  @override
  final double? salary;
  @override
  final String? enter;
  @override
  final String? leave;
  @override
  final dynamic dateOfBirth;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  final List<Compensation>? _compensation;
  @override
  List<Compensation>? get compensation {
    final value = _compensation;
    if (value == null) return null;
    if (_compensation is EqualUnmodifiableListView) return _compensation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BonusData>? _bonus;
  @override
  List<BonusData>? get bonus {
    final value = _bonus;
    if (value == null) return null;
    if (_bonus is EqualUnmodifiableListView) return _bonus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CallOperator(id: $id, fullName: $fullName, firstName: $firstName, lastName: $lastName, phone: $phone, role: $role, photo: $photo, filial: $filial, balance: $balance, ball: $ball, salary: $salary, enter: $enter, leave: $leave, dateOfBirth: $dateOfBirth, createdAt: $createdAt, updatedAt: $updatedAt, compensation: $compensation, bonus: $bonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallOperatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other._filial, _filial) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.enter, enter) || other.enter == enter) &&
            (identical(other.leave, leave) || other.leave == leave) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._compensation, _compensation) &&
            const DeepCollectionEquality().equals(other._bonus, _bonus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      phone,
      role,
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(_filial),
      balance,
      ball,
      salary,
      enter,
      leave,
      const DeepCollectionEquality().hash(dateOfBirth),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_compensation),
      const DeepCollectionEquality().hash(_bonus));

  /// Create a copy of CallOperator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallOperatorImplCopyWith<_$CallOperatorImpl> get copyWith =>
      __$$CallOperatorImplCopyWithImpl<_$CallOperatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallOperatorImplToJson(
      this,
    );
  }
}

abstract class _CallOperator implements CallOperator {
  const factory _CallOperator(
      {final String? id,
      final String? fullName,
      final dynamic firstName,
      final dynamic lastName,
      final String? phone,
      final String? role,
      final dynamic photo,
      final List<int>? filial,
      final String? balance,
      final double? ball,
      final double? salary,
      final String? enter,
      final String? leave,
      final dynamic dateOfBirth,
      final String? createdAt,
      final String? updatedAt,
      final List<Compensation>? compensation,
      final List<BonusData>? bonus}) = _$CallOperatorImpl;

  factory _CallOperator.fromJson(Map<String, dynamic> json) =
      _$CallOperatorImpl.fromJson;

  @override
  String? get id;
  @override
  String? get fullName;
  @override
  dynamic get firstName;
  @override
  dynamic get lastName;
  @override
  String? get phone;
  @override
  String? get role;
  @override
  dynamic get photo;
  @override
  List<int>? get filial;
  @override
  String? get balance;
  @override
  double? get ball;
  @override
  double? get salary;
  @override
  String? get enter;
  @override
  String? get leave;
  @override
  dynamic get dateOfBirth;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  List<Compensation>? get compensation;
  @override
  List<BonusData>? get bonus;

  /// Create a copy of CallOperator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallOperatorImplCopyWith<_$CallOperatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Compensation _$CompensationFromJson(Map<String, dynamic> json) {
  return _Compensation.fromJson(json);
}

/// @nodoc
mixin _$Compensation {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;

  /// Serializes this Compensation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Compensation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompensationCopyWith<Compensation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompensationCopyWith<$Res> {
  factory $CompensationCopyWith(
          Compensation value, $Res Function(Compensation) then) =
      _$CompensationCopyWithImpl<$Res, Compensation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'user') String? user,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class _$CompensationCopyWithImpl<$Res, $Val extends Compensation>
    implements $CompensationCopyWith<$Res> {
  _$CompensationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Compensation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? amount = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompensationImplCopyWith<$Res>
    implements $CompensationCopyWith<$Res> {
  factory _$$CompensationImplCopyWith(
          _$CompensationImpl value, $Res Function(_$CompensationImpl) then) =
      __$$CompensationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'user') String? user,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class __$$CompensationImplCopyWithImpl<$Res>
    extends _$CompensationCopyWithImpl<$Res, _$CompensationImpl>
    implements _$$CompensationImplCopyWith<$Res> {
  __$$CompensationImplCopyWithImpl(
      _$CompensationImpl _value, $Res Function(_$CompensationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Compensation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$CompensationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompensationImpl implements _Compensation {
  const _$CompensationImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'amount') this.amount});

  factory _$CompensationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompensationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'user')
  final String? user;
  @override
  @JsonKey(name: 'amount')
  final String? amount;

  @override
  String toString() {
    return 'Compensation(id: $id, name: $name, user: $user, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompensationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, user, amount);

  /// Create a copy of Compensation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompensationImplCopyWith<_$CompensationImpl> get copyWith =>
      __$$CompensationImplCopyWithImpl<_$CompensationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompensationImplToJson(
      this,
    );
  }
}

abstract class _Compensation implements Compensation {
  const factory _Compensation(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'user') final String? user,
      @JsonKey(name: 'amount') final String? amount}) = _$CompensationImpl;

  factory _Compensation.fromJson(Map<String, dynamic> json) =
      _$CompensationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'user')
  String? get user;
  @override
  @JsonKey(name: 'amount')
  String? get amount;

  /// Create a copy of Compensation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompensationImplCopyWith<_$CompensationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BonusData _$BonusDataFromJson(Map<String, dynamic> json) {
  return _BonusData.fromJson(json);
}

/// @nodoc
mixin _$BonusData {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;

  /// Serializes this BonusData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BonusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BonusDataCopyWith<BonusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusDataCopyWith<$Res> {
  factory $BonusDataCopyWith(BonusData value, $Res Function(BonusData) then) =
      _$BonusDataCopyWithImpl<$Res, BonusData>;
  @useResult
  $Res call({String? id, String? name, double? amount});
}

/// @nodoc
class _$BonusDataCopyWithImpl<$Res, $Val extends BonusData>
    implements $BonusDataCopyWith<$Res> {
  _$BonusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BonusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BonusDataImplCopyWith<$Res>
    implements $BonusDataCopyWith<$Res> {
  factory _$$BonusDataImplCopyWith(
          _$BonusDataImpl value, $Res Function(_$BonusDataImpl) then) =
      __$$BonusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, double? amount});
}

/// @nodoc
class __$$BonusDataImplCopyWithImpl<$Res>
    extends _$BonusDataCopyWithImpl<$Res, _$BonusDataImpl>
    implements _$$BonusDataImplCopyWith<$Res> {
  __$$BonusDataImplCopyWithImpl(
      _$BonusDataImpl _value, $Res Function(_$BonusDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BonusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$BonusDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BonusDataImpl implements _BonusData {
  const _$BonusDataImpl({this.id, this.name, this.amount});

  factory _$BonusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BonusDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final double? amount;

  @override
  String toString() {
    return 'BonusData(id: $id, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BonusDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount);

  /// Create a copy of BonusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BonusDataImplCopyWith<_$BonusDataImpl> get copyWith =>
      __$$BonusDataImplCopyWithImpl<_$BonusDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BonusDataImplToJson(
      this,
    );
  }
}

abstract class _BonusData implements BonusData {
  const factory _BonusData(
      {final String? id,
      final String? name,
      final double? amount}) = _$BonusDataImpl;

  factory _BonusData.fromJson(Map<String, dynamic> json) =
      _$BonusDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  double? get amount;

  /// Create a copy of BonusData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BonusDataImplCopyWith<_$BonusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileData _$FileDataFromJson(Map<String, dynamic> json) {
  return _FileData.fromJson(json);
}

/// @nodoc
mixin _$FileData {
  String? get id => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;

  /// Serializes this FileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileDataCopyWith<FileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDataCopyWith<$Res> {
  factory $FileDataCopyWith(FileData value, $Res Function(FileData) then) =
      _$FileDataCopyWithImpl<$Res, FileData>;
  @useResult
  $Res call({String? id, String? file});
}

/// @nodoc
class _$FileDataCopyWithImpl<$Res, $Val extends FileData>
    implements $FileDataCopyWith<$Res> {
  _$FileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileDataImplCopyWith<$Res>
    implements $FileDataCopyWith<$Res> {
  factory _$$FileDataImplCopyWith(
          _$FileDataImpl value, $Res Function(_$FileDataImpl) then) =
      __$$FileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? file});
}

/// @nodoc
class __$$FileDataImplCopyWithImpl<$Res>
    extends _$FileDataCopyWithImpl<$Res, _$FileDataImpl>
    implements _$$FileDataImplCopyWith<$Res> {
  __$$FileDataImplCopyWithImpl(
      _$FileDataImpl _value, $Res Function(_$FileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
  }) {
    return _then(_$FileDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$FileDataImpl implements _FileData {
  const _$FileDataImpl({this.id, this.file});

  factory _$FileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? file;

  @override
  String toString() {
    return 'FileData(id: $id, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, file);

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDataImplCopyWith<_$FileDataImpl> get copyWith =>
      __$$FileDataImplCopyWithImpl<_$FileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDataImplToJson(
      this,
    );
  }
}

abstract class _FileData implements FileData {
  const factory _FileData({final String? id, final String? file}) =
      _$FileDataImpl;

  factory _FileData.fromJson(Map<String, dynamic> json) =
      _$FileDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get file;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileDataImplCopyWith<_$FileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseData _$CourseDataFromJson(Map<String, dynamic> json) {
  return _CourseData.fromJson(json);
}

/// @nodoc
mixin _$CourseData {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get level => throw _privateConstructorUsedError;
  int? get filial => throw _privateConstructorUsedError;
  int? get lessonsNumber => throw _privateConstructorUsedError;
  List<dynamic>? get theme => throw _privateConstructorUsedError;
  SubjectData? get subject => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this CourseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDataCopyWith<CourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataCopyWith<$Res> {
  factory $CourseDataCopyWith(
          CourseData value, $Res Function(CourseData) then) =
      _$CourseDataCopyWithImpl<$Res, CourseData>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      dynamic level,
      int? filial,
      int? lessonsNumber,
      List<dynamic>? theme,
      SubjectData? subject,
      String? status});

  $SubjectDataCopyWith<$Res>? get subject;
}

/// @nodoc
class _$CourseDataCopyWithImpl<$Res, $Val extends CourseData>
    implements $CourseDataCopyWith<$Res> {
  _$CourseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? filial = freezed,
    Object? lessonsNumber = freezed,
    Object? theme = freezed,
    Object? subject = freezed,
    Object? status = freezed,
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
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonsNumber: freezed == lessonsNumber
          ? _value.lessonsNumber
          : lessonsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CourseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectDataCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $SubjectDataCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseDataImplCopyWith<$Res>
    implements $CourseDataCopyWith<$Res> {
  factory _$$CourseDataImplCopyWith(
          _$CourseDataImpl value, $Res Function(_$CourseDataImpl) then) =
      __$$CourseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      dynamic level,
      int? filial,
      int? lessonsNumber,
      List<dynamic>? theme,
      SubjectData? subject,
      String? status});

  @override
  $SubjectDataCopyWith<$Res>? get subject;
}

/// @nodoc
class __$$CourseDataImplCopyWithImpl<$Res>
    extends _$CourseDataCopyWithImpl<$Res, _$CourseDataImpl>
    implements _$$CourseDataImplCopyWith<$Res> {
  __$$CourseDataImplCopyWithImpl(
      _$CourseDataImpl _value, $Res Function(_$CourseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
    Object? filial = freezed,
    Object? lessonsNumber = freezed,
    Object? theme = freezed,
    Object? subject = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CourseDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonsNumber: freezed == lessonsNumber
          ? _value.lessonsNumber
          : lessonsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      theme: freezed == theme
          ? _value._theme
          : theme // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$CourseDataImpl implements _CourseData {
  const _$CourseDataImpl(
      {this.id,
      this.name,
      this.level,
      this.filial,
      this.lessonsNumber,
      final List<dynamic>? theme,
      this.subject,
      this.status})
      : _theme = theme;

  factory _$CourseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final dynamic level;
  @override
  final int? filial;
  @override
  final int? lessonsNumber;
  final List<dynamic>? _theme;
  @override
  List<dynamic>? get theme {
    final value = _theme;
    if (value == null) return null;
    if (_theme is EqualUnmodifiableListView) return _theme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubjectData? subject;
  @override
  final String? status;

  @override
  String toString() {
    return 'CourseData(id: $id, name: $name, level: $level, filial: $filial, lessonsNumber: $lessonsNumber, theme: $theme, subject: $subject, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            (identical(other.filial, filial) || other.filial == filial) &&
            (identical(other.lessonsNumber, lessonsNumber) ||
                other.lessonsNumber == lessonsNumber) &&
            const DeepCollectionEquality().equals(other._theme, _theme) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(level),
      filial,
      lessonsNumber,
      const DeepCollectionEquality().hash(_theme),
      subject,
      status);

  /// Create a copy of CourseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      __$$CourseDataImplCopyWithImpl<_$CourseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDataImplToJson(
      this,
    );
  }
}

abstract class _CourseData implements CourseData {
  const factory _CourseData(
      {final String? id,
      final String? name,
      final dynamic level,
      final int? filial,
      final int? lessonsNumber,
      final List<dynamic>? theme,
      final SubjectData? subject,
      final String? status}) = _$CourseDataImpl;

  factory _CourseData.fromJson(Map<String, dynamic> json) =
      _$CourseDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  dynamic get level;
  @override
  int? get filial;
  @override
  int? get lessonsNumber;
  @override
  List<dynamic>? get theme;
  @override
  SubjectData? get subject;
  @override
  String? get status;

  /// Create a copy of CourseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectData _$SubjectDataFromJson(Map<String, dynamic> json) {
  return _SubjectData.fromJson(json);
}

/// @nodoc
mixin _$SubjectData {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError;
  int? get course => throw _privateConstructorUsedError;
  bool? get hasLevel =>
      throw _privateConstructorUsedError; // List<int>? allThemes,
  int? get allThemes => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this SubjectData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectDataCopyWith<SubjectData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDataCopyWith<$Res> {
  factory $SubjectDataCopyWith(
          SubjectData value, $Res Function(SubjectData) then) =
      _$SubjectDataCopyWithImpl<$Res, SubjectData>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      Photo? photo,
      int? course,
      bool? hasLevel,
      int? allThemes,
      String? label});

  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$SubjectDataCopyWithImpl<$Res, $Val extends SubjectData>
    implements $SubjectDataCopyWith<$Res> {
  _$SubjectDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? course = freezed,
    Object? hasLevel = freezed,
    Object? allThemes = freezed,
    Object? label = freezed,
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
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      hasLevel: freezed == hasLevel
          ? _value.hasLevel
          : hasLevel // ignore: cast_nullable_to_non_nullable
              as bool?,
      allThemes: freezed == allThemes
          ? _value.allThemes
          : allThemes // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SubjectData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectDataImplCopyWith<$Res>
    implements $SubjectDataCopyWith<$Res> {
  factory _$$SubjectDataImplCopyWith(
          _$SubjectDataImpl value, $Res Function(_$SubjectDataImpl) then) =
      __$$SubjectDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      Photo? photo,
      int? course,
      bool? hasLevel,
      int? allThemes,
      String? label});

  @override
  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$SubjectDataImplCopyWithImpl<$Res>
    extends _$SubjectDataCopyWithImpl<$Res, _$SubjectDataImpl>
    implements _$$SubjectDataImplCopyWith<$Res> {
  __$$SubjectDataImplCopyWithImpl(
      _$SubjectDataImpl _value, $Res Function(_$SubjectDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? course = freezed,
    Object? hasLevel = freezed,
    Object? allThemes = freezed,
    Object? label = freezed,
  }) {
    return _then(_$SubjectDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      hasLevel: freezed == hasLevel
          ? _value.hasLevel
          : hasLevel // ignore: cast_nullable_to_non_nullable
              as bool?,
      allThemes: freezed == allThemes
          ? _value.allThemes
          : allThemes // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SubjectDataImpl implements _SubjectData {
  const _$SubjectDataImpl(
      {this.id,
      this.name,
      this.photo,
      this.course,
      this.hasLevel,
      this.allThemes,
      this.label});

  factory _$SubjectDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final Photo? photo;
  @override
  final int? course;
  @override
  final bool? hasLevel;
// List<int>? allThemes,
  @override
  final int? allThemes;
  @override
  final String? label;

  @override
  String toString() {
    return 'SubjectData(id: $id, name: $name, photo: $photo, course: $course, hasLevel: $hasLevel, allThemes: $allThemes, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.hasLevel, hasLevel) ||
                other.hasLevel == hasLevel) &&
            (identical(other.allThemes, allThemes) ||
                other.allThemes == allThemes) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, photo, course, hasLevel, allThemes, label);

  /// Create a copy of SubjectData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectDataImplCopyWith<_$SubjectDataImpl> get copyWith =>
      __$$SubjectDataImplCopyWithImpl<_$SubjectDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectDataImplToJson(
      this,
    );
  }
}

abstract class _SubjectData implements SubjectData {
  const factory _SubjectData(
      {final String? id,
      final String? name,
      final Photo? photo,
      final int? course,
      final bool? hasLevel,
      final int? allThemes,
      final String? label}) = _$SubjectDataImpl;

  factory _SubjectData.fromJson(Map<String, dynamic> json) =
      _$SubjectDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  Photo? get photo;
  @override
  int? get course;
  @override
  bool? get hasLevel; // List<int>? allThemes,
  @override
  int? get allThemes;
  @override
  String? get label;

  /// Create a copy of SubjectData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectDataImplCopyWith<_$SubjectDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupData _$GroupDataFromJson(Map<String, dynamic> json) {
  return _GroupData.fromJson(json);
}

/// @nodoc
mixin _$GroupData {
  @JsonKey(name: 'group__name')
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__status')
  String? get groupStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__started_at')
  String? get groupStartedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__ended_at')
  String? get groupEndedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__teacher__first_name')
  String? get teacherFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__teacher__last_name')
  String? get teacherLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__course__name')
  String? get groupCourseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'group__course__level__name')
  String? get groupCourseLevelName => throw _privateConstructorUsedError;

  /// Serializes this GroupData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupDataCopyWith<GroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDataCopyWith<$Res> {
  factory $GroupDataCopyWith(GroupData value, $Res Function(GroupData) then) =
      _$GroupDataCopyWithImpl<$Res, GroupData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group__name') String? groupName,
      @JsonKey(name: 'group__status') String? groupStatus,
      @JsonKey(name: 'group__started_at') String? groupStartedAt,
      @JsonKey(name: 'group__ended_at') String? groupEndedAt,
      @JsonKey(name: 'group__teacher__first_name') String? teacherFirstName,
      @JsonKey(name: 'group__teacher__last_name') String? teacherLastName,
      @JsonKey(name: 'group__course__name') String? groupCourseName,
      @JsonKey(name: 'group__course__level__name')
      String? groupCourseLevelName});
}

/// @nodoc
class _$GroupDataCopyWithImpl<$Res, $Val extends GroupData>
    implements $GroupDataCopyWith<$Res> {
  _$GroupDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = freezed,
    Object? groupStatus = freezed,
    Object? groupStartedAt = freezed,
    Object? groupEndedAt = freezed,
    Object? teacherFirstName = freezed,
    Object? teacherLastName = freezed,
    Object? groupCourseName = freezed,
    Object? groupCourseLevelName = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupStatus: freezed == groupStatus
          ? _value.groupStatus
          : groupStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      groupStartedAt: freezed == groupStartedAt
          ? _value.groupStartedAt
          : groupStartedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      groupEndedAt: freezed == groupEndedAt
          ? _value.groupEndedAt
          : groupEndedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherFirstName: freezed == teacherFirstName
          ? _value.teacherFirstName
          : teacherFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherLastName: freezed == teacherLastName
          ? _value.teacherLastName
          : teacherLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCourseName: freezed == groupCourseName
          ? _value.groupCourseName
          : groupCourseName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCourseLevelName: freezed == groupCourseLevelName
          ? _value.groupCourseLevelName
          : groupCourseLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupDataImplCopyWith<$Res>
    implements $GroupDataCopyWith<$Res> {
  factory _$$GroupDataImplCopyWith(
          _$GroupDataImpl value, $Res Function(_$GroupDataImpl) then) =
      __$$GroupDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group__name') String? groupName,
      @JsonKey(name: 'group__status') String? groupStatus,
      @JsonKey(name: 'group__started_at') String? groupStartedAt,
      @JsonKey(name: 'group__ended_at') String? groupEndedAt,
      @JsonKey(name: 'group__teacher__first_name') String? teacherFirstName,
      @JsonKey(name: 'group__teacher__last_name') String? teacherLastName,
      @JsonKey(name: 'group__course__name') String? groupCourseName,
      @JsonKey(name: 'group__course__level__name')
      String? groupCourseLevelName});
}

/// @nodoc
class __$$GroupDataImplCopyWithImpl<$Res>
    extends _$GroupDataCopyWithImpl<$Res, _$GroupDataImpl>
    implements _$$GroupDataImplCopyWith<$Res> {
  __$$GroupDataImplCopyWithImpl(
      _$GroupDataImpl _value, $Res Function(_$GroupDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = freezed,
    Object? groupStatus = freezed,
    Object? groupStartedAt = freezed,
    Object? groupEndedAt = freezed,
    Object? teacherFirstName = freezed,
    Object? teacherLastName = freezed,
    Object? groupCourseName = freezed,
    Object? groupCourseLevelName = freezed,
  }) {
    return _then(_$GroupDataImpl(
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupStatus: freezed == groupStatus
          ? _value.groupStatus
          : groupStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      groupStartedAt: freezed == groupStartedAt
          ? _value.groupStartedAt
          : groupStartedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      groupEndedAt: freezed == groupEndedAt
          ? _value.groupEndedAt
          : groupEndedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherFirstName: freezed == teacherFirstName
          ? _value.teacherFirstName
          : teacherFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherLastName: freezed == teacherLastName
          ? _value.teacherLastName
          : teacherLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCourseName: freezed == groupCourseName
          ? _value.groupCourseName
          : groupCourseName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCourseLevelName: freezed == groupCourseLevelName
          ? _value.groupCourseLevelName
          : groupCourseLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupDataImpl implements _GroupData {
  const _$GroupDataImpl(
      {@JsonKey(name: 'group__name') this.groupName,
      @JsonKey(name: 'group__status') this.groupStatus,
      @JsonKey(name: 'group__started_at') this.groupStartedAt,
      @JsonKey(name: 'group__ended_at') this.groupEndedAt,
      @JsonKey(name: 'group__teacher__first_name') this.teacherFirstName,
      @JsonKey(name: 'group__teacher__last_name') this.teacherLastName,
      @JsonKey(name: 'group__course__name') this.groupCourseName,
      @JsonKey(name: 'group__course__level__name') this.groupCourseLevelName});

  factory _$GroupDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDataImplFromJson(json);

  @override
  @JsonKey(name: 'group__name')
  final String? groupName;
  @override
  @JsonKey(name: 'group__status')
  final String? groupStatus;
  @override
  @JsonKey(name: 'group__started_at')
  final String? groupStartedAt;
  @override
  @JsonKey(name: 'group__ended_at')
  final String? groupEndedAt;
  @override
  @JsonKey(name: 'group__teacher__first_name')
  final String? teacherFirstName;
  @override
  @JsonKey(name: 'group__teacher__last_name')
  final String? teacherLastName;
  @override
  @JsonKey(name: 'group__course__name')
  final String? groupCourseName;
  @override
  @JsonKey(name: 'group__course__level__name')
  final String? groupCourseLevelName;

  @override
  String toString() {
    return 'GroupData(groupName: $groupName, groupStatus: $groupStatus, groupStartedAt: $groupStartedAt, groupEndedAt: $groupEndedAt, teacherFirstName: $teacherFirstName, teacherLastName: $teacherLastName, groupCourseName: $groupCourseName, groupCourseLevelName: $groupCourseLevelName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDataImpl &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupStatus, groupStatus) ||
                other.groupStatus == groupStatus) &&
            (identical(other.groupStartedAt, groupStartedAt) ||
                other.groupStartedAt == groupStartedAt) &&
            (identical(other.groupEndedAt, groupEndedAt) ||
                other.groupEndedAt == groupEndedAt) &&
            (identical(other.teacherFirstName, teacherFirstName) ||
                other.teacherFirstName == teacherFirstName) &&
            (identical(other.teacherLastName, teacherLastName) ||
                other.teacherLastName == teacherLastName) &&
            (identical(other.groupCourseName, groupCourseName) ||
                other.groupCourseName == groupCourseName) &&
            (identical(other.groupCourseLevelName, groupCourseLevelName) ||
                other.groupCourseLevelName == groupCourseLevelName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupName,
      groupStatus,
      groupStartedAt,
      groupEndedAt,
      teacherFirstName,
      teacherLastName,
      groupCourseName,
      groupCourseLevelName);

  /// Create a copy of GroupData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      __$$GroupDataImplCopyWithImpl<_$GroupDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDataImplToJson(
      this,
    );
  }
}

abstract class _GroupData implements GroupData {
  const factory _GroupData(
      {@JsonKey(name: 'group__name') final String? groupName,
      @JsonKey(name: 'group__status') final String? groupStatus,
      @JsonKey(name: 'group__started_at') final String? groupStartedAt,
      @JsonKey(name: 'group__ended_at') final String? groupEndedAt,
      @JsonKey(name: 'group__teacher__first_name')
      final String? teacherFirstName,
      @JsonKey(name: 'group__teacher__last_name') final String? teacherLastName,
      @JsonKey(name: 'group__course__name') final String? groupCourseName,
      @JsonKey(name: 'group__course__level__name')
      final String? groupCourseLevelName}) = _$GroupDataImpl;

  factory _GroupData.fromJson(Map<String, dynamic> json) =
      _$GroupDataImpl.fromJson;

  @override
  @JsonKey(name: 'group__name')
  String? get groupName;
  @override
  @JsonKey(name: 'group__status')
  String? get groupStatus;
  @override
  @JsonKey(name: 'group__started_at')
  String? get groupStartedAt;
  @override
  @JsonKey(name: 'group__ended_at')
  String? get groupEndedAt;
  @override
  @JsonKey(name: 'group__teacher__first_name')
  String? get teacherFirstName;
  @override
  @JsonKey(name: 'group__teacher__last_name')
  String? get teacherLastName;
  @override
  @JsonKey(name: 'group__course__name')
  String? get groupCourseName;
  @override
  @JsonKey(name: 'group__course__level__name')
  String? get groupCourseLevelName;

  /// Create a copy of GroupData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return _Teacher.fromJson(json);
}

/// @nodoc
mixin _$Teacher {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  /// Serializes this Teacher to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
  $Res call({String? id, String? fullName});
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherImplCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$TeacherImplCopyWith(
          _$TeacherImpl value, $Res Function(_$TeacherImpl) then) =
      __$$TeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? fullName});
}

/// @nodoc
class __$$TeacherImplCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$TeacherImpl>
    implements _$$TeacherImplCopyWith<$Res> {
  __$$TeacherImplCopyWithImpl(
      _$TeacherImpl _value, $Res Function(_$TeacherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_$TeacherImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TeacherImpl implements _Teacher {
  const _$TeacherImpl({this.id, this.fullName});

  factory _$TeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherImplFromJson(json);

  @override
  final String? id;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'Teacher(id: $id, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      __$$TeacherImplCopyWithImpl<_$TeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherImplToJson(
      this,
    );
  }
}

abstract class _Teacher implements Teacher {
  const factory _Teacher({final String? id, final String? fullName}) =
      _$TeacherImpl;

  factory _Teacher.fromJson(Map<String, dynamic> json) = _$TeacherImpl.fromJson;

  @override
  String? get id;
  @override
  String? get fullName;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PagesData _$PagesDataFromJson(Map<String, dynamic> json) {
  return _PagesData.fromJson(json);
}

/// @nodoc
mixin _$PagesData {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  bool? get isEditable => throw _privateConstructorUsedError;
  bool? get isReadable => throw _privateConstructorUsedError;
  bool? get isParent => throw _privateConstructorUsedError;

  /// Serializes this PagesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PagesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagesDataCopyWith<PagesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagesDataCopyWith<$Res> {
  factory $PagesDataCopyWith(PagesData value, $Res Function(PagesData) then) =
      _$PagesDataCopyWithImpl<$Res, PagesData>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? user,
      bool? isEditable,
      bool? isReadable,
      bool? isParent});
}

/// @nodoc
class _$PagesDataCopyWithImpl<$Res, $Val extends PagesData>
    implements $PagesDataCopyWith<$Res> {
  _$PagesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? isEditable = freezed,
    Object? isReadable = freezed,
    Object? isParent = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      isEditable: freezed == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReadable: freezed == isReadable
          ? _value.isReadable
          : isReadable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isParent: freezed == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagesDataImplCopyWith<$Res>
    implements $PagesDataCopyWith<$Res> {
  factory _$$PagesDataImplCopyWith(
          _$PagesDataImpl value, $Res Function(_$PagesDataImpl) then) =
      __$$PagesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? user,
      bool? isEditable,
      bool? isReadable,
      bool? isParent});
}

/// @nodoc
class __$$PagesDataImplCopyWithImpl<$Res>
    extends _$PagesDataCopyWithImpl<$Res, _$PagesDataImpl>
    implements _$$PagesDataImplCopyWith<$Res> {
  __$$PagesDataImplCopyWithImpl(
      _$PagesDataImpl _value, $Res Function(_$PagesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PagesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? isEditable = freezed,
    Object? isReadable = freezed,
    Object? isParent = freezed,
  }) {
    return _then(_$PagesDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      isEditable: freezed == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReadable: freezed == isReadable
          ? _value.isReadable
          : isReadable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isParent: freezed == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$PagesDataImpl implements _PagesData {
  const _$PagesDataImpl(
      {this.id,
      this.name,
      this.user,
      this.isEditable,
      this.isReadable,
      this.isParent});

  factory _$PagesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagesDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? user;
  @override
  final bool? isEditable;
  @override
  final bool? isReadable;
  @override
  final bool? isParent;

  @override
  String toString() {
    return 'PagesData(id: $id, name: $name, user: $user, isEditable: $isEditable, isReadable: $isReadable, isParent: $isParent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable) &&
            (identical(other.isReadable, isReadable) ||
                other.isReadable == isReadable) &&
            (identical(other.isParent, isParent) ||
                other.isParent == isParent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, user, isEditable, isReadable, isParent);

  /// Create a copy of PagesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagesDataImplCopyWith<_$PagesDataImpl> get copyWith =>
      __$$PagesDataImplCopyWithImpl<_$PagesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagesDataImplToJson(
      this,
    );
  }
}

abstract class _PagesData implements PagesData {
  const factory _PagesData(
      {final String? id,
      final String? name,
      final String? user,
      final bool? isEditable,
      final bool? isReadable,
      final bool? isParent}) = _$PagesDataImpl;

  factory _PagesData.fromJson(Map<String, dynamic> json) =
      _$PagesDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get user;
  @override
  bool? get isEditable;
  @override
  bool? get isReadable;
  @override
  bool? get isParent;

  /// Create a copy of PagesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagesDataImplCopyWith<_$PagesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecondaryGroupMin _$SecondaryGroupMinFromJson(Map<String, dynamic> json) {
  return _SecondaryGroupMin.fromJson(json);
}

/// @nodoc
mixin _$SecondaryGroupMin {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SecondaryGroupMin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecondaryGroupMin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecondaryGroupMinCopyWith<SecondaryGroupMin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryGroupMinCopyWith<$Res> {
  factory $SecondaryGroupMinCopyWith(
          SecondaryGroupMin value, $Res Function(SecondaryGroupMin) then) =
      _$SecondaryGroupMinCopyWithImpl<$Res, SecondaryGroupMin>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SecondaryGroupMinCopyWithImpl<$Res, $Val extends SecondaryGroupMin>
    implements $SecondaryGroupMinCopyWith<$Res> {
  _$SecondaryGroupMinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecondaryGroupMin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecondaryGroupMinImplCopyWith<$Res>
    implements $SecondaryGroupMinCopyWith<$Res> {
  factory _$$SecondaryGroupMinImplCopyWith(_$SecondaryGroupMinImpl value,
          $Res Function(_$SecondaryGroupMinImpl) then) =
      __$$SecondaryGroupMinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$SecondaryGroupMinImplCopyWithImpl<$Res>
    extends _$SecondaryGroupMinCopyWithImpl<$Res, _$SecondaryGroupMinImpl>
    implements _$$SecondaryGroupMinImplCopyWith<$Res> {
  __$$SecondaryGroupMinImplCopyWithImpl(_$SecondaryGroupMinImpl _value,
      $Res Function(_$SecondaryGroupMinImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecondaryGroupMin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SecondaryGroupMinImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SecondaryGroupMinImpl implements _SecondaryGroupMin {
  const _$SecondaryGroupMinImpl({this.id, this.name});

  factory _$SecondaryGroupMinImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondaryGroupMinImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SecondaryGroupMin(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondaryGroupMinImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SecondaryGroupMin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondaryGroupMinImplCopyWith<_$SecondaryGroupMinImpl> get copyWith =>
      __$$SecondaryGroupMinImplCopyWithImpl<_$SecondaryGroupMinImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondaryGroupMinImplToJson(
      this,
    );
  }
}

abstract class _SecondaryGroupMin implements SecondaryGroupMin {
  const factory _SecondaryGroupMin({final String? id, final String? name}) =
      _$SecondaryGroupMinImpl;

  factory _SecondaryGroupMin.fromJson(Map<String, dynamic> json) =
      _$SecondaryGroupMinImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of SecondaryGroupMin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondaryGroupMinImplCopyWith<_$SecondaryGroupMinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecondaryTeacherMin _$SecondaryTeacherMinFromJson(Map<String, dynamic> json) {
  return _SecondaryTeacherMin.fromJson(json);
}

/// @nodoc
mixin _$SecondaryTeacherMin {
  String? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;

  /// Serializes this SecondaryTeacherMin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecondaryTeacherMin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecondaryTeacherMinCopyWith<SecondaryTeacherMin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondaryTeacherMinCopyWith<$Res> {
  factory $SecondaryTeacherMinCopyWith(
          SecondaryTeacherMin value, $Res Function(SecondaryTeacherMin) then) =
      _$SecondaryTeacherMinCopyWithImpl<$Res, SecondaryTeacherMin>;
  @useResult
  $Res call({String? id, String? firstName, String? lastName});
}

/// @nodoc
class _$SecondaryTeacherMinCopyWithImpl<$Res, $Val extends SecondaryTeacherMin>
    implements $SecondaryTeacherMinCopyWith<$Res> {
  _$SecondaryTeacherMinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecondaryTeacherMin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecondaryTeacherMinImplCopyWith<$Res>
    implements $SecondaryTeacherMinCopyWith<$Res> {
  factory _$$SecondaryTeacherMinImplCopyWith(_$SecondaryTeacherMinImpl value,
          $Res Function(_$SecondaryTeacherMinImpl) then) =
      __$$SecondaryTeacherMinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? firstName, String? lastName});
}

/// @nodoc
class __$$SecondaryTeacherMinImplCopyWithImpl<$Res>
    extends _$SecondaryTeacherMinCopyWithImpl<$Res, _$SecondaryTeacherMinImpl>
    implements _$$SecondaryTeacherMinImplCopyWith<$Res> {
  __$$SecondaryTeacherMinImplCopyWithImpl(_$SecondaryTeacherMinImpl _value,
      $Res Function(_$SecondaryTeacherMinImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecondaryTeacherMin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$SecondaryTeacherMinImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SecondaryTeacherMinImpl implements _SecondaryTeacherMin {
  const _$SecondaryTeacherMinImpl({this.id, this.firstName, this.lastName});

  factory _$SecondaryTeacherMinImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondaryTeacherMinImplFromJson(json);

  @override
  final String? id;
  @override
  final String? firstName;
  @override
  final String? lastName;

  @override
  String toString() {
    return 'SecondaryTeacherMin(id: $id, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondaryTeacherMinImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName);

  /// Create a copy of SecondaryTeacherMin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondaryTeacherMinImplCopyWith<_$SecondaryTeacherMinImpl> get copyWith =>
      __$$SecondaryTeacherMinImplCopyWithImpl<_$SecondaryTeacherMinImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondaryTeacherMinImplToJson(
      this,
    );
  }
}

abstract class _SecondaryTeacherMin implements SecondaryTeacherMin {
  const factory _SecondaryTeacherMin(
      {final String? id,
      final String? firstName,
      final String? lastName}) = _$SecondaryTeacherMinImpl;

  factory _SecondaryTeacherMin.fromJson(Map<String, dynamic> json) =
      _$SecondaryTeacherMinImpl.fromJson;

  @override
  String? get id;
  @override
  String? get firstName;
  @override
  String? get lastName;

  /// Create a copy of SecondaryTeacherMin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondaryTeacherMinImplCopyWith<_$SecondaryTeacherMinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningResponse _$LearningResponseFromJson(Map<String, dynamic> json) {
  return _LearningResponse.fromJson(json);
}

/// @nodoc
mixin _$LearningResponse {
  String? get studentId => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  double? get overallLearning => throw _privateConstructorUsedError;
  List<dynamic>? get courseScores => throw _privateConstructorUsedError;

  /// Serializes this LearningResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningResponseCopyWith<LearningResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningResponseCopyWith<$Res> {
  factory $LearningResponseCopyWith(
          LearningResponse value, $Res Function(LearningResponse) then) =
      _$LearningResponseCopyWithImpl<$Res, LearningResponse>;
  @useResult
  $Res call(
      {String? studentId,
      String? fullName,
      double? overallLearning,
      List<dynamic>? courseScores});
}

/// @nodoc
class _$LearningResponseCopyWithImpl<$Res, $Val extends LearningResponse>
    implements $LearningResponseCopyWith<$Res> {
  _$LearningResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? fullName = freezed,
    Object? overallLearning = freezed,
    Object? courseScores = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      overallLearning: freezed == overallLearning
          ? _value.overallLearning
          : overallLearning // ignore: cast_nullable_to_non_nullable
              as double?,
      courseScores: freezed == courseScores
          ? _value.courseScores
          : courseScores // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningResponseImplCopyWith<$Res>
    implements $LearningResponseCopyWith<$Res> {
  factory _$$LearningResponseImplCopyWith(_$LearningResponseImpl value,
          $Res Function(_$LearningResponseImpl) then) =
      __$$LearningResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? studentId,
      String? fullName,
      double? overallLearning,
      List<dynamic>? courseScores});
}

/// @nodoc
class __$$LearningResponseImplCopyWithImpl<$Res>
    extends _$LearningResponseCopyWithImpl<$Res, _$LearningResponseImpl>
    implements _$$LearningResponseImplCopyWith<$Res> {
  __$$LearningResponseImplCopyWithImpl(_$LearningResponseImpl _value,
      $Res Function(_$LearningResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LearningResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? fullName = freezed,
    Object? overallLearning = freezed,
    Object? courseScores = freezed,
  }) {
    return _then(_$LearningResponseImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      overallLearning: freezed == overallLearning
          ? _value.overallLearning
          : overallLearning // ignore: cast_nullable_to_non_nullable
              as double?,
      courseScores: freezed == courseScores
          ? _value._courseScores
          : courseScores // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LearningResponseImpl implements _LearningResponse {
  const _$LearningResponseImpl(
      {this.studentId,
      this.fullName,
      this.overallLearning,
      final List<dynamic>? courseScores})
      : _courseScores = courseScores;

  factory _$LearningResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningResponseImplFromJson(json);

  @override
  final String? studentId;
  @override
  final String? fullName;
  @override
  final double? overallLearning;
  final List<dynamic>? _courseScores;
  @override
  List<dynamic>? get courseScores {
    final value = _courseScores;
    if (value == null) return null;
    if (_courseScores is EqualUnmodifiableListView) return _courseScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LearningResponse(studentId: $studentId, fullName: $fullName, overallLearning: $overallLearning, courseScores: $courseScores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningResponseImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.overallLearning, overallLearning) ||
                other.overallLearning == overallLearning) &&
            const DeepCollectionEquality()
                .equals(other._courseScores, _courseScores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, fullName,
      overallLearning, const DeepCollectionEquality().hash(_courseScores));

  /// Create a copy of LearningResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningResponseImplCopyWith<_$LearningResponseImpl> get copyWith =>
      __$$LearningResponseImplCopyWithImpl<_$LearningResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningResponseImplToJson(
      this,
    );
  }
}

abstract class _LearningResponse implements LearningResponse {
  const factory _LearningResponse(
      {final String? studentId,
      final String? fullName,
      final double? overallLearning,
      final List<dynamic>? courseScores}) = _$LearningResponseImpl;

  factory _LearningResponse.fromJson(Map<String, dynamic> json) =
      _$LearningResponseImpl.fromJson;

  @override
  String? get studentId;
  @override
  String? get fullName;
  @override
  double? get overallLearning;
  @override
  List<dynamic>? get courseScores;

  /// Create a copy of LearningResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningResponseImplCopyWith<_$LearningResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
