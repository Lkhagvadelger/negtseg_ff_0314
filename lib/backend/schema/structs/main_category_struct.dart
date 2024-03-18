// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainCategoryStruct extends BaseStruct {
  MainCategoryStruct({
    String? id,
    String? title,
    String? colorCode,
    MediaCategoryStruct? media,
    bool? isActive,
    String? countryId,
  })  : _id = id,
        _title = title,
        _colorCode = colorCode,
        _media = media,
        _isActive = isActive,
        _countryId = countryId;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "colorCode" field.
  String? _colorCode;
  String get colorCode => _colorCode ?? '';
  set colorCode(String? val) => _colorCode = val;
  bool hasColorCode() => _colorCode != null;

  // "media" field.
  MediaCategoryStruct? _media;
  MediaCategoryStruct get media => _media ?? MediaCategoryStruct();
  set media(MediaCategoryStruct? val) => _media = val;
  void updateMedia(Function(MediaCategoryStruct) updateFn) =>
      updateFn(_media ??= MediaCategoryStruct());
  bool hasMedia() => _media != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;
  bool hasIsActive() => _isActive != null;

  // "countryId" field.
  String? _countryId;
  String get countryId => _countryId ?? '';
  set countryId(String? val) => _countryId = val;
  bool hasCountryId() => _countryId != null;

  static MainCategoryStruct fromMap(Map<String, dynamic> data) =>
      MainCategoryStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        colorCode: data['colorCode'] as String?,
        media: MediaCategoryStruct.maybeFromMap(data['media']),
        isActive: data['isActive'] as bool?,
        countryId: data['countryId'] as String?,
      );

  static MainCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? MainCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'colorCode': _colorCode,
        'media': _media?.toMap(),
        'isActive': _isActive,
        'countryId': _countryId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'colorCode': serializeParam(
          _colorCode,
          ParamType.String,
        ),
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'countryId': serializeParam(
          _countryId,
          ParamType.String,
        ),
      }.withoutNulls;

  static MainCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      MainCategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        colorCode: deserializeParam(
          data['colorCode'],
          ParamType.String,
          false,
        ),
        media: deserializeStructParam(
          data['media'],
          ParamType.DataStruct,
          false,
          structBuilder: MediaCategoryStruct.fromSerializableMap,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        countryId: deserializeParam(
          data['countryId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MainCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MainCategoryStruct &&
        id == other.id &&
        title == other.title &&
        colorCode == other.colorCode &&
        media == other.media &&
        isActive == other.isActive &&
        countryId == other.countryId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, title, colorCode, media, isActive, countryId]);
}

MainCategoryStruct createMainCategoryStruct({
  String? id,
  String? title,
  String? colorCode,
  MediaCategoryStruct? media,
  bool? isActive,
  String? countryId,
}) =>
    MainCategoryStruct(
      id: id,
      title: title,
      colorCode: colorCode,
      media: media ?? MediaCategoryStruct(),
      isActive: isActive,
      countryId: countryId,
    );
