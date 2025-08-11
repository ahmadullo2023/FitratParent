// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeNew _$ThemeNewFromJson(Map<String, dynamic> json) {
  return _ThemeNew.fromJson(json);
}

/// @nodoc
mixin _$ThemeNew {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  Subject? get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'theme')
  String? get theme => throw _privateConstructorUsedError;
  @JsonKey(name: 'course')
  List<Course>? get course => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<Photo>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'files')
  List<File>? get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_files')
  List<Photo>? get homeworkFiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_work_files')
  List<Photo>? get courseWorkFiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_work_files')
  List<Photo>? get extraWorkFiles => throw _privateConstructorUsedError;

  /// Serializes this ThemeNew to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeNewCopyWith<ThemeNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeNewCopyWith<$Res> {
  factory $ThemeNewCopyWith(ThemeNew value, $Res Function(ThemeNew) then) =
      _$ThemeNewCopyWithImpl<$Res, ThemeNew>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'subject') Subject? subject,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'theme') String? theme,
      @JsonKey(name: 'course') List<Course>? course,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'videos') List<Photo>? videos,
      @JsonKey(name: 'files') List<File>? files,
      @JsonKey(name: 'photos') List<Photo>? photos,
      @JsonKey(name: 'homework_files') List<Photo>? homeworkFiles,
      @JsonKey(name: 'course_work_files') List<Photo>? courseWorkFiles,
      @JsonKey(name: 'extra_work_files') List<Photo>? extraWorkFiles});

  $SubjectCopyWith<$Res>? get subject;
}

/// @nodoc
class _$ThemeNewCopyWithImpl<$Res, $Val extends ThemeNew>
    implements $ThemeNewCopyWith<$Res> {
  _$ThemeNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? title = freezed,
    Object? theme = freezed,
    Object? course = freezed,
    Object? description = freezed,
    Object? videos = freezed,
    Object? files = freezed,
    Object? photos = freezed,
    Object? homeworkFiles = freezed,
    Object? courseWorkFiles = freezed,
    Object? extraWorkFiles = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      homeworkFiles: freezed == homeworkFiles
          ? _value.homeworkFiles
          : homeworkFiles // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      courseWorkFiles: freezed == courseWorkFiles
          ? _value.courseWorkFiles
          : courseWorkFiles // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      extraWorkFiles: freezed == extraWorkFiles
          ? _value.extraWorkFiles
          : extraWorkFiles // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
    ) as $Val);
  }

  /// Create a copy of ThemeNew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $SubjectCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThemeNewImplCopyWith<$Res>
    implements $ThemeNewCopyWith<$Res> {
  factory _$$ThemeNewImplCopyWith(
          _$ThemeNewImpl value, $Res Function(_$ThemeNewImpl) then) =
      __$$ThemeNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'subject') Subject? subject,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'theme') String? theme,
      @JsonKey(name: 'course') List<Course>? course,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'videos') List<Photo>? videos,
      @JsonKey(name: 'files') List<File>? files,
      @JsonKey(name: 'photos') List<Photo>? photos,
      @JsonKey(name: 'homework_files') List<Photo>? homeworkFiles,
      @JsonKey(name: 'course_work_files') List<Photo>? courseWorkFiles,
      @JsonKey(name: 'extra_work_files') List<Photo>? extraWorkFiles});

  @override
  $SubjectCopyWith<$Res>? get subject;
}

