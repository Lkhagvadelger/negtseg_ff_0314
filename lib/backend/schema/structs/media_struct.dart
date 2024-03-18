// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaStruct extends BaseStruct {
  MediaStruct({
    String? fileName,
    String? fileType,
  })  : _fileName = fileName,
        _fileType = fileType;

  // "fileName" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;
  bool hasFileName() => _fileName != null;

  // "fileType" field.
  String? _fileType;
  String get fileType => _fileType ?? '';
  set fileType(String? val) => _fileType = val;
  bool hasFileType() => _fileType != null;

  static MediaStruct fromMap(Map<String, dynamic> data) => MediaStruct(
        fileName: data['fileName'] as String?,
        fileType: data['fileType'] as String?,
      );

  static MediaStruct? maybeFromMap(dynamic data) =>
      data is Map ? MediaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fileName': _fileName,
        'fileType': _fileType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fileName': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'fileType': serializeParam(
          _fileType,
          ParamType.String,
        ),
      }.withoutNulls;

  static MediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MediaStruct(
        fileName: deserializeParam(
          data['fileName'],
          ParamType.String,
          false,
        ),
        fileType: deserializeParam(
          data['fileType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MediaStruct &&
        fileName == other.fileName &&
        fileType == other.fileType;
  }

  @override
  int get hashCode => const ListEquality().hash([fileName, fileType]);
}

MediaStruct createMediaStruct({
  String? fileName,
  String? fileType,
}) =>
    MediaStruct(
      fileName: fileName,
      fileType: fileType,
    );
