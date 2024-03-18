// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    String? id,
    String? email,
    String? phoneNumber,
    bool? emailVerified,
    bool? phoneVerified,
    String? name,
  })  : _id = id,
        _email = email,
        _phoneNumber = phoneNumber,
        _emailVerified = emailVerified,
        _phoneVerified = phoneVerified,
        _name = name;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "emailVerified" field.
  bool? _emailVerified;
  bool get emailVerified => _emailVerified ?? false;
  set emailVerified(bool? val) => _emailVerified = val;
  bool hasEmailVerified() => _emailVerified != null;

  // "phoneVerified" field.
  bool? _phoneVerified;
  bool get phoneVerified => _phoneVerified ?? false;
  set phoneVerified(bool? val) => _phoneVerified = val;
  bool hasPhoneVerified() => _phoneVerified != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        id: data['id'] as String?,
        email: data['email'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        emailVerified: data['emailVerified'] as bool?,
        phoneVerified: data['phoneVerified'] as bool?,
        name: data['name'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'phoneNumber': _phoneNumber,
        'emailVerified': _emailVerified,
        'phoneVerified': _phoneVerified,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'emailVerified': serializeParam(
          _emailVerified,
          ParamType.bool,
        ),
        'phoneVerified': serializeParam(
          _phoneVerified,
          ParamType.bool,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        emailVerified: deserializeParam(
          data['emailVerified'],
          ParamType.bool,
          false,
        ),
        phoneVerified: deserializeParam(
          data['phoneVerified'],
          ParamType.bool,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        id == other.id &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        emailVerified == other.emailVerified &&
        phoneVerified == other.phoneVerified &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, email, phoneNumber, emailVerified, phoneVerified, name]);
}

UserDataStruct createUserDataStruct({
  String? id,
  String? email,
  String? phoneNumber,
  bool? emailVerified,
  bool? phoneVerified,
  String? name,
}) =>
    UserDataStruct(
      id: id,
      email: email,
      phoneNumber: phoneNumber,
      emailVerified: emailVerified,
      phoneVerified: phoneVerified,
      name: name,
    );
