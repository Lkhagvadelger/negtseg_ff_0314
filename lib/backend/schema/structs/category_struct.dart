// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? id,
    String? name,
    int? sortIndex,
    List<CategoryFilterStruct>? filterCategory,
    MediaCategoryStruct? media,
    int? totalCount,
    List<CategoryStruct>? children,
  })  : _id = id,
        _name = name,
        _sortIndex = sortIndex,
        _filterCategory = filterCategory,
        _media = media,
        _totalCount = totalCount,
        _children = children;

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

  // "sortIndex" field.
  int? _sortIndex;
  int get sortIndex => _sortIndex ?? 0;
  set sortIndex(int? val) => _sortIndex = val;
  void incrementSortIndex(int amount) => _sortIndex = sortIndex + amount;
  bool hasSortIndex() => _sortIndex != null;

  // "filterCategory" field.
  List<CategoryFilterStruct>? _filterCategory;
  List<CategoryFilterStruct> get filterCategory => _filterCategory ?? const [];
  set filterCategory(List<CategoryFilterStruct>? val) => _filterCategory = val;
  void updateFilterCategory(Function(List<CategoryFilterStruct>) updateFn) =>
      updateFn(_filterCategory ??= []);
  bool hasFilterCategory() => _filterCategory != null;

  // "media" field.
  MediaCategoryStruct? _media;
  MediaCategoryStruct get media => _media ?? MediaCategoryStruct();
  set media(MediaCategoryStruct? val) => _media = val;
  void updateMedia(Function(MediaCategoryStruct) updateFn) =>
      updateFn(_media ??= MediaCategoryStruct());
  bool hasMedia() => _media != null;

  // "totalCount" field.
  int? _totalCount;
  int get totalCount => _totalCount ?? 0;
  set totalCount(int? val) => _totalCount = val;
  void incrementTotalCount(int amount) => _totalCount = totalCount + amount;
  bool hasTotalCount() => _totalCount != null;

  // "children" field.
  List<CategoryStruct>? _children;
  List<CategoryStruct> get children => _children ?? const [];
  set children(List<CategoryStruct>? val) => _children = val;
  void updateChildren(Function(List<CategoryStruct>) updateFn) =>
      updateFn(_children ??= []);
  bool hasChildren() => _children != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        sortIndex: castToType<int>(data['sortIndex']),
        filterCategory: getStructList(
          data['filterCategory'],
          CategoryFilterStruct.fromMap,
        ),
        media: MediaCategoryStruct.maybeFromMap(data['media']),
        totalCount: castToType<int>(data['totalCount']),
        children: getStructList(
          data['children'],
          CategoryStruct.fromMap,
        ),
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'sortIndex': _sortIndex,
        'filterCategory': _filterCategory?.map((e) => e.toMap()).toList(),
        'media': _media?.toMap(),
        'totalCount': _totalCount,
        'children': _children?.map((e) => e.toMap()).toList(),
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
        'sortIndex': serializeParam(
          _sortIndex,
          ParamType.int,
        ),
        'filterCategory': serializeParam(
          _filterCategory,
          ParamType.DataStruct,
          true,
        ),
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
        ),
        'totalCount': serializeParam(
          _totalCount,
          ParamType.int,
        ),
        'children': serializeParam(
          _children,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
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
        sortIndex: deserializeParam(
          data['sortIndex'],
          ParamType.int,
          false,
        ),
        filterCategory: deserializeStructParam<CategoryFilterStruct>(
          data['filterCategory'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryFilterStruct.fromSerializableMap,
        ),
        media: deserializeStructParam(
          data['media'],
          ParamType.DataStruct,
          false,
          structBuilder: MediaCategoryStruct.fromSerializableMap,
        ),
        totalCount: deserializeParam(
          data['totalCount'],
          ParamType.int,
          false,
        ),
        children: deserializeStructParam<CategoryStruct>(
          data['children'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoryStruct &&
        id == other.id &&
        name == other.name &&
        sortIndex == other.sortIndex &&
        listEquality.equals(filterCategory, other.filterCategory) &&
        media == other.media &&
        totalCount == other.totalCount &&
        listEquality.equals(children, other.children);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, sortIndex, filterCategory, media, totalCount, children]);
}

CategoryStruct createCategoryStruct({
  String? id,
  String? name,
  int? sortIndex,
  MediaCategoryStruct? media,
  int? totalCount,
}) =>
    CategoryStruct(
      id: id,
      name: name,
      sortIndex: sortIndex,
      media: media ?? MediaCategoryStruct(),
      totalCount: totalCount,
    );
