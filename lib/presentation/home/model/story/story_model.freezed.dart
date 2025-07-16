// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) {
  return _StoryModel.fromJson(json);
}

/// @nodoc
mixin _$StoryModel {
  String? get id => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError;
  List<Photo>? get video => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  bool? get seen => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this StoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryModelCopyWith<StoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryModelCopyWith<$Res> {
  factory $StoryModelCopyWith(
          StoryModel value, $Res Function(StoryModel) then) =
      _$StoryModelCopyWithImpl<$Res, StoryModel>;
  @useResult
  $Res call(
      {String? id,
      Photo? photo,
      List<Photo>? video,
      String? text,
      bool? seen,
      String? createdAt});

  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$StoryModelCopyWithImpl<$Res, $Val extends StoryModel>
    implements $StoryModelCopyWith<$Res> {
  _$StoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? video = freezed,
    Object? text = freezed,
    Object? seen = freezed,
    Object? createdAt = freezed,
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
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      seen: freezed == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StoryModel
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
abstract class _$$StoryModelImplCopyWith<$Res>
    implements $StoryModelCopyWith<$Res> {
  factory _$$StoryModelImplCopyWith(
          _$StoryModelImpl value, $Res Function(_$StoryModelImpl) then) =
      __$$StoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Photo? photo,
      List<Photo>? video,
      String? text,
      bool? seen,
      String? createdAt});

  @override
  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$StoryModelImplCopyWithImpl<$Res>
    extends _$StoryModelCopyWithImpl<$Res, _$StoryModelImpl>
    implements _$$StoryModelImplCopyWith<$Res> {
  __$$StoryModelImplCopyWithImpl(
      _$StoryModelImpl _value, $Res Function(_$StoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? video = freezed,
    Object? text = freezed,
    Object? seen = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$StoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      seen: freezed == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$StoryModelImpl implements _StoryModel {
  const _$StoryModelImpl(
      {this.id,
      this.photo,
      final List<Photo>? video,
      this.text,
      this.seen,
      this.createdAt})
      : _video = video;

  factory _$StoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryModelImplFromJson(json);

  @override
  final String? id;
  @override
  final Photo? photo;
  final List<Photo>? _video;
  @override
  List<Photo>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  @override
  final bool? seen;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'StoryModel(id: $id, photo: $photo, video: $video, text: $text, seen: $seen, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality().equals(other._video, _video) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, photo,
      const DeepCollectionEquality().hash(_video), text, seen, createdAt);

  /// Create a copy of StoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryModelImplCopyWith<_$StoryModelImpl> get copyWith =>
      __$$StoryModelImplCopyWithImpl<_$StoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryModelImplToJson(
      this,
    );
  }
}

abstract class _StoryModel implements StoryModel {
  const factory _StoryModel(
      {final String? id,
      final Photo? photo,
      final List<Photo>? video,
      final String? text,
      final bool? seen,
      final String? createdAt}) = _$StoryModelImpl;

  factory _StoryModel.fromJson(Map<String, dynamic> json) =
      _$StoryModelImpl.fromJson;

  @override
  String? get id;
  @override
  Photo? get photo;
  @override
  List<Photo>? get video;
  @override
  String? get text;
  @override
  bool? get seen;
  @override
  String? get createdAt;

  /// Create a copy of StoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryModelImplCopyWith<_$StoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
