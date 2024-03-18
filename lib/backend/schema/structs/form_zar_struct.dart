// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormZarStruct extends BaseStruct {
  FormZarStruct({
    String? title,
    String? statusMasterId,
    String? description,
    double? price,
    double? compareAtPrice,
    bool? isFlexiblePrice,
    CategoryStruct? category,
    List<String>? categoryIds,
    List<int>? categoryIndexes,
    List<String>? categoryNames,
    List<String>? images,
    List<String>? location,
    MediaStruct? media,
    List<FormZarDynamicValueStruct>? dynamicValue,
    List<CategoryFilterStruct>? categoryFilters,
    String? zarType,
    List<int>? featuredImageIndexs,
  })  : _title = title,
        _statusMasterId = statusMasterId,
        _description = description,
        _price = price,
        _compareAtPrice = compareAtPrice,
        _isFlexiblePrice = isFlexiblePrice,
        _category = category,
        _categoryIds = categoryIds,
        _categoryIndexes = categoryIndexes,
        _categoryNames = categoryNames,
        _images = images,
        _location = location,
        _media = media,
        _dynamicValue = dynamicValue,
        _categoryFilters = categoryFilters,
        _zarType = zarType,
        _featuredImageIndexs = featuredImageIndexs;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "statusMasterId" field.
  String? _statusMasterId;
  String get statusMasterId => _statusMasterId ?? '';
  set statusMasterId(String? val) => _statusMasterId = val;
  bool hasStatusMasterId() => _statusMasterId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "compareAtPrice" field.
  double? _compareAtPrice;
  double get compareAtPrice => _compareAtPrice ?? 0.0;
  set compareAtPrice(double? val) => _compareAtPrice = val;
  void incrementCompareAtPrice(double amount) =>
      _compareAtPrice = compareAtPrice + amount;
  bool hasCompareAtPrice() => _compareAtPrice != null;

  // "isFlexiblePrice" field.
  bool? _isFlexiblePrice;
  bool get isFlexiblePrice => _isFlexiblePrice ?? false;
  set isFlexiblePrice(bool? val) => _isFlexiblePrice = val;
  bool hasIsFlexiblePrice() => _isFlexiblePrice != null;

  // "category" field.
  CategoryStruct? _category;
  CategoryStruct get category => _category ?? CategoryStruct();
  set category(CategoryStruct? val) => _category = val;
  void updateCategory(Function(CategoryStruct) updateFn) =>
      updateFn(_category ??= CategoryStruct());
  bool hasCategory() => _category != null;

  // "categoryIds" field.
  List<String>? _categoryIds;
  List<String> get categoryIds => _categoryIds ?? const [];
  set categoryIds(List<String>? val) => _categoryIds = val;
  void updateCategoryIds(Function(List<String>) updateFn) =>
      updateFn(_categoryIds ??= []);
  bool hasCategoryIds() => _categoryIds != null;

  // "categoryIndexes" field.
  List<int>? _categoryIndexes;
  List<int> get categoryIndexes => _categoryIndexes ?? const [];
  set categoryIndexes(List<int>? val) => _categoryIndexes = val;
  void updateCategoryIndexes(Function(List<int>) updateFn) =>
      updateFn(_categoryIndexes ??= []);
  bool hasCategoryIndexes() => _categoryIndexes != null;

  // "categoryNames" field.
  List<String>? _categoryNames;
  List<String> get categoryNames => _categoryNames ?? const [];
  set categoryNames(List<String>? val) => _categoryNames = val;
  void updateCategoryNames(Function(List<String>) updateFn) =>
      updateFn(_categoryNames ??= []);
  bool hasCategoryNames() => _categoryNames != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  // "location" field.
  List<String>? _location;
  List<String> get location => _location ?? const [];
  set location(List<String>? val) => _location = val;
  void updateLocation(Function(List<String>) updateFn) =>
      updateFn(_location ??= []);
  bool hasLocation() => _location != null;

  // "media" field.
  MediaStruct? _media;
  MediaStruct get media => _media ?? MediaStruct();
  set media(MediaStruct? val) => _media = val;
  void updateMedia(Function(MediaStruct) updateFn) =>
      updateFn(_media ??= MediaStruct());
  bool hasMedia() => _media != null;

  // "dynamicValue" field.
  List<FormZarDynamicValueStruct>? _dynamicValue;
  List<FormZarDynamicValueStruct> get dynamicValue => _dynamicValue ?? const [];
  set dynamicValue(List<FormZarDynamicValueStruct>? val) => _dynamicValue = val;
  void updateDynamicValue(Function(List<FormZarDynamicValueStruct>) updateFn) =>
      updateFn(_dynamicValue ??= []);
  bool hasDynamicValue() => _dynamicValue != null;

  // "categoryFilters" field.
  List<CategoryFilterStruct>? _categoryFilters;
  List<CategoryFilterStruct> get categoryFilters =>
      _categoryFilters ?? const [];
  set categoryFilters(List<CategoryFilterStruct>? val) =>
      _categoryFilters = val;
  void updateCategoryFilters(Function(List<CategoryFilterStruct>) updateFn) =>
      updateFn(_categoryFilters ??= []);
  bool hasCategoryFilters() => _categoryFilters != null;

  // "zarType" field.
  String? _zarType;
  String get zarType => _zarType ?? '';
  set zarType(String? val) => _zarType = val;
  bool hasZarType() => _zarType != null;

  // "featuredImageIndexs" field.
  List<int>? _featuredImageIndexs;
  List<int> get featuredImageIndexs => _featuredImageIndexs ?? const [];
  set featuredImageIndexs(List<int>? val) => _featuredImageIndexs = val;
  void updateFeaturedImageIndexs(Function(List<int>) updateFn) =>
      updateFn(_featuredImageIndexs ??= []);
  bool hasFeaturedImageIndexs() => _featuredImageIndexs != null;

  static FormZarStruct fromMap(Map<String, dynamic> data) => FormZarStruct(
        title: data['title'] as String?,
        statusMasterId: data['statusMasterId'] as String?,
        description: data['description'] as String?,
        price: castToType<double>(data['price']),
        compareAtPrice: castToType<double>(data['compareAtPrice']),
        isFlexiblePrice: data['isFlexiblePrice'] as bool?,
        category: CategoryStruct.maybeFromMap(data['category']),
        categoryIds: getDataList(data['categoryIds']),
        categoryIndexes: getDataList(data['categoryIndexes']),
        categoryNames: getDataList(data['categoryNames']),
        images: getDataList(data['images']),
        location: getDataList(data['location']),
        media: MediaStruct.maybeFromMap(data['media']),
        dynamicValue: getStructList(
          data['dynamicValue'],
          FormZarDynamicValueStruct.fromMap,
        ),
        categoryFilters: getStructList(
          data['categoryFilters'],
          CategoryFilterStruct.fromMap,
        ),
        zarType: data['zarType'] as String?,
        featuredImageIndexs: getDataList(data['featuredImageIndexs']),
      );

  static FormZarStruct? maybeFromMap(dynamic data) =>
      data is Map ? FormZarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'statusMasterId': _statusMasterId,
        'description': _description,
        'price': _price,
        'compareAtPrice': _compareAtPrice,
        'isFlexiblePrice': _isFlexiblePrice,
        'category': _category?.toMap(),
        'categoryIds': _categoryIds,
        'categoryIndexes': _categoryIndexes,
        'categoryNames': _categoryNames,
        'images': _images,
        'location': _location,
        'media': _media?.toMap(),
        'dynamicValue': _dynamicValue?.map((e) => e.toMap()).toList(),
        'categoryFilters': _categoryFilters?.map((e) => e.toMap()).toList(),
        'zarType': _zarType,
        'featuredImageIndexs': _featuredImageIndexs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'statusMasterId': serializeParam(
          _statusMasterId,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'compareAtPrice': serializeParam(
          _compareAtPrice,
          ParamType.double,
        ),
        'isFlexiblePrice': serializeParam(
          _isFlexiblePrice,
          ParamType.bool,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
        ),
        'categoryIds': serializeParam(
          _categoryIds,
          ParamType.String,
          true,
        ),
        'categoryIndexes': serializeParam(
          _categoryIndexes,
          ParamType.int,
          true,
        ),
        'categoryNames': serializeParam(
          _categoryNames,
          ParamType.String,
          true,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
          true,
        ),
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
        ),
        'dynamicValue': serializeParam(
          _dynamicValue,
          ParamType.DataStruct,
          true,
        ),
        'categoryFilters': serializeParam(
          _categoryFilters,
          ParamType.DataStruct,
          true,
        ),
        'zarType': serializeParam(
          _zarType,
          ParamType.String,
        ),
        'featuredImageIndexs': serializeParam(
          _featuredImageIndexs,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static FormZarStruct fromSerializableMap(Map<String, dynamic> data) =>
      FormZarStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        statusMasterId: deserializeParam(
          data['statusMasterId'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        compareAtPrice: deserializeParam(
          data['compareAtPrice'],
          ParamType.double,
          false,
        ),
        isFlexiblePrice: deserializeParam(
          data['isFlexiblePrice'],
          ParamType.bool,
          false,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        categoryIds: deserializeParam<String>(
          data['categoryIds'],
          ParamType.String,
          true,
        ),
        categoryIndexes: deserializeParam<int>(
          data['categoryIndexes'],
          ParamType.int,
          true,
        ),
        categoryNames: deserializeParam<String>(
          data['categoryNames'],
          ParamType.String,
          true,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
        location: deserializeParam<String>(
          data['location'],
          ParamType.String,
          true,
        ),
        media: deserializeStructParam(
          data['media'],
          ParamType.DataStruct,
          false,
          structBuilder: MediaStruct.fromSerializableMap,
        ),
        dynamicValue: deserializeStructParam<FormZarDynamicValueStruct>(
          data['dynamicValue'],
          ParamType.DataStruct,
          true,
          structBuilder: FormZarDynamicValueStruct.fromSerializableMap,
        ),
        categoryFilters: deserializeStructParam<CategoryFilterStruct>(
          data['categoryFilters'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryFilterStruct.fromSerializableMap,
        ),
        zarType: deserializeParam(
          data['zarType'],
          ParamType.String,
          false,
        ),
        featuredImageIndexs: deserializeParam<int>(
          data['featuredImageIndexs'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'FormZarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FormZarStruct &&
        title == other.title &&
        statusMasterId == other.statusMasterId &&
        description == other.description &&
        price == other.price &&
        compareAtPrice == other.compareAtPrice &&
        isFlexiblePrice == other.isFlexiblePrice &&
        category == other.category &&
        listEquality.equals(categoryIds, other.categoryIds) &&
        listEquality.equals(categoryIndexes, other.categoryIndexes) &&
        listEquality.equals(categoryNames, other.categoryNames) &&
        listEquality.equals(images, other.images) &&
        listEquality.equals(location, other.location) &&
        media == other.media &&
        listEquality.equals(dynamicValue, other.dynamicValue) &&
        listEquality.equals(categoryFilters, other.categoryFilters) &&
        zarType == other.zarType &&
        listEquality.equals(featuredImageIndexs, other.featuredImageIndexs);
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        statusMasterId,
        description,
        price,
        compareAtPrice,
        isFlexiblePrice,
        category,
        categoryIds,
        categoryIndexes,
        categoryNames,
        images,
        location,
        media,
        dynamicValue,
        categoryFilters,
        zarType,
        featuredImageIndexs
      ]);
}

FormZarStruct createFormZarStruct({
  String? title,
  String? statusMasterId,
  String? description,
  double? price,
  double? compareAtPrice,
  bool? isFlexiblePrice,
  CategoryStruct? category,
  MediaStruct? media,
  String? zarType,
}) =>
    FormZarStruct(
      title: title,
      statusMasterId: statusMasterId,
      description: description,
      price: price,
      compareAtPrice: compareAtPrice,
      isFlexiblePrice: isFlexiblePrice,
      category: category ?? CategoryStruct(),
      media: media ?? MediaStruct(),
      zarType: zarType,
    );
