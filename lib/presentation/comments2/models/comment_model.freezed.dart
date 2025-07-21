// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
//
// part of 'comment_model.dart';
//
// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************
//
// T _$identity<T>(T value) => value;
//
// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');
//
// CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
//   return _CommentModel.fromJson(json);
// }
//
// /// @nodoc
// mixin _$CommentModel {
//   @JsonKey(name: 'id')
//   String? get id => throw _privateConstructorUsedError;
//   @JsonKey(name: 'creator')
//   String? get creator => throw _privateConstructorUsedError;
//   @JsonKey(name: 'lid')
//   dynamic get lid => throw _privateConstructorUsedError;
//   @JsonKey(name: 'student')
//   String? get student => throw _privateConstructorUsedError;
//   @JsonKey(name: 'comment')
//   String? get comment => throw _privateConstructorUsedError;
//   @JsonKey(name: 'created_at')
//   String? get createdAt => throw _privateConstructorUsedError;
//   @JsonKey(name: 'updated_at')
//   String? get updatedAt => throw _privateConstructorUsedError;
//   @JsonKey(name: 'full_name')
//   String? get fullName => throw _privateConstructorUsedError;
//   @JsonKey(name: 'first_name')
//   dynamic get firstName => throw _privateConstructorUsedError;
//   @JsonKey(name: 'last_name')
//   dynamic get lastName => throw _privateConstructorUsedError;
//   @JsonKey(name: 'photo')
//   Photo? get photo => throw _privateConstructorUsedError;
//
//   /// Serializes this CommentModel to a JSON map.
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//
//   /// Create a copy of CommentModel
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $CommentModelCopyWith<CommentModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $CommentModelCopyWith<$Res> {
//   factory $CommentModelCopyWith(
//           CommentModel value, $Res Function(CommentModel) then) =
//       _$CommentModelCopyWithImpl<$Res, CommentModel>;
//   @useResult
//   $Res call(
//       {@JsonKey(name: 'id') String? id,
//       @JsonKey(name: 'creator') String? creator,
//       @JsonKey(name: 'lid') dynamic lid,
//       @JsonKey(name: 'student') String? student,
//       @JsonKey(name: 'comment') String? comment,
//       @JsonKey(name: 'created_at') String? createdAt,
//       @JsonKey(name: 'updated_at') String? updatedAt,
//       @JsonKey(name: 'full_name') String? fullName,
//       @JsonKey(name: 'first_name') dynamic firstName,
//       @JsonKey(name: 'last_name') dynamic lastName,
//       @JsonKey(name: 'photo') Photo? photo});
//
//   $PhotoCopyWith<$Res>? get photo;
// }
//
// /// @nodoc
// class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
//     implements $CommentModelCopyWith<$Res> {
//   _$CommentModelCopyWithImpl(this._value, this._then);
//
//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;
//
//   /// Create a copy of CommentModel
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? id = freezed,
//     Object? creator = freezed,
//     Object? lid = freezed,
//     Object? student = freezed,
//     Object? comment = freezed,
//     Object? createdAt = freezed,
//     Object? updatedAt = freezed,
//     Object? fullName = freezed,
//     Object? firstName = freezed,
//     Object? lastName = freezed,
//     Object? photo = freezed,
//   }) {
//     return _then(_value.copyWith(
//       id: freezed == id
//           ? _value.id
//           : id // ignore: cast_nullable_to_non_nullable
//               as String?,
//       creator: freezed == creator
//           ? _value.creator
//           : creator // ignore: cast_nullable_to_non_nullable
//               as String?,
//       lid: freezed == lid
//           ? _value.lid
//           : lid // ignore: cast_nullable_to_non_nullable
//               as dynamic,
//       student: freezed == student
//           ? _value.student
//           : student // ignore: cast_nullable_to_non_nullable
//               as String?,
//       comment: freezed == comment
//           ? _value.comment
//           : comment // ignore: cast_nullable_to_non_nullable
//               as String?,
//       createdAt: freezed == createdAt
//           ? _value.createdAt
//           : createdAt // ignore: cast_nullable_to_non_nullable
//               as String?,
//       updatedAt: freezed == updatedAt
//           ? _value.updatedAt
//           : updatedAt // ignore: cast_nullable_to_non_nullable
//               as String?,
//       fullName: freezed == fullName
//           ? _value.fullName
//           : fullName // ignore: cast_nullable_to_non_nullable
//               as String?,
//       firstName: freezed == firstName
//           ? _value.firstName
//           : firstName // ignore: cast_nullable_to_non_nullable
//               as dynamic,
//       lastName: freezed == lastName
//           ? _value.lastName
//           : lastName // ignore: cast_nullable_to_non_nullable
//               as dynamic,
//       photo: freezed == photo
//           ? _value.photo
//           : photo // ignore: cast_nullable_to_non_nullable
//               as Photo?,
//     ) as $Val);
//   }
//
//   /// Create a copy of CommentModel
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @pragma('vm:prefer-inline')
//   $PhotoCopyWith<$Res>? get photo {
//     if (_value.photo == null) {
//       return null;
//     }
//
//     return $PhotoCopyWith<$Res>(_value.photo!, (value) {
//       return _then(_value.copyWith(photo: value) as $Val);
//     });
//   }
// }
//
// /// @nodoc
// abstract class _$$CommentModelImplCopyWith<$Res>
//     implements $CommentModelCopyWith<$Res> {
//   factory _$$CommentModelImplCopyWith(
//           _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
//       __$$CommentModelImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call(
//       {@JsonKey(name: 'id') String? id,
//       @JsonKey(name: 'creator') String? creator,
//       @JsonKey(name: 'lid') dynamic lid,
//       @JsonKey(name: 'student') String? student,
//       @JsonKey(name: 'comment') String? comment,
//       @JsonKey(name: 'created_at') String? createdAt,
//       @JsonKey(name: 'updated_at') String? updatedAt,
//       @JsonKey(name: 'full_name') String? fullName,
//       @JsonKey(name: 'first_name') dynamic firstName,
//       @JsonKey(name: 'last_name') dynamic lastName,
//       @JsonKey(name: 'photo') Photo? photo});
//
//   @override
//   $PhotoCopyWith<$Res>? get photo;
// }
//
// /// @nodoc
// class __$$CommentModelImplCopyWithImpl<$Res>
//     extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
//     implements _$$CommentModelImplCopyWith<$Res> {
//   __$$CommentModelImplCopyWithImpl(
//       _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
//       : super(_value, _then);
//
//   /// Create a copy of CommentModel
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? id = freezed,
//     Object? creator = freezed,
//     Object? lid = freezed,
//     Object? student = freezed,
//     Object? comment = freezed,
//     Object? createdAt = freezed,
//     Object? updatedAt = freezed,
//     Object? fullName = freezed,
//     Object? firstName = freezed,
//     Object? lastName = freezed,
//     Object? photo = freezed,
//   }) {
//     return _then(_$CommentModelImpl(
//       id: freezed == id
//           ? _value.id
//           : id // ignore: cast_nullable_to_non_nullable
//               as String?,
//       creator: freezed == creator
//           ? _value.creator
//           : creator // ignore: cast_nullable_to_non_nullable
//               as String?,
//       lid: freezed == lid
//           ? _value.lid
//           : lid // ignore: cast_nullable_to_non_nullable
//               as dynamic,
//       student: freezed == student
//           ? _value.student
//           : student // ignore: cast_nullable_to_non_nullable
//               as String?,
//       comment: freezed == comment
//           ? _value.comment
//           : comment // ignore: cast_nullable_to_non_nullable
//               as String?,
//       createdAt: freezed == createdAt
//           ? _value.createdAt
//           : createdAt // ignore: cast_nullable_to_non_nullable
//               as String?,
//       updatedAt: freezed == updatedAt
//           ? _value.updatedAt
//           : updatedAt // ignore: cast_nullable_to_non_nullable
//               as String?,
//       fullName: freezed == fullName
//           ? _value.fullName
//           : fullName // ignore: cast_nullable_to_non_nullable
//               as String?,
//       firstName: freezed == firstName
//           ? _value.firstName
//           : firstName // ignore: cast_nullable_to_non_nullable
//               as dynamic,
//       lastName: freezed == lastName
//           ? _value.lastName
//           : lastName // ignore: cast_nullable_to_non_nullable
//               as dynamic,
//       photo: freezed == photo
//           ? _value.photo
//           : photo // ignore: cast_nullable_to_non_nullable
//               as Photo?,
//     ));
//   }
// }
//
// /// @nodoc
// @JsonSerializable()
// class _$CommentModelImpl implements _CommentModel {
//   const _$CommentModelImpl(
//       {@JsonKey(name: 'id') this.id,
//       @JsonKey(name: 'creator') this.creator,
//       @JsonKey(name: 'lid') this.lid,
//       @JsonKey(name: 'student') this.student,
//       @JsonKey(name: 'comment') this.comment,
//       @JsonKey(name: 'created_at') this.createdAt,
//       @JsonKey(name: 'updated_at') this.updatedAt,
//       @JsonKey(name: 'full_name') this.fullName,
//       @JsonKey(name: 'first_name') this.firstName,
//       @JsonKey(name: 'last_name') this.lastName,
//       @JsonKey(name: 'photo') this.photo});
//
//   factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
//       _$$CommentModelImplFromJson(json);
//
//   @override
//   @JsonKey(name: 'id')
//   final String? id;
//   @override
//   @JsonKey(name: 'creator')
//   final String? creator;
//   @override
//   @JsonKey(name: 'lid')
//   final dynamic lid;
//   @override
//   @JsonKey(name: 'student')
//   final String? student;
//   @override
//   @JsonKey(name: 'comment')
//   final String? comment;
//   @override
//   @JsonKey(name: 'created_at')
//   final String? createdAt;
//   @override
//   @JsonKey(name: 'updated_at')
//   final String? updatedAt;
//   @override
//   @JsonKey(name: 'full_name')
//   final String? fullName;
//   @override
//   @JsonKey(name: 'first_name')
//   final dynamic firstName;
//   @override
//   @JsonKey(name: 'last_name')
//   final dynamic lastName;
//   @override
//   @JsonKey(name: 'photo')
//   final Photo? photo;
//
//   @override
//   String toString() {
//     return 'CommentModel(id: $id, creator: $creator, lid: $lid, student: $student, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, fullName: $fullName, firstName: $firstName, lastName: $lastName, photo: $photo)';
//   }
//
//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$CommentModelImpl &&
//             (identical(other.id, id) || other.id == id) &&
//             (identical(other.creator, creator) || other.creator == creator) &&
//             const DeepCollectionEquality().equals(other.lid, lid) &&
//             (identical(other.student, student) || other.student == student) &&
//             (identical(other.comment, comment) || other.comment == comment) &&
//             (identical(other.createdAt, createdAt) ||
//                 other.createdAt == createdAt) &&
//             (identical(other.updatedAt, updatedAt) ||
//                 other.updatedAt == updatedAt) &&
//             (identical(other.fullName, fullName) ||
//                 other.fullName == fullName) &&
//             const DeepCollectionEquality().equals(other.firstName, firstName) &&
//             const DeepCollectionEquality().equals(other.lastName, lastName) &&
//             (identical(other.photo, photo) || other.photo == photo));
//   }
//
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       id,
//       creator,
//       const DeepCollectionEquality().hash(lid),
//       student,
//       comment,
//       createdAt,
//       updatedAt,
//       fullName,
//       const DeepCollectionEquality().hash(firstName),
//       const DeepCollectionEquality().hash(lastName),
//       photo);
//
//   /// Create a copy of CommentModel
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
//       __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$CommentModelImplToJson(
//       this,
//     );
//   }
// }
//
// abstract class _CommentModel implements CommentModel {
//   const factory _CommentModel(
//       {@JsonKey(name: 'id') final String? id,
//       @JsonKey(name: 'creator') final String? creator,
//       @JsonKey(name: 'lid') final dynamic lid,
//       @JsonKey(name: 'student') final String? student,
//       @JsonKey(name: 'comment') final String? comment,
//       @JsonKey(name: 'created_at') final String? createdAt,
//       @JsonKey(name: 'updated_at') final String? updatedAt,
//       @JsonKey(name: 'full_name') final String? fullName,
//       @JsonKey(name: 'first_name') final dynamic firstName,
//       @JsonKey(name: 'last_name') final dynamic lastName,
//       @JsonKey(name: 'photo') final Photo? photo}) = _$CommentModelImpl;
//
//   factory _CommentModel.fromJson(Map<String, dynamic> json) =
//       _$CommentModelImpl.fromJson;
//
//   @override
//   @JsonKey(name: 'id')
//   String? get id;
//   @override
//   @JsonKey(name: 'creator')
//   String? get creator;
//   @override
//   @JsonKey(name: 'lid')
//   dynamic get lid;
//   @override
//   @JsonKey(name: 'student')
//   String? get student;
//   @override
//   @JsonKey(name: 'comment')
//   String? get comment;
//   @override
//   @JsonKey(name: 'created_at')
//   String? get createdAt;
//   @override
//   @JsonKey(name: 'updated_at')
//   String? get updatedAt;
//   @override
//   @JsonKey(name: 'full_name')
//   String? get fullName;
//   @override
//   @JsonKey(name: 'first_name')
//   dynamic get firstName;
//   @override
//   @JsonKey(name: 'last_name')
//   dynamic get lastName;
//   @override
//   @JsonKey(name: 'photo')
//   Photo? get photo;
//
//   /// Create a copy of CommentModel
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
