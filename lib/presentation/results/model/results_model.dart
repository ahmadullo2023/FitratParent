import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/models/file/file_model.dart';
import '../../home/model/student_model.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';


@freezed
class ResultsModel with _$ResultsModel {
  const factory ResultsModel({
    String? id,

    @JsonKey(name: 'student_id')
    String? studentId,

    @JsonKey(name: 'fk_name')
    FKNameModel? fkName,

    @JsonKey(name: 'full_name')
    String? fullName,

    @JsonKey(name: 'student_photo')
    Photo? studentPhoto,

    String? type,
    String? teacher,
    String? point,
    FileModel? file
  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
}


@freezed
class FKNameModel with _$FKNameModel {
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

const factory FKNameModel({
String? id,
String? name,
String? who,
String? pointType,
String? type
}) = _FKNameModel;

factory FKNameModel.fromJson(Map<String, dynamic> json) =>
_$FKNameModelFromJson(json);
}
