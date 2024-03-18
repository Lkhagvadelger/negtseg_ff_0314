// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsConfigStruct extends BaseStruct {
  SettingsConfigStruct({
    bool? postPublished,
    bool? newPost,
    bool? postReturn,
    bool? chatPost,
    bool? chatPostReturn,
  })  : _postPublished = postPublished,
        _newPost = newPost,
        _postReturn = postReturn,
        _chatPost = chatPost,
        _chatPostReturn = chatPostReturn;

  // "postPublished" field.
  bool? _postPublished;
  bool get postPublished => _postPublished ?? false;
  set postPublished(bool? val) => _postPublished = val;
  bool hasPostPublished() => _postPublished != null;

  // "newPost" field.
  bool? _newPost;
  bool get newPost => _newPost ?? false;
  set newPost(bool? val) => _newPost = val;
  bool hasNewPost() => _newPost != null;

  // "postReturn" field.
  bool? _postReturn;
  bool get postReturn => _postReturn ?? false;
  set postReturn(bool? val) => _postReturn = val;
  bool hasPostReturn() => _postReturn != null;

  // "chatPost" field.
  bool? _chatPost;
  bool get chatPost => _chatPost ?? false;
  set chatPost(bool? val) => _chatPost = val;
  bool hasChatPost() => _chatPost != null;

  // "chatPostReturn" field.
  bool? _chatPostReturn;
  bool get chatPostReturn => _chatPostReturn ?? false;
  set chatPostReturn(bool? val) => _chatPostReturn = val;
  bool hasChatPostReturn() => _chatPostReturn != null;

  static SettingsConfigStruct fromMap(Map<String, dynamic> data) =>
      SettingsConfigStruct(
        postPublished: data['postPublished'] as bool?,
        newPost: data['newPost'] as bool?,
        postReturn: data['postReturn'] as bool?,
        chatPost: data['chatPost'] as bool?,
        chatPostReturn: data['chatPostReturn'] as bool?,
      );

  static SettingsConfigStruct? maybeFromMap(dynamic data) => data is Map
      ? SettingsConfigStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'postPublished': _postPublished,
        'newPost': _newPost,
        'postReturn': _postReturn,
        'chatPost': _chatPost,
        'chatPostReturn': _chatPostReturn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'postPublished': serializeParam(
          _postPublished,
          ParamType.bool,
        ),
        'newPost': serializeParam(
          _newPost,
          ParamType.bool,
        ),
        'postReturn': serializeParam(
          _postReturn,
          ParamType.bool,
        ),
        'chatPost': serializeParam(
          _chatPost,
          ParamType.bool,
        ),
        'chatPostReturn': serializeParam(
          _chatPostReturn,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SettingsConfigStruct fromSerializableMap(Map<String, dynamic> data) =>
      SettingsConfigStruct(
        postPublished: deserializeParam(
          data['postPublished'],
          ParamType.bool,
          false,
        ),
        newPost: deserializeParam(
          data['newPost'],
          ParamType.bool,
          false,
        ),
        postReturn: deserializeParam(
          data['postReturn'],
          ParamType.bool,
          false,
        ),
        chatPost: deserializeParam(
          data['chatPost'],
          ParamType.bool,
          false,
        ),
        chatPostReturn: deserializeParam(
          data['chatPostReturn'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SettingsConfigStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SettingsConfigStruct &&
        postPublished == other.postPublished &&
        newPost == other.newPost &&
        postReturn == other.postReturn &&
        chatPost == other.chatPost &&
        chatPostReturn == other.chatPostReturn;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([postPublished, newPost, postReturn, chatPost, chatPostReturn]);
}

SettingsConfigStruct createSettingsConfigStruct({
  bool? postPublished,
  bool? newPost,
  bool? postReturn,
  bool? chatPost,
  bool? chatPostReturn,
}) =>
    SettingsConfigStruct(
      postPublished: postPublished,
      newPost: newPost,
      postReturn: postReturn,
      chatPost: chatPost,
      chatPostReturn: chatPostReturn,
    );
