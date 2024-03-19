// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaCategoryStruct extends BaseStruct {
  MediaCategoryStruct({
    String? icon,
    String? img,
  })  : _icon = icon,
        _img = img;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;
  bool hasIcon() => _icon != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  static MediaCategoryStruct fromMap(Map<String, dynamic> data) =>
      MediaCategoryStruct(
        icon: data['icon'] as String?,
        img: data['img'] as String?,
      );

  static MediaCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? MediaCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'icon': _icon,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static MediaCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      MediaCategoryStruct(
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MediaCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MediaCategoryStruct &&
        icon == other.icon &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([icon, img]);
}

MediaCategoryStruct createMediaCategoryStruct({
  String? icon,
  String? img,
}) =>
    MediaCategoryStruct(
      icon: icon,
      img: img,
    );
