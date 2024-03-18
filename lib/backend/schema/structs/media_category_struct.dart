// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaCategoryStruct extends BaseStruct {
  MediaCategoryStruct({
    String? icon,
  }) : _icon = icon;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;
  bool hasIcon() => _icon != null;

  static MediaCategoryStruct fromMap(Map<String, dynamic> data) =>
      MediaCategoryStruct(
        icon: data['icon'] as String?,
      );

  static MediaCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? MediaCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'icon': _icon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'icon': serializeParam(
          _icon,
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
      );

  @override
  String toString() => 'MediaCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MediaCategoryStruct && icon == other.icon;
  }

  @override
  int get hashCode => const ListEquality().hash([icon]);
}

MediaCategoryStruct createMediaCategoryStruct({
  String? icon,
}) =>
    MediaCategoryStruct(
      icon: icon,
    );
