// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryFilterStruct extends BaseStruct {
  CategoryFilterStruct({
    String? key,
    List<String>? data,
    String? label,
    bool? isMulti,
    bool? isRequired,
    String? dataType,
    String? value,
  })  : _key = key,
        _data = data,
        _label = label,
        _isMulti = isMulti,
        _isRequired = isRequired,
        _dataType = dataType,
        _value = value;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;
  bool hasKey() => _key != null;

  // "data" field.
  List<String>? _data;
  List<String> get data => _data ?? const [];
  set data(List<String>? val) => _data = val;
  void updateData(Function(List<String>) updateFn) => updateFn(_data ??= []);
  bool hasData() => _data != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;
  bool hasLabel() => _label != null;

  // "isMulti" field.
  bool? _isMulti;
  bool get isMulti => _isMulti ?? false;
  set isMulti(bool? val) => _isMulti = val;
  bool hasIsMulti() => _isMulti != null;

  // "isRequired" field.
  bool? _isRequired;
  bool get isRequired => _isRequired ?? false;
  set isRequired(bool? val) => _isRequired = val;
  bool hasIsRequired() => _isRequired != null;

  // "dataType" field.
  String? _dataType;
  String get dataType => _dataType ?? '';
  set dataType(String? val) => _dataType = val;
  bool hasDataType() => _dataType != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;
  bool hasValue() => _value != null;

  static CategoryFilterStruct fromMap(Map<String, dynamic> data) =>
      CategoryFilterStruct(
        key: data['key'] as String?,
        data: getDataList(data['data']),
        label: data['label'] as String?,
        isMulti: data['isMulti'] as bool?,
        isRequired: data['isRequired'] as bool?,
        dataType: data['dataType'] as String?,
        value: data['value'] as String?,
      );

  static CategoryFilterStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoryFilterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'data': _data,
        'label': _label,
        'isMulti': _isMulti,
        'isRequired': _isRequired,
        'dataType': _dataType,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
          true,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'isMulti': serializeParam(
          _isMulti,
          ParamType.bool,
        ),
        'isRequired': serializeParam(
          _isRequired,
          ParamType.bool,
        ),
        'dataType': serializeParam(
          _dataType,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryFilterStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryFilterStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        data: deserializeParam<String>(
          data['data'],
          ParamType.String,
          true,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        isMulti: deserializeParam(
          data['isMulti'],
          ParamType.bool,
          false,
        ),
        isRequired: deserializeParam(
          data['isRequired'],
          ParamType.bool,
          false,
        ),
        dataType: deserializeParam(
          data['dataType'],
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
  String toString() => 'CategoryFilterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoryFilterStruct &&
        key == other.key &&
        listEquality.equals(data, other.data) &&
        label == other.label &&
        isMulti == other.isMulti &&
        isRequired == other.isRequired &&
        dataType == other.dataType &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([key, data, label, isMulti, isRequired, dataType, value]);
}

CategoryFilterStruct createCategoryFilterStruct({
  String? key,
  String? label,
  bool? isMulti,
  bool? isRequired,
  String? dataType,
  String? value,
}) =>
    CategoryFilterStruct(
      key: key,
      label: label,
      isMulti: isMulti,
      isRequired: isRequired,
      dataType: dataType,
      value: value,
    );
