// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromoTypeStruct extends BaseStruct {
  PromoTypeStruct({
    String? id,
    String? name,
    String? description,
    String? value,
    String? countryId,
  })  : _id = id,
        _name = name,
        _description = description,
        _value = value,
        _countryId = countryId;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;
  bool hasValue() => _value != null;

  // "countryId" field.
  String? _countryId;
  String get countryId => _countryId ?? '';
  set countryId(String? val) => _countryId = val;
  bool hasCountryId() => _countryId != null;

  static PromoTypeStruct fromMap(Map<String, dynamic> data) => PromoTypeStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        value: data['value'] as String?,
        countryId: data['countryId'] as String?,
      );

  static PromoTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? PromoTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'value': _value,
        'countryId': _countryId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'countryId': serializeParam(
          _countryId,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromoTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromoTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        countryId: deserializeParam(
          data['countryId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromoTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromoTypeStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        value == other.value &&
        countryId == other.countryId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, description, value, countryId]);
}

PromoTypeStruct createPromoTypeStruct({
  String? id,
  String? name,
  String? description,
  String? value,
  String? countryId,
}) =>
    PromoTypeStruct(
      id: id,
      name: name,
      description: description,
      value: value,
      countryId: countryId,
    );