/// @nodoc
class __$$ThemeNewImplCopyWithImpl<$Res>
    extends _$ThemeNewCopyWithImpl<$Res, _$ThemeNewImpl>
    implements _$$ThemeNewImplCopyWith<$Res> {
  __$$ThemeNewImplCopyWithImpl(
      _$ThemeNewImpl _value, $Res Function(_$ThemeNewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? title = freezed,
    Object? theme = freezed,
    Object? course = freezed,
    Object? description = freezed,
    Object? videos = freezed,
    Object? files = freezed,
    Object? photos = freezed,
    Object? homeworkFiles = freezed,
    Object? courseWorkFiles = freezed,
    Object? extraWorkFiles = freezed,
  }) {
    return _then(_$ThemeNewImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      homeworkFiles: freezed == homeworkFiles
          ? _value._homeworkFiles
          : homeworkFiles // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      courseWorkFiles: freezed == courseWorkFiles
          ? _value._courseWorkFiles
          : courseWorkFiles // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      extraWorkFiles: freezed == extraWorkFiles
          ? _value._extraWorkFiles
          : extraWorkFiles // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeNewImpl implements _ThemeNew {
  const _$ThemeNewImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'theme') this.theme,
      @JsonKey(name: 'course') final List<Course>? course,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'videos') final List<Photo>? videos,
      @JsonKey(name: 'files') final List<File>? files,
      @JsonKey(name: 'photos') final List<Photo>? photos,
      @JsonKey(name: 'homework_files') final List<Photo>? homeworkFiles,
      @JsonKey(name: 'course_work_files') final List<Photo>? courseWorkFiles,
      @JsonKey(name: 'extra_work_files') final List<Photo>? extraWorkFiles})
      : _course = course,
        _videos = videos,
        _files = files,
        _photos = photos,
        _homeworkFiles = homeworkFiles,
        _courseWorkFiles = courseWorkFiles,
        _extraWorkFiles = extraWorkFiles;

  factory _$ThemeNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeNewImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'subject')
  final Subject? subject;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'theme')
  final String? theme;
  final List<Course>? _course;
  @override
  @JsonKey(name: 'course')
  List<Course>? get course {
    final value = _course;
    if (value == null) return null;
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<Photo>? _videos;
  @override
  @JsonKey(name: 'videos')
  List<Photo>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<File>? _files;
  @override
  @JsonKey(name: 'files')
  List<File>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _photos;
  @override
  @JsonKey(name: 'photos')
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _homeworkFiles;
  @override
  @JsonKey(name: 'homework_files')
  List<Photo>? get homeworkFiles {
    final value = _homeworkFiles;
    if (value == null) return null;
    if (_homeworkFiles is EqualUnmodifiableListView) return _homeworkFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _courseWorkFiles;
  @override
  @JsonKey(name: 'course_work_files')
  List<Photo>? get courseWorkFiles {
    final value = _courseWorkFiles;
    if (value == null) return null;
    if (_courseWorkFiles is EqualUnmodifiableListView) return _courseWorkFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _extraWorkFiles;
  @override
  @JsonKey(name: 'extra_work_files')
  List<Photo>? get extraWorkFiles {
    final value = _extraWorkFiles;
    if (value == null) return null;
    if (_extraWorkFiles is EqualUnmodifiableListView) return _extraWorkFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ThemeNew(id: $id, subject: $subject, title: $title, theme: $theme, course: $course, description: $description, videos: $videos, files: $files, photos: $photos, homeworkFiles: $homeworkFiles, courseWorkFiles: $courseWorkFiles, extraWorkFiles: $extraWorkFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeNewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality()
                .equals(other._homeworkFiles, _homeworkFiles) &&
            const DeepCollectionEquality()
                .equals(other._courseWorkFiles, _courseWorkFiles) &&
            const DeepCollectionEquality()
                .equals(other._extraWorkFiles, _extraWorkFiles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      subject,
      title,
      theme,
      const DeepCollectionEquality().hash(_course),
      description,
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_homeworkFiles),
      const DeepCollectionEquality().hash(_courseWorkFiles),
      const DeepCollectionEquality().hash(_extraWorkFiles));

  /// Create a copy of ThemeNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeNewImplCopyWith<_$ThemeNewImpl> get copyWith =>
      __$$ThemeNewImplCopyWithImpl<_$ThemeNewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeNewImplToJson(
      this,
    );
  }
}

abstract class _ThemeNew implements ThemeNew {
  const factory _ThemeNew(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'subject') final Subject? subject,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'theme') final String? theme,
      @JsonKey(name: 'course') final List<Course>? course,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'videos') final List<Photo>? videos,
      @JsonKey(name: 'files') final List<File>? files,
      @JsonKey(name: 'photos') final List<Photo>? photos,
      @JsonKey(name: 'homework_files') final List<Photo>? homeworkFiles,
      @JsonKey(name: 'course_work_files') final List<Photo>? courseWorkFiles,
      @JsonKey(name: 'extra_work_files')
      final List<Photo>? extraWorkFiles}) = _$ThemeNewImpl;

  factory _ThemeNew.fromJson(Map<String, dynamic> json) =
      _$ThemeNewImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'subject')
  Subject? get subject;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'theme')
  String? get theme;
  @override
  @JsonKey(name: 'course')
  List<Course>? get course;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'videos')
  List<Photo>? get videos;
  @override
  @JsonKey(name: 'files')
  List<File>? get files;
  @override
  @JsonKey(name: 'photos')
  List<Photo>? get photos;
  @override
  @JsonKey(name: 'homework_files')
  List<Photo>? get homeworkFiles;
  @override
  @JsonKey(name: 'course_work_files')
  List<Photo>? get courseWorkFiles;
  @override
  @JsonKey(name: 'extra_work_files')
  List<Photo>? get extraWorkFiles;

  /// Create a copy of ThemeNew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeNewImplCopyWith<_$ThemeNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeworkModel _$HomeworkModelFromJson(Map<String, dynamic> json) {
  return _HomeworkModel.fromJson(json);
}

