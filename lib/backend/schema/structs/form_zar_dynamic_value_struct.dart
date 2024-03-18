// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormZarDynamicValueStruct extends BaseStruct {
  FormZarDynamicValueStruct({
    String? key,
    String? value,
  })  : _key = key,
        _value = value;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;
  bool hasKey() => _key != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;
  bool hasValue() => _value != null;

  static FormZarDynamicValueStruct fromMap(Map<String, dynamic> data) =>
      FormZarDynamicValueStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
      );

  static FormZarDynamicValueStruct? maybeFromMap(dynamic data) => data is Map
      ? FormZarDynamicValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static FormZarDynamicValueStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FormZarDynamicValueStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FormZarDynamicValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FormZarDynamicValueStruct &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([key, value]);
}

FormZarDynamicValueStruct createFormZarDynamicValueStruct({
  String? key,
  String? value,
}) =>
    FormZarDynamicValueStruct(
      key: key,
      value: value,
    );
