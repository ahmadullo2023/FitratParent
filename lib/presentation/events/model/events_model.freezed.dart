// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventsModel _$EventsModelFromJson(Map<String, dynamic> json) {
  return _EventsModel.fromJson(json);
}

/// @nodoc
mixin _$EventsModel {
  String? get id => throw _privateConstructorUsedError;
  List<FileModel>? get file => throw _privateConstructorUsedError;
  FileModel? get photo => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get linkPreview => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this EventsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventsModelCopyWith<EventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsModelCopyWith<$Res> {
  factory $EventsModelCopyWith(
          EventsModel value, $Res Function(EventsModel) then) =
      _$EventsModelCopyWithImpl<$Res, EventsModel>;
  @useResult
  $Res call(
      {String? id,
      List<FileModel>? file,
      FileModel? photo,
      String? link,
      String? linkPreview,
      String? comment,
      String? endDate,
      String? status});

  $FileModelCopyWith<$Res>? get photo;
}

/// @nodoc
class _$EventsModelCopyWithImpl<$Res, $Val extends EventsModel>
    implements $EventsModelCopyWith<$Res> {
  _$EventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? photo = freezed,
    Object? link = freezed,
    Object? linkPreview = freezed,
    Object? comment = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as FileModel?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      linkPreview: freezed == linkPreview
          ? _value.linkPreview
          : linkPreview // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileModelCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $FileModelCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventsModelImplCopyWith<$Res>
    implements $EventsModelCopyWith<$Res> {
  factory _$$EventsModelImplCopyWith(
          _$EventsModelImpl value, $Res Function(_$EventsModelImpl) then) =
      __$$EventsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<FileModel>? file,
      FileModel? photo,
      String? link,
      String? linkPreview,
      String? comment,
      String? endDate,
      String? status});

  @override
  $FileModelCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$EventsModelImplCopyWithImpl<$Res>
    extends _$EventsModelCopyWithImpl<$Res, _$EventsModelImpl>
    implements _$$EventsModelImplCopyWith<$Res> {
  __$$EventsModelImplCopyWithImpl(
      _$EventsModelImpl _value, $Res Function(_$EventsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? photo = freezed,
    Object? link = freezed,
    Object? linkPreview = freezed,
    Object? comment = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_$EventsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value._file
          : file // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as FileModel?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      linkPreview: freezed == linkPreview
          ? _value.linkPreview
          : linkPreview // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$EventsModelImpl implements _EventsModel {
  const _$EventsModelImpl(
      {this.id,
      final List<FileModel>? file,
      this.photo,
      this.link,
      this.linkPreview,
      this.comment,
      this.endDate,
      this.status})
      : _file = file;

  factory _$EventsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsModelImplFromJson(json);

  @override
  final String? id;
  final List<FileModel>? _file;
  @override
  List<FileModel>? get file {
    final value = _file;
    if (value == null) return null;
    if (_file is EqualUnmodifiableListView) return _file;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FileModel? photo;
  @override
  final String? link;
  @override
  final String? linkPreview;
  @override
  final String? comment;
  @override
  final String? endDate;
  @override
  final String? status;

  @override
  String toString() {
    return 'EventsModel(id: $id, file: $file, photo: $photo, link: $link, linkPreview: $linkPreview, comment: $comment, endDate: $endDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._file, _file) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.linkPreview, linkPreview) ||
                other.linkPreview == linkPreview) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_file),
      photo,
      link,
      linkPreview,
      comment,
      endDate,
      status);

  /// Create a copy of EventsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsModelImplCopyWith<_$EventsModelImpl> get copyWith =>
      __$$EventsModelImplCopyWithImpl<_$EventsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsModelImplToJson(
      this,
    );
  }
}

abstract class _EventsModel implements EventsModel {
  const factory _EventsModel(
      {final String? id,
      final List<FileModel>? file,
      final FileModel? photo,
      final String? link,
      final String? linkPreview,
      final String? comment,
      final String? endDate,
      final String? status}) = _$EventsModelImpl;

  factory _EventsModel.fromJson(Map<String, dynamic> json) =
      _$EventsModelImpl.fromJson;

  @override
  String? get id;
  @override
  List<FileModel>? get file;
  @override
  FileModel? get photo;
  @override
  String? get link;
  @override
  String? get linkPreview;
  @override
  String? get comment;
  @override
  String? get endDate;
  @override
  String? get status;

  /// Create a copy of EventsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsModelImplCopyWith<_$EventsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