/// @nodoc
mixin _$HomeworkModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  ThemeNew? get theme => throw _privateConstructorUsedError;
  BallData? get ball => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get testChecked => throw _privateConstructorUsedError;
  List<Photo>? get video => throw _privateConstructorUsedError;
  List<Photo>? get documents => throw _privateConstructorUsedError;
  List<Photo>? get photo => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this HomeworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkModelCopyWith<HomeworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkModelCopyWith<$Res> {
  factory $HomeworkModelCopyWith(
          HomeworkModel value, $Res Function(HomeworkModel) then) =
      _$HomeworkModelCopyWithImpl<$Res, HomeworkModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      ThemeNew? theme,
      BallData? ball,
      bool? isActive,
      bool? testChecked,
      List<Photo>? video,
      List<Photo>? documents,
      List<Photo>? photo,
      String? createdAt});

  $ThemeNewCopyWith<$Res>? get theme;
  $BallDataCopyWith<$Res>? get ball;
}

/// @nodoc
class _$HomeworkModelCopyWithImpl<$Res, $Val extends HomeworkModel>
    implements $HomeworkModelCopyWith<$Res> {
  _$HomeworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? theme = freezed,
    Object? ball = freezed,
    Object? isActive = freezed,
    Object? testChecked = freezed,
    Object? video = freezed,
    Object? documents = freezed,
    Object? photo = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeNew?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as BallData?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      testChecked: freezed == testChecked
          ? _value.testChecked
          : testChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeNewCopyWith<$Res>? get theme {
    if (_value.theme == null) {
      return null;
    }

    return $ThemeNewCopyWith<$Res>(_value.theme!, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BallDataCopyWith<$Res>? get ball {
    if (_value.ball == null) {
      return null;
    }

    return $BallDataCopyWith<$Res>(_value.ball!, (value) {
      return _then(_value.copyWith(ball: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeworkModelImplCopyWith<$Res>
    implements $HomeworkModelCopyWith<$Res> {
  factory _$$HomeworkModelImplCopyWith(
          _$HomeworkModelImpl value, $Res Function(_$HomeworkModelImpl) then) =
      __$$HomeworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      ThemeNew? theme,
      BallData? ball,
      bool? isActive,
      bool? testChecked,
      List<Photo>? video,
      List<Photo>? documents,
      List<Photo>? photo,
      String? createdAt});

  @override
  $ThemeNewCopyWith<$Res>? get theme;
  @override
  $BallDataCopyWith<$Res>? get ball;
}

/// @nodoc
class __$$HomeworkModelImplCopyWithImpl<$Res>
    extends _$HomeworkModelCopyWithImpl<$Res, _$HomeworkModelImpl>
    implements _$$HomeworkModelImplCopyWith<$Res> {
  __$$HomeworkModelImplCopyWithImpl(
      _$HomeworkModelImpl _value, $Res Function(_$HomeworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? theme = freezed,
    Object? ball = freezed,
    Object? isActive = freezed,
    Object? testChecked = freezed,
    Object? video = freezed,
    Object? documents = freezed,
    Object? photo = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$HomeworkModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeNew?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as BallData?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      testChecked: freezed == testChecked
          ? _value.testChecked
          : testChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HomeworkModelImpl implements _HomeworkModel {
  const _$HomeworkModelImpl(
      {this.id,
      this.title,
      this.body,
      this.theme,
      this.ball,
      this.isActive,
      this.testChecked,
      final List<Photo>? video,
      final List<Photo>? documents,
      final List<Photo>? photo,
      this.createdAt})
      : _video = video,
        _documents = documents,
        _photo = photo;

  factory _$HomeworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final ThemeNew? theme;
  @override
  final BallData? ball;
  @override
  final bool? isActive;
  @override
  final bool? testChecked;
  final List<Photo>? _video;
  @override
  List<Photo>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _documents;
  @override
  List<Photo>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _photo;
  @override
  List<Photo>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'HomeworkModel(id: $id, title: $title, body: $body, theme: $theme, ball: $ball, isActive: $isActive, testChecked: $testChecked, video: $video, documents: $documents, photo: $photo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.testChecked, testChecked) ||
                other.testChecked == testChecked) &&
            const DeepCollectionEquality().equals(other._video, _video) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      theme,
      ball,
      isActive,
      testChecked,
      const DeepCollectionEquality().hash(_video),
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(_photo),
      createdAt);

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkModelImplCopyWith<_$HomeworkModelImpl> get copyWith =>
      __$$HomeworkModelImplCopyWithImpl<_$HomeworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkModelImplToJson(
      this,
    );
  }
}

abstract class _HomeworkModel implements HomeworkModel {
  const factory _HomeworkModel(
      {final String? id,
      final String? title,
      final String? body,
      final ThemeNew? theme,
      final BallData? ball,
      final bool? isActive,
      final bool? testChecked,
      final List<Photo>? video,
      final List<Photo>? documents,
      final List<Photo>? photo,
      final String? createdAt}) = _$HomeworkModelImpl;

  factory _HomeworkModel.fromJson(Map<String, dynamic> json) =
      _$HomeworkModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  ThemeNew? get theme;
  @override
  BallData? get ball;
  @override
  bool? get isActive;
  @override
  bool? get testChecked;
  @override
  List<Photo>? get video;
  @override
  List<Photo>? get documents;
  @override
  List<Photo>? get photo;
  @override
  String? get createdAt;

  /// Create a copy of HomeworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkModelImplCopyWith<_$HomeworkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'course')
  int? get course => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_level')
  bool? get hasLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_language')
  bool? get isLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_themes')
  int? get allThemes => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this Subject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'course') int? course,
      @JsonKey(name: 'has_level') bool? hasLevel,
      @JsonKey(name: 'is_language') bool? isLanguage,
      @JsonKey(name: 'all_themes') int? allThemes,
      @JsonKey(name: 'label') String? label});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? course = freezed,
    Object? hasLevel = freezed,
    Object? isLanguage = freezed,
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
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      hasLevel: freezed == hasLevel
          ? _value.hasLevel
          : hasLevel // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLanguage: freezed == isLanguage
          ? _value.isLanguage
          : isLanguage // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'course') int? course,
      @JsonKey(name: 'has_level') bool? hasLevel,
      @JsonKey(name: 'is_language') bool? isLanguage,
      @JsonKey(name: 'all_themes') int? allThemes,
      @JsonKey(name: 'label') String? label});
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? course = freezed,
    Object? hasLevel = freezed,
    Object? isLanguage = freezed,
    Object? allThemes = freezed,
    Object? label = freezed,
  }) {
    return _then(_$SubjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      hasLevel: freezed == hasLevel
          ? _value.hasLevel
          : hasLevel // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLanguage: freezed == isLanguage
          ? _value.isLanguage
          : isLanguage // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$SubjectImpl implements _Subject {
  const _$SubjectImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'course') this.course,
      @JsonKey(name: 'has_level') this.hasLevel,
      @JsonKey(name: 'is_language') this.isLanguage,
      @JsonKey(name: 'all_themes') this.allThemes,
      @JsonKey(name: 'label') this.label});

  factory _$SubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'course')
  final int? course;
  @override
  @JsonKey(name: 'has_level')
  final bool? hasLevel;
  @override
  @JsonKey(name: 'is_language')
  final bool? isLanguage;
  @override
  @JsonKey(name: 'all_themes')
  final int? allThemes;
  @override
  @JsonKey(name: 'label')
  final String? label;

  @override
  String toString() {
    return 'Subject(id: $id, name: $name, course: $course, hasLevel: $hasLevel, isLanguage: $isLanguage, allThemes: $allThemes, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.hasLevel, hasLevel) ||
                other.hasLevel == hasLevel) &&
            (identical(other.isLanguage, isLanguage) ||
                other.isLanguage == isLanguage) &&
            (identical(other.allThemes, allThemes) ||
                other.allThemes == allThemes) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, course, hasLevel, isLanguage, allThemes, label);

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectImplToJson(
      this,
    );
  }
}

