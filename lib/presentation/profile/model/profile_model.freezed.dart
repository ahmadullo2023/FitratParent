// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  Learning? get learning => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get educationLang => throw _privateConstructorUsedError;
  String? get studentType => throw _privateConstructorUsedError;
  String? get eduClass => throw _privateConstructorUsedError;
  String? get eduLevel => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  List<SalesData>? get sales => throw _privateConstructorUsedError;
  VoucherData? get voucher => throw _privateConstructorUsedError;
  double? get ball => throw _privateConstructorUsedError;
  Filial? get filial => throw _privateConstructorUsedError;
  MarketingChannel? get marketingChannel => throw _privateConstructorUsedError;
  String? get studentStageType => throw _privateConstructorUsedError;
  String? get balanceStatus => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  ServiceManager? get serviceManager => throw _privateConstructorUsedError;
  MeCourseData? get course => throw _privateConstructorUsedError;
  List<GroupData>? get group => throw _privateConstructorUsedError;
  Teacher? get teacher => throw _privateConstructorUsedError;
  String? get callOperator => throw _privateConstructorUsedError;
  SalesManager? get salesManager => throw _privateConstructorUsedError;
  bool? get isArchived => throw _privateConstructorUsedError;
  bool? get isFrozen => throw _privateConstructorUsedError;
  int? get attendanceCount => throw _privateConstructorUsedError;
  List<RelativesData>? get relatives => throw _privateConstructorUsedError;
  List<FileData>? get file => throw _privateConstructorUsedError;
  int? get strike => throw _privateConstructorUsedError;
  SecondaryGroupMin? get secondaryGroup => throw _privateConstructorUsedError;
  SecondaryTeacherMin? get secondaryTeacher =>
      throw _privateConstructorUsedError;
  String? get newStudentStages => throw _privateConstructorUsedError;
  String? get newStudentDate => throw _privateConstructorUsedError;
  String? get activeDate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {String? id,
      String? firstName,
      Photo? photo,
      String? lastName,
      String? middleName,
      String? phone,
      Learning? learning,
      String? dateOfBirth,
      String? educationLang,
      String? studentType,
      String? eduClass,
      String? eduLevel,
      String? studentId,
      String? subject,
      List<SalesData>? sales,
      VoucherData? voucher,
      double? ball,
      Filial? filial,
      MarketingChannel? marketingChannel,
      String? studentStageType,
      String? balanceStatus,
      String? balance,
      ServiceManager? serviceManager,
      MeCourseData? course,
      List<GroupData>? group,
      Teacher? teacher,
      String? callOperator,
      SalesManager? salesManager,
      bool? isArchived,
      bool? isFrozen,
      int? attendanceCount,
      List<RelativesData>? relatives,
      List<FileData>? file,
      int? strike,
      SecondaryGroupMin? secondaryGroup,
      SecondaryTeacherMin? secondaryTeacher,
      String? newStudentStages,
      String? newStudentDate,
      String? activeDate,
      String? createdAt,
      String? updatedAt});

  $PhotoCopyWith<$Res>? get photo;
  $LearningCopyWith<$Res>? get learning;
  $VoucherDataCopyWith<$Res>? get voucher;
  $FilialCopyWith<$Res>? get filial;
  $MarketingChannelCopyWith<$Res>? get marketingChannel;
  $ServiceManagerCopyWith<$Res>? get serviceManager;
  $MeCourseDataCopyWith<$Res>? get course;
  $TeacherCopyWith<$Res>? get teacher;
  $SalesManagerCopyWith<$Res>? get salesManager;
  $SecondaryGroupMinCopyWith<$Res>? get secondaryGroup;
  $SecondaryTeacherMinCopyWith<$Res>? get secondaryTeacher;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? photo = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
    Object? learning = freezed,
    Object? dateOfBirth = freezed,
    Object? educationLang = freezed,
    Object? studentType = freezed,
    Object? eduClass = freezed,
    Object? eduLevel = freezed,
    Object? studentId = freezed,
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
    Object? strike = freezed,
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
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
      eduLevel: freezed == eduLevel
          ? _value.eduLevel
          : eduLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
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
              as VoucherData?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as MeCourseData?,
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
      strike: freezed == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      activeDate: freezed == activeDate
          ? _value.activeDate
          : activeDate // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoucherDataCopyWith<$Res>? get voucher {
    if (_value.voucher == null) {
      return null;
    }

    return $VoucherDataCopyWith<$Res>(_value.voucher!, (value) {
      return _then(_value.copyWith(voucher: value) as $Val);
    });
  }

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeCourseDataCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $MeCourseDataCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
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

  /// Create a copy of ProfileModel
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
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? firstName,
      Photo? photo,
      String? lastName,
      String? middleName,
      String? phone,
      Learning? learning,
      String? dateOfBirth,
      String? educationLang,
      String? studentType,
      String? eduClass,
      String? eduLevel,
      String? studentId,
      String? subject,
      List<SalesData>? sales,
      VoucherData? voucher,
      double? ball,
      Filial? filial,
      MarketingChannel? marketingChannel,
      String? studentStageType,
      String? balanceStatus,
      String? balance,
      ServiceManager? serviceManager,
      MeCourseData? course,
      List<GroupData>? group,
      Teacher? teacher,
      String? callOperator,
      SalesManager? salesManager,
      bool? isArchived,
      bool? isFrozen,
      int? attendanceCount,
      List<RelativesData>? relatives,
      List<FileData>? file,
      int? strike,
      SecondaryGroupMin? secondaryGroup,
      SecondaryTeacherMin? secondaryTeacher,
      String? newStudentStages,
      String? newStudentDate,
      String? activeDate,
      String? createdAt,
      String? updatedAt});

  @override
  $PhotoCopyWith<$Res>? get photo;
  @override
  $LearningCopyWith<$Res>? get learning;
  @override
  $VoucherDataCopyWith<$Res>? get voucher;
  @override
  $FilialCopyWith<$Res>? get filial;
  @override
  $MarketingChannelCopyWith<$Res>? get marketingChannel;
  @override
  $ServiceManagerCopyWith<$Res>? get serviceManager;
  @override
  $MeCourseDataCopyWith<$Res>? get course;
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
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? photo = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? phone = freezed,
    Object? learning = freezed,
    Object? dateOfBirth = freezed,
    Object? educationLang = freezed,
    Object? studentType = freezed,
    Object? eduClass = freezed,
    Object? eduLevel = freezed,
    Object? studentId = freezed,
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
    Object? strike = freezed,
    Object? secondaryGroup = freezed,
    Object? secondaryTeacher = freezed,
    Object? newStudentStages = freezed,
    Object? newStudentDate = freezed,
    Object? activeDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
      eduLevel: freezed == eduLevel
          ? _value.eduLevel
          : eduLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
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
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as VoucherData?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as MeCourseData?,
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
      strike: freezed == strike
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      activeDate: freezed == activeDate
          ? _value.activeDate
          : activeDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {this.id,
      this.firstName,
      this.photo,
      this.lastName,
      this.middleName,
      this.phone,
      this.learning,
      this.dateOfBirth,
      this.educationLang,
      this.studentType,
      this.eduClass,
      this.eduLevel,
      this.studentId,
      this.subject,
      final List<SalesData>? sales,
      this.voucher,
      this.ball,
      this.filial,
      this.marketingChannel,
      this.studentStageType,
      this.balanceStatus,
      this.balance,
      this.serviceManager,
      this.course,
      final List<GroupData>? group,
      this.teacher,
      this.callOperator,
      this.salesManager,
      this.isArchived,
      this.isFrozen,
      this.attendanceCount,
      final List<RelativesData>? relatives,
      final List<FileData>? file,
      this.strike,
      this.secondaryGroup,
      this.secondaryTeacher,
      this.newStudentStages,
      this.newStudentDate,
      this.activeDate,
      this.createdAt,
      this.updatedAt})
      : _sales = sales,
        _group = group,
        _relatives = relatives,
        _file = file;

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? firstName;
  @override
  final Photo? photo;
  @override
  final String? lastName;
  @override
  final String? middleName;
  @override
  final String? phone;
  @override
  final Learning? learning;
  @override
  final String? dateOfBirth;
  @override
  final String? educationLang;
  @override
  final String? studentType;
  @override
  final String? eduClass;
  @override
  final String? eduLevel;
  @override
  final String? studentId;
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

  @override
  final VoucherData? voucher;
  @override
  final double? ball;
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
  @override
  final MeCourseData? course;
  final List<GroupData>? _group;
  @override
  List<GroupData>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final int? strike;
  @override
  final SecondaryGroupMin? secondaryGroup;
  @override
  final SecondaryTeacherMin? secondaryTeacher;
  @override
  final String? newStudentStages;
  @override
  final String? newStudentDate;
  @override
  final String? activeDate;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ProfileModel(id: $id, firstName: $firstName, photo: $photo, lastName: $lastName, middleName: $middleName, phone: $phone, learning: $learning, dateOfBirth: $dateOfBirth, educationLang: $educationLang, studentType: $studentType, eduClass: $eduClass, eduLevel: $eduLevel, studentId: $studentId, subject: $subject, sales: $sales, voucher: $voucher, ball: $ball, filial: $filial, marketingChannel: $marketingChannel, studentStageType: $studentStageType, balanceStatus: $balanceStatus, balance: $balance, serviceManager: $serviceManager, course: $course, group: $group, teacher: $teacher, callOperator: $callOperator, salesManager: $salesManager, isArchived: $isArchived, isFrozen: $isFrozen, attendanceCount: $attendanceCount, relatives: $relatives, file: $file, strike: $strike, secondaryGroup: $secondaryGroup, secondaryTeacher: $secondaryTeacher, newStudentStages: $newStudentStages, newStudentDate: $newStudentDate, activeDate: $activeDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
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
            (identical(other.eduLevel, eduLevel) ||
                other.eduLevel == eduLevel) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            const DeepCollectionEquality().equals(other._sales, _sales) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
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
            (identical(other.course, course) || other.course == course) &&
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
            (identical(other.strike, strike) || other.strike == strike) &&
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
        firstName,
        photo,
        lastName,
        middleName,
        phone,
        learning,
        dateOfBirth,
        educationLang,
        studentType,
        eduClass,
        eduLevel,
        studentId,
        subject,
        const DeepCollectionEquality().hash(_sales),
        voucher,
        ball,
        filial,
        marketingChannel,
        studentStageType,
        balanceStatus,
        balance,
        serviceManager,
        course,
        const DeepCollectionEquality().hash(_group),
        teacher,
        callOperator,
        salesManager,
        isArchived,
        isFrozen,
        attendanceCount,
        const DeepCollectionEquality().hash(_relatives),
        const DeepCollectionEquality().hash(_file),
        strike,
        secondaryGroup,
        secondaryTeacher,
        newStudentStages,
        newStudentDate,
        activeDate,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {final String? id,
      final String? firstName,
      final Photo? photo,
      final String? lastName,
      final String? middleName,
      final String? phone,
      final Learning? learning,
      final String? dateOfBirth,
      final String? educationLang,
      final String? studentType,
      final String? eduClass,
      final String? eduLevel,
      final String? studentId,
      final String? subject,
      final List<SalesData>? sales,
      final VoucherData? voucher,
      final double? ball,
      final Filial? filial,
      final MarketingChannel? marketingChannel,
      final String? studentStageType,
      final String? balanceStatus,
      final String? balance,
      final ServiceManager? serviceManager,
      final MeCourseData? course,
      final List<GroupData>? group,
      final Teacher? teacher,
      final String? callOperator,
      final SalesManager? salesManager,
      final bool? isArchived,
      final bool? isFrozen,
      final int? attendanceCount,
      final List<RelativesData>? relatives,
      final List<FileData>? file,
      final int? strike,
      final SecondaryGroupMin? secondaryGroup,
      final SecondaryTeacherMin? secondaryTeacher,
      final String? newStudentStages,
      final String? newStudentDate,
      final String? activeDate,
      final String? createdAt,
      final String? updatedAt}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get firstName;
  @override
  Photo? get photo;
  @override
  String? get lastName;
  @override
  String? get middleName;
  @override
  String? get phone;
  @override
  Learning? get learning;
  @override
  String? get dateOfBirth;
  @override
  String? get educationLang;
  @override
  String? get studentType;
  @override
  String? get eduClass;
  @override
  String? get eduLevel;
  @override
  String? get studentId;
  @override
  String? get subject;
  @override
  List<SalesData>? get sales;
  @override
  VoucherData? get voucher;
  @override
  double? get ball;
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
  MeCourseData? get course;
  @override
  List<GroupData>? get group;
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
  int? get strike;
  @override
  SecondaryGroupMin? get secondaryGroup;
  @override
  SecondaryTeacherMin? get secondaryTeacher;
  @override
  String? get newStudentStages;
  @override
  String? get newStudentDate;
  @override
  String? get activeDate;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeCourseData _$MeCourseDataFromJson(Map<String, dynamic> json) {
  return _MeCourseData.fromJson(json);
}

/// @nodoc
mixin _$MeCourseData {
  int? get count => throw _privateConstructorUsedError;
  List<Course>? get items => throw _privateConstructorUsedError;

  /// Serializes this MeCourseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeCourseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeCourseDataCopyWith<MeCourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeCourseDataCopyWith<$Res> {
  factory $MeCourseDataCopyWith(
          MeCourseData value, $Res Function(MeCourseData) then) =
      _$MeCourseDataCopyWithImpl<$Res, MeCourseData>;
  @useResult
  $Res call({int? count, List<Course>? items});
}

/// @nodoc
class _$MeCourseDataCopyWithImpl<$Res, $Val extends MeCourseData>
    implements $MeCourseDataCopyWith<$Res> {
  _$MeCourseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeCourseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeCourseDataImplCopyWith<$Res>
    implements $MeCourseDataCopyWith<$Res> {
  factory _$$MeCourseDataImplCopyWith(
          _$MeCourseDataImpl value, $Res Function(_$MeCourseDataImpl) then) =
      __$$MeCourseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<Course>? items});
}

