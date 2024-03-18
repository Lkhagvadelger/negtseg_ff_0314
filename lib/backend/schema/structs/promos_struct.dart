// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromosStruct extends BaseStruct {
  PromosStruct({
    String? id,
    String? media,
    PromoTypeStruct? type,
    String? categoryMainId,
  })  : _id = id,
        _media = media,
        _type = type,
        _categoryMainId = categoryMainId;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "media" field.
  String? _media;
  String get media => _media ?? '';
  set media(String? val) => _media = val;
  bool hasMedia() => _media != null;

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

  static PromosStruct fromMap(Map<String, dynamic> data) => PromosStruct(
        id: data['id'] as String?,
        media: data['media'] as String?,
        type: PromoTypeStruct.maybeFromMap(data['type']),
        categoryMainId: data['categoryMainId'] as String?,
      );

  static PromosStruct? maybeFromMap(dynamic data) =>
      data is Map ? PromosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'media': _media,
        'type': _type?.toMap(),
        'categoryMainId': _categoryMainId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'media': serializeParam(
          _media,
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
      }.withoutNulls;

  static PromosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        media: deserializeParam(
          data['media'],
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
      );

  @override
  String toString() => 'PromosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromosStruct &&
        id == other.id &&
        media == other.media &&
        type == other.type &&
        categoryMainId == other.categoryMainId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, media, type, categoryMainId]);
}

PromosStruct createPromosStruct({
  String? id,
  String? media,
  PromoTypeStruct? type,
  String? categoryMainId,
}) =>
    PromosStruct(
      id: id,
      media: media,
      type: type ?? PromoTypeStruct(),
      categoryMainId: categoryMainId,
    );