abstract class _Subject implements Subject {
  const factory _Subject(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'course') final int? course,
      @JsonKey(name: 'has_level') final bool? hasLevel,
      @JsonKey(name: 'is_language') final bool? isLanguage,
      @JsonKey(name: 'all_themes') final int? allThemes,
      @JsonKey(name: 'label') final String? label}) = _$SubjectImpl;

  factory _Subject.fromJson(Map<String, dynamic> json) = _$SubjectImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'course')
  int? get course;
  @override
  @JsonKey(name: 'has_level')
  bool? get hasLevel;
  @override
  @JsonKey(name: 'is_language')
  bool? get isLanguage;
  @override
  @JsonKey(name: 'all_themes')
  int? get allThemes;
  @override
  @JsonKey(name: 'label')
  String? get label;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

File _$FileFromJson(Map<String, dynamic> json) {
  return _File.fromJson(json);
}

/// @nodoc
mixin _$File {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  String? get file => throw _privateConstructorUsedError;

  /// Serializes this File to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileCopyWith<File> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileCopyWith<$Res> {
  factory $FileCopyWith(File value, $Res Function(File) then) =
      _$FileCopyWithImpl<$Res, File>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'file') String? file});
}

/// @nodoc
class _$FileCopyWithImpl<$Res, $Val extends File>
    implements $FileCopyWith<$Res> {
  _$FileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of File
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
abstract class _$$FileImplCopyWith<$Res> implements $FileCopyWith<$Res> {
  factory _$$FileImplCopyWith(
          _$FileImpl value, $Res Function(_$FileImpl) then) =
      __$$FileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'file') String? file});
}

