// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromosStruct extends BaseStruct {
  PromosStruct({
    String? id,
    PromoTypeStruct? type,
    String? categoryMainId,
    MediaCategoryStruct? media,
  })  : _id = id,
        _type = type,
        _categoryMainId = categoryMainId,
        _media = media;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "type" field.
  PromoTypeStruct? _type;
  PromoTypeStruct get type => _type ?? PromoTypeStruct();
  set type(PromoTypeStruct? val) => _type = val;
  void updateType(Function(PromoTypeStruct) updateFn) =>
      updateFn(_type ??= PromoTypeStruct());
  bool hasType() => _type != null;

  // "categoryMainId" field.
  String? _categoryMainId;
  String get categoryMainId => _categoryMainId ?? '';
  set categoryMainId(String? val) => _categoryMainId = val;
  bool hasCategoryMainId() => _categoryMainId != null;

  // "media" field.
  MediaCategoryStruct? _media;
  MediaCategoryStruct get media => _media ?? MediaCategoryStruct();
  set media(MediaCategoryStruct? val) => _media = val;
  void updateMedia(Function(MediaCategoryStruct) updateFn) =>
      updateFn(_media ??= MediaCategoryStruct());
  bool hasMedia() => _media != null;

  static PromosStruct fromMap(Map<String, dynamic> data) => PromosStruct(
        id: data['id'] as String?,
        type: PromoTypeStruct.maybeFromMap(data['type']),
        categoryMainId: data['categoryMainId'] as String?,
        media: MediaCategoryStruct.maybeFromMap(data['media']),
      );

  static PromosStruct? maybeFromMap(dynamic data) =>
      data is Map ? PromosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type?.toMap(),
        'categoryMainId': _categoryMainId,
        'media': _media?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.DataStruct,
        ),
        'categoryMainId': serializeParam(
          _categoryMainId,
          ParamType.String,
        ),
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PromosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        type: deserializeStructParam(
          data['type'],
          ParamType.DataStruct,
          false,
          structBuilder: PromoTypeStruct.fromSerializableMap,
        ),
        categoryMainId: deserializeParam(
          data['categoryMainId'],
          ParamType.String,
          false,
        ),
        media: deserializeStructParam(
          data['media'],
          ParamType.DataStruct,
          false,
          structBuilder: MediaCategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PromosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromosStruct &&
        id == other.id &&
        type == other.type &&
        categoryMainId == other.categoryMainId &&
        media == other.media;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, type, categoryMainId, media]);
}

PromosStruct createPromosStruct({
  String? id,
  PromoTypeStruct? type,
  String? categoryMainId,
  MediaCategoryStruct? media,
}) =>
    PromosStruct(
      id: id,
      type: type ?? PromoTypeStruct(),
      categoryMainId: categoryMainId,
      media: media ?? MediaCategoryStruct(),
    );
