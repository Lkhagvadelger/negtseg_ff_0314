// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileMenuStruct extends BaseStruct {
  ProfileMenuStruct({
    String? title,
    String? id,
    String? iconUrl,
  })  : _title = title,
        _id = id,
        _iconUrl = iconUrl;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "IconUrl" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  set iconUrl(String? val) => _iconUrl = val;
  bool hasIconUrl() => _iconUrl != null;

  static ProfileMenuStruct fromMap(Map<String, dynamic> data) =>
      ProfileMenuStruct(
        title: data['Title'] as String?,
        id: data['id'] as String?,
        iconUrl: data['IconUrl'] as String?,
      );

  static ProfileMenuStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileMenuStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Title': _title,
        'id': _id,
        'IconUrl': _iconUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Title': serializeParam(
          _title,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'IconUrl': serializeParam(
          _iconUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileMenuStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileMenuStruct(
        title: deserializeParam(
          data['Title'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        iconUrl: deserializeParam(
          data['IconUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileMenuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileMenuStruct &&
        title == other.title &&
        id == other.id &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([title, id, iconUrl]);
}

ProfileMenuStruct createProfileMenuStruct({
  String? title,
  String? id,
  String? iconUrl,
}) =>
    ProfileMenuStruct(
      title: title,
      id: id,
      iconUrl: iconUrl,
    );