/// @nodoc
class __$$FileImplCopyWithImpl<$Res>
    extends _$FileCopyWithImpl<$Res, _$FileImpl>
    implements _$$FileImplCopyWith<$Res> {
  __$$FileImplCopyWithImpl(_$FileImpl _value, $Res Function(_$FileImpl) _then)
      : super(_value, _then);

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
  }) {
    return _then(_$FileImpl(
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
@JsonSerializable()
class _$FileImpl implements _File {
  const _$FileImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'file') this.file});

  factory _$FileImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'file')
  final String? file;

  @override
  String toString() {
    return 'File(id: $id, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, file);

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      __$$FileImplCopyWithImpl<_$FileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileImplToJson(
      this,
    );
  }
}

abstract class _File implements File {
  const factory _File(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'file') final String? file}) = _$FileImpl;

  factory _File.fromJson(Map<String, dynamic> json) = _$FileImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'file')
  String? get file;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileImplCopyWith<_$FileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeworksModel _$HomeworksModelFromJson(Map<String, dynamic> json) {
  return _HomeworksModel.fromJson(json);
}

/// @nodoc
mixin _$HomeworksModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  ThemeNew? get theme => throw _privateConstructorUsedError;
  BallData? get ball => throw _privateConstructorUsedError;
  int? get studentBall => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  List<Photo>? get video => throw _privateConstructorUsedError;
  List<Photo>? get documents => throw _privateConstructorUsedError;
  List<Photo>? get photo => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this HomeworksModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworksModelCopyWith<HomeworksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworksModelCopyWith<$Res> {
  factory $HomeworksModelCopyWith(
          HomeworksModel value, $Res Function(HomeworksModel) then) =
      _$HomeworksModelCopyWithImpl<$Res, HomeworksModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      ThemeNew? theme,
      BallData? ball,
      int? studentBall,
      bool? isActive,
      List<Photo>? video,
      List<Photo>? documents,
      List<Photo>? photo,
      String? createdAt});

  $ThemeNewCopyWith<$Res>? get theme;
  $BallDataCopyWith<$Res>? get ball;
}