/// @nodoc
class __$$MeCourseDataImplCopyWithImpl<$Res>
    extends _$MeCourseDataCopyWithImpl<$Res, _$MeCourseDataImpl>
    implements _$$MeCourseDataImplCopyWith<$Res> {
  __$$MeCourseDataImplCopyWithImpl(
      _$MeCourseDataImpl _value, $Res Function(_$MeCourseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeCourseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? items = freezed,
  }) {
    return _then(_$MeCourseDataImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$MeCourseDataImpl implements _MeCourseData {
  const _$MeCourseDataImpl({this.count, final List<Course>? items})
      : _items = items;

  factory _$MeCourseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeCourseDataImplFromJson(json);

  @override
  final int? count;
  final List<Course>? _items;
  @override
  List<Course>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeCourseData(count: $count, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeCourseDataImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_items));

  /// Create a copy of MeCourseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeCourseDataImplCopyWith<_$MeCourseDataImpl> get copyWith =>
      __$$MeCourseDataImplCopyWithImpl<_$MeCourseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeCourseDataImplToJson(
      this,
    );
  }
}

abstract class _MeCourseData implements MeCourseData {
  const factory _MeCourseData({final int? count, final List<Course>? items}) =
      _$MeCourseDataImpl;

  factory _MeCourseData.fromJson(Map<String, dynamic> json) =
      _$MeCourseDataImpl.fromJson;

  @override
  int? get count;
  @override
  List<Course>? get items;

  /// Create a copy of MeCourseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeCourseDataImplCopyWith<_$MeCourseDataImpl> get copyWith =>
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

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  dynamic get level => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'level') dynamic level});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'level') dynamic level});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? level = freezed,
  }) {
    return _then(_$CourseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'level') this.level});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'level')
  final dynamic level;

  @override
  String toString() {
    return 'Course(name: $name, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(level));

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'level') final dynamic level}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'level')
  dynamic get level;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
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
