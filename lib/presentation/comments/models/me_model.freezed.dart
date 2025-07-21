// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'me_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeModel _$MeModelFromJson(Map<String, dynamic> json) {
  return _MeModel.fromJson(json);
}

/// @nodoc
mixin _$MeModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  Photo? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'filial')
  List<int>? get filial => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'monitoring')
  double? get monitoring => throw _privateConstructorUsedError;
  @JsonKey(name: 'enter')
  dynamic get enter => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave')
  dynamic get leave => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'penalty')
  double? get penalty => throw _privateConstructorUsedError;

  /// Serializes this MeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeModelCopyWith<MeModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeModelCopyWith<$Res> {
  factory $MeModelCopyWith(MeModel value, $Res Function(MeModel) then) =
      _$MeModelCopyWithImpl<$Res, MeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'photo') Photo? photo,
      @JsonKey(name: 'filial') List<int>? filial,
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'monitoring') double? monitoring,
      @JsonKey(name: 'enter') dynamic enter,
      @JsonKey(name: 'leave') dynamic leave,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'penalty') double? penalty});

  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$MeModelCopyWithImpl<$Res, $Val extends MeModel>
    implements $MeModelCopyWith<$Res> {
  _$MeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeModel
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
    Object? monitoring = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? penalty = freezed,
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
      filial: freezed == filial
          ? _value.filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      monitoring: freezed == monitoring
          ? _value.monitoring
          : monitoring // ignore: cast_nullable_to_non_nullable
              as double?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      penalty: freezed == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of MeModel
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
abstract class _$$MeModelImplCopyWith<$Res> implements $MeModelCopyWith<$Res> {
  factory _$$MeModelImplCopyWith(
          _$MeModelImpl value, $Res Function(_$MeModelImpl) then) =
      __$$MeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'photo') Photo? photo,
      @JsonKey(name: 'filial') List<int>? filial,
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'monitoring') double? monitoring,
      @JsonKey(name: 'enter') dynamic enter,
      @JsonKey(name: 'leave') dynamic leave,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'penalty') double? penalty});

  @override
  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$MeModelImplCopyWithImpl<$Res>
    extends _$MeModelCopyWithImpl<$Res, _$MeModelImpl>
    implements _$$MeModelImplCopyWith<$Res> {
  __$$MeModelImplCopyWithImpl(
      _$MeModelImpl _value, $Res Function(_$MeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeModel
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
    Object? monitoring = freezed,
    Object? enter = freezed,
    Object? leave = freezed,
    Object? dateOfBirth = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? penalty = freezed,
  }) {
    return _then(_$MeModelImpl(
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
      filial: freezed == filial
          ? _value._filial
          : filial // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      monitoring: freezed == monitoring
          ? _value.monitoring
          : monitoring // ignore: cast_nullable_to_non_nullable
              as double?,
      enter: freezed == enter
          ? _value.enter
          : enter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      leave: freezed == leave
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      penalty: freezed == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeModelImpl implements _MeModel {
  const _$MeModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'filial') final List<int>? filial,
      @JsonKey(name: 'balance') this.balance,
      @JsonKey(name: 'monitoring') this.monitoring,
      @JsonKey(name: 'enter') this.enter,
      @JsonKey(name: 'leave') this.leave,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'penalty') this.penalty})
      : _filial = filial;

  factory _$MeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'photo')
  final Photo? photo;
  final List<int>? _filial;
  @override
  @JsonKey(name: 'filial')
  List<int>? get filial {
    final value = _filial;
    if (value == null) return null;
    if (_filial is EqualUnmodifiableListView) return _filial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'balance')
  final String? balance;
  @override
  @JsonKey(name: 'monitoring')
  final double? monitoring;
  @override
  @JsonKey(name: 'enter')
  final dynamic enter;
  @override
  @JsonKey(name: 'leave')
  final dynamic leave;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'penalty')
  final double? penalty;

  @override
  String toString() {
    return 'MeModel(id: $id, fullName: $fullName, firstName: $firstName, lastName: $lastName, phone: $phone, role: $role, photo: $photo, filial: $filial, balance: $balance, monitoring: $monitoring, enter: $enter, leave: $leave, dateOfBirth: $dateOfBirth, createdAt: $createdAt, updatedAt: $updatedAt, penalty: $penalty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality().equals(other._filial, _filial) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.monitoring, monitoring) ||
                other.monitoring == monitoring) &&
            const DeepCollectionEquality().equals(other.enter, enter) &&
            const DeepCollectionEquality().equals(other.leave, leave) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.penalty, penalty) || other.penalty == penalty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      firstName,
      lastName,
      phone,
      role,
      photo,
      const DeepCollectionEquality().hash(_filial),
      balance,
      monitoring,
      const DeepCollectionEquality().hash(enter),
      const DeepCollectionEquality().hash(leave),
      dateOfBirth,
      createdAt,
      updatedAt,
      penalty);

  /// Create a copy of MeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeModelImplCopyWith<_$MeModelImpl> get copyWith =>
      __$$MeModelImplCopyWithImpl<_$MeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeModelImplToJson(
      this,
    );
  }
}

abstract class _MeModel implements MeModel {
  const factory _MeModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'photo') final Photo? photo,
      @JsonKey(name: 'filial') final List<int>? filial,
      @JsonKey(name: 'balance') final String? balance,
      @JsonKey(name: 'monitoring') final double? monitoring,
      @JsonKey(name: 'enter') final dynamic enter,
      @JsonKey(name: 'leave') final dynamic leave,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'penalty') final double? penalty}) = _$MeModelImpl;

  factory _MeModel.fromJson(Map<String, dynamic> json) = _$MeModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'photo')
  Photo? get photo;
  @override
  @JsonKey(name: 'filial')
  List<int>? get filial;
  @override
  @JsonKey(name: 'balance')
  String? get balance;
  @override
  @JsonKey(name: 'monitoring')
  double? get monitoring;
  @override
  @JsonKey(name: 'enter')
  dynamic get enter;
  @override
  @JsonKey(name: 'leave')
  dynamic get leave;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'penalty')
  double? get penalty;

  /// Create a copy of MeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeModelImplCopyWith<_$MeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: 'file')
  String? get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'choice')
  String? get choice => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'file') String? file,
      @JsonKey(name: 'choice') String? choice,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'id') String? id});
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
    Object? file = freezed,
    Object? choice = freezed,
    Object? url = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: 'file') String? file,
      @JsonKey(name: 'choice') String? choice,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'id') String? id});
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
    Object? file = freezed,
    Object? choice = freezed,
    Object? url = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PhotoImpl(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl(
      {@JsonKey(name: 'file') this.file,
      @JsonKey(name: 'choice') this.choice,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'id') this.id});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  @JsonKey(name: 'file')
  final String? file;
  @override
  @JsonKey(name: 'choice')
  final String? choice;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'Photo(file: $file, choice: $choice, url: $url, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.choice, choice) || other.choice == choice) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, choice, url, id);

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
      {@JsonKey(name: 'file') final String? file,
      @JsonKey(name: 'choice') final String? choice,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'id') final String? id}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  @JsonKey(name: 'file')
  String? get file;
  @override
  @JsonKey(name: 'choice')
  String? get choice;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