/// @nodoc
class _$HomeworksModelCopyWithImpl<$Res, $Val extends HomeworksModel>
    implements $HomeworksModelCopyWith<$Res> {
  _$HomeworksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? theme = freezed,
    Object? ball = freezed,
    Object? studentBall = freezed,
    Object? isActive = freezed,
    Object? video = freezed,
    Object? documents = freezed,
    Object? photo = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeNew?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as BallData?,
      studentBall: freezed == studentBall
          ? _value.studentBall
          : studentBall // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeNewCopyWith<$Res>? get theme {
    if (_value.theme == null) {
      return null;
    }

    return $ThemeNewCopyWith<$Res>(_value.theme!, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BallDataCopyWith<$Res>? get ball {
    if (_value.ball == null) {
      return null;
    }

    return $BallDataCopyWith<$Res>(_value.ball!, (value) {
      return _then(_value.copyWith(ball: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeworksModelImplCopyWith<$Res>
    implements $HomeworksModelCopyWith<$Res> {
  factory _$$HomeworksModelImplCopyWith(_$HomeworksModelImpl value,
          $Res Function(_$HomeworksModelImpl) then) =
      __$$HomeworksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      ThemeNew? theme,
      BallData? ball,
      int? studentBall,
      bool? isActive,
      List<Photo>? video,
      List<Photo>? documents,
      List<Photo>? photo,
      String? createdAt});

  @override
  $ThemeNewCopyWith<$Res>? get theme;
  @override
  $BallDataCopyWith<$Res>? get ball;
}

/// @nodoc
class __$$HomeworksModelImplCopyWithImpl<$Res>
    extends _$HomeworksModelCopyWithImpl<$Res, _$HomeworksModelImpl>
    implements _$$HomeworksModelImplCopyWith<$Res> {
  __$$HomeworksModelImplCopyWithImpl(
      _$HomeworksModelImpl _value, $Res Function(_$HomeworksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? theme = freezed,
    Object? ball = freezed,
    Object? studentBall = freezed,
    Object? isActive = freezed,
    Object? video = freezed,
    Object? documents = freezed,
    Object? photo = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$HomeworksModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeNew?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as BallData?,
      studentBall: freezed == studentBall
          ? _value.studentBall
          : studentBall // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$HomeworksModelImpl implements _HomeworksModel {
  const _$HomeworksModelImpl(
      {this.id,
      this.title,
      this.body,
      this.theme,
      this.ball,
      this.studentBall,
      this.isActive,
      final List<Photo>? video,
      final List<Photo>? documents,
      final List<Photo>? photo,
      this.createdAt})
      : _video = video,
        _documents = documents,
        _photo = photo;

  factory _$HomeworksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworksModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final ThemeNew? theme;
  @override
  final BallData? ball;
  @override
  final int? studentBall;
  @override
  final bool? isActive;
  final List<Photo>? _video;
  @override
  List<Photo>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _documents;
  @override
  List<Photo>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Photo>? _photo;
  @override
  List<Photo>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;

  @override
  String toString() {
    return 'HomeworksModel(id: $id, title: $title, body: $body, theme: $theme, ball: $ball, studentBall: $studentBall, isActive: $isActive, video: $video, documents: $documents, photo: $photo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworksModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.ball, ball) || other.ball == ball) &&
            (identical(other.studentBall, studentBall) ||
                other.studentBall == studentBall) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._video, _video) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      theme,
      ball,
      studentBall,
      isActive,
      const DeepCollectionEquality().hash(_video),
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(_photo),
      createdAt);

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworksModelImplCopyWith<_$HomeworksModelImpl> get copyWith =>
      __$$HomeworksModelImplCopyWithImpl<_$HomeworksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworksModelImplToJson(
      this,
    );
  }
}

abstract class _HomeworksModel implements HomeworksModel {
  const factory _HomeworksModel(
      {final String? id,
      final String? title,
      final String? body,
      final ThemeNew? theme,
      final BallData? ball,
      final int? studentBall,
      final bool? isActive,
      final List<Photo>? video,
      final List<Photo>? documents,
      final List<Photo>? photo,
      final String? createdAt}) = _$HomeworksModelImpl;

  factory _HomeworksModel.fromJson(Map<String, dynamic> json) =
      _$HomeworksModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  ThemeNew? get theme;
  @override
  BallData? get ball;
  @override
  int? get studentBall;
  @override
  bool? get isActive;
  @override
  List<Photo>? get video;
  @override
  List<Photo>? get documents;
  @override
  List<Photo>? get photo;
  @override
  String? get createdAt;

  /// Create a copy of HomeworksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworksModelImplCopyWith<_$HomeworksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BallData _$BallDataFromJson(Map<String, dynamic> json) {
  return _BallData.fromJson(json);
}

/// @nodoc
mixin _$BallData {
  int? get overallAvg => throw _privateConstructorUsedError;
  int? get onlineAvg => throw _privateConstructorUsedError;
  int? get offlineAvg => throw _privateConstructorUsedError;
  int? get ball => throw _privateConstructorUsedError;

  /// Serializes this BallData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BallData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BallDataCopyWith<BallData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BallDataCopyWith<$Res> {
  factory $BallDataCopyWith(BallData value, $Res Function(BallData) then) =
      _$BallDataCopyWithImpl<$Res, BallData>;
  @useResult
  $Res call({int? overallAvg, int? onlineAvg, int? offlineAvg, int? ball});
}

/// @nodoc
class _$BallDataCopyWithImpl<$Res, $Val extends BallData>
    implements $BallDataCopyWith<$Res> {
  _$BallDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BallData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallAvg = freezed,
    Object? onlineAvg = freezed,
    Object? offlineAvg = freezed,
    Object? ball = freezed,
  }) {
    return _then(_value.copyWith(
      overallAvg: freezed == overallAvg
          ? _value.overallAvg
          : overallAvg // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineAvg: freezed == onlineAvg
          ? _value.onlineAvg
          : onlineAvg // ignore: cast_nullable_to_non_nullable
              as int?,
      offlineAvg: freezed == offlineAvg
          ? _value.offlineAvg
          : offlineAvg // ignore: cast_nullable_to_non_nullable
              as int?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BallDataImplCopyWith<$Res>
    implements $BallDataCopyWith<$Res> {
  factory _$$BallDataImplCopyWith(
          _$BallDataImpl value, $Res Function(_$BallDataImpl) then) =
      __$$BallDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? overallAvg, int? onlineAvg, int? offlineAvg, int? ball});
}

/// @nodoc
class __$$BallDataImplCopyWithImpl<$Res>
    extends _$BallDataCopyWithImpl<$Res, _$BallDataImpl>
    implements _$$BallDataImplCopyWith<$Res> {
  __$$BallDataImplCopyWithImpl(
      _$BallDataImpl _value, $Res Function(_$BallDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BallData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallAvg = freezed,
    Object? onlineAvg = freezed,
    Object? offlineAvg = freezed,
    Object? ball = freezed,
  }) {
    return _then(_$BallDataImpl(
      overallAvg: freezed == overallAvg
          ? _value.overallAvg
          : overallAvg // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineAvg: freezed == onlineAvg
          ? _value.onlineAvg
          : onlineAvg // ignore: cast_nullable_to_non_nullable
              as int?,
      offlineAvg: freezed == offlineAvg
          ? _value.offlineAvg
          : offlineAvg // ignore: cast_nullable_to_non_nullable
              as int?,
      ball: freezed == ball
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BallDataImpl implements _BallData {
  const _$BallDataImpl(
      {this.overallAvg, this.onlineAvg, this.offlineAvg, this.ball});

  factory _$BallDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BallDataImplFromJson(json);

  @override
  final int? overallAvg;
  @override
  final int? onlineAvg;
  @override
  final int? offlineAvg;
  @override
  final int? ball;

  @override
  String toString() {
    return 'BallData(overallAvg: $overallAvg, onlineAvg: $onlineAvg, offlineAvg: $offlineAvg, ball: $ball)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BallDataImpl &&
            (identical(other.overallAvg, overallAvg) ||
                other.overallAvg == overallAvg) &&
            (identical(other.onlineAvg, onlineAvg) ||
                other.onlineAvg == onlineAvg) &&
            (identical(other.offlineAvg, offlineAvg) ||
                other.offlineAvg == offlineAvg) &&
            (identical(other.ball, ball) || other.ball == ball));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, overallAvg, onlineAvg, offlineAvg, ball);

  /// Create a copy of BallData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BallDataImplCopyWith<_$BallDataImpl> get copyWith =>
      __$$BallDataImplCopyWithImpl<_$BallDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BallDataImplToJson(
      this,
    );
  }
}

abstract class _BallData implements BallData {
  const factory _BallData(
      {final int? overallAvg,
      final int? onlineAvg,
      final int? offlineAvg,
      final int? ball}) = _$BallDataImpl;

  factory _BallData.fromJson(Map<String, dynamic> json) =
      _$BallDataImpl.fromJson;

  @override
  int? get overallAvg;
  @override
  int? get onlineAvg;
  @override
  int? get offlineAvg;
  @override
  int? get ball;

  /// Create a copy of BallData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BallDataImplCopyWith<_$BallDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeworkData _$HomeworkDataFromJson(Map<String, dynamic> json) {
  return _HomeworkData.fromJson(json);
}

/// @nodoc
mixin _$HomeworkData {
  String? get id => throw _privateConstructorUsedError;
  bool? get testChecked => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get homework => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this HomeworkData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkDataCopyWith<HomeworkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkDataCopyWith<$Res> {
  factory $HomeworkDataCopyWith(
          HomeworkData value, $Res Function(HomeworkData) then) =
      _$HomeworkDataCopyWithImpl<$Res, HomeworkData>;
  @useResult
  $Res call(
      {String? id,
      bool? testChecked,
      bool? isActive,
      String? homework,
      String? status});
}

/// @nodoc
class _$HomeworkDataCopyWithImpl<$Res, $Val extends HomeworkData>
    implements $HomeworkDataCopyWith<$Res> {
  _$HomeworkDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testChecked = freezed,
    Object? isActive = freezed,
    Object? homework = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      testChecked: freezed == testChecked
          ? _value.testChecked
          : testChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      homework: freezed == homework
          ? _value.homework
          : homework // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkDataImplCopyWith<$Res>
    implements $HomeworkDataCopyWith<$Res> {
  factory _$$HomeworkDataImplCopyWith(
          _$HomeworkDataImpl value, $Res Function(_$HomeworkDataImpl) then) =
      __$$HomeworkDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? testChecked,
      bool? isActive,
      String? homework,
      String? status});
}

/// @nodoc
class __$$HomeworkDataImplCopyWithImpl<$Res>
    extends _$HomeworkDataCopyWithImpl<$Res, _$HomeworkDataImpl>
    implements _$$HomeworkDataImplCopyWith<$Res> {
  __$$HomeworkDataImplCopyWithImpl(
      _$HomeworkDataImpl _value, $Res Function(_$HomeworkDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testChecked = freezed,
    Object? isActive = freezed,
    Object? homework = freezed,
    Object? status = freezed,
  }) {
    return _then(_$HomeworkDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      testChecked: freezed == testChecked
          ? _value.testChecked
          : testChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      homework: freezed == homework
          ? _value.homework
          : homework // ignore: cast_nullable_to_non_nullable
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
class _$HomeworkDataImpl implements _HomeworkData {
  const _$HomeworkDataImpl(
      {this.id, this.testChecked, this.isActive, this.homework, this.status});

  factory _$HomeworkDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkDataImplFromJson(json);

  @override
  final String? id;
  @override
  final bool? testChecked;
  @override
  final bool? isActive;
  @override
  final String? homework;
  @override
  final String? status;

  @override
  String toString() {
    return 'HomeworkData(id: $id, testChecked: $testChecked, isActive: $isActive, homework: $homework, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.testChecked, testChecked) ||
                other.testChecked == testChecked) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.homework, homework) ||
                other.homework == homework) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, testChecked, isActive, homework, status);

  /// Create a copy of HomeworkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkDataImplCopyWith<_$HomeworkDataImpl> get copyWith =>
      __$$HomeworkDataImplCopyWithImpl<_$HomeworkDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkDataImplToJson(
      this,
    );
  }
}

abstract class _HomeworkData implements HomeworkData {
  const factory _HomeworkData(
      {final String? id,
      final bool? testChecked,
      final bool? isActive,
      final String? homework,
      final String? status}) = _$HomeworkDataImpl;

  factory _HomeworkData.fromJson(Map<String, dynamic> json) =
      _$HomeworkDataImpl.fromJson;

  @override
  String? get id;
  @override
  bool? get testChecked;
  @override
  bool? get isActive;
  @override
  String? get homework;
  @override
  String? get status;

  /// Create a copy of HomeworkData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkDataImplCopyWith<_$HomeworkDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
