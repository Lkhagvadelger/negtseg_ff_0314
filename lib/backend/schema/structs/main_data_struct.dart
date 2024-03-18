// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainDataStruct extends BaseStruct {
  MainDataStruct({
    List<CategoryStruct>? categories,
    List<PromosStruct>? promoHome,
    List<PromosStruct>? promoOther,
  })  : _categories = categories,
        _promoHome = promoHome,
        _promoOther = promoOther;

  // "Categories" field.
  List<CategoryStruct>? _categories;
  List<CategoryStruct> get categories => _categories ?? const [];
  set categories(List<CategoryStruct>? val) => _categories = val;
  void updateCategories(Function(List<CategoryStruct>) updateFn) =>
      updateFn(_categories ??= []);
  bool hasCategories() => _categories != null;

  // "promo_home" field.
  List<PromosStruct>? _promoHome;
  List<PromosStruct> get promoHome => _promoHome ?? const [];
  set promoHome(List<PromosStruct>? val) => _promoHome = val;
  void updatePromoHome(Function(List<PromosStruct>) updateFn) =>
      updateFn(_promoHome ??= []);
  bool hasPromoHome() => _promoHome != null;

  // "promo_other" field.
  List<PromosStruct>? _promoOther;
  List<PromosStruct> get promoOther => _promoOther ?? const [];
  set promoOther(List<PromosStruct>? val) => _promoOther = val;
  void updatePromoOther(Function(List<PromosStruct>) updateFn) =>
      updateFn(_promoOther ??= []);
  bool hasPromoOther() => _promoOther != null;

  static MainDataStruct fromMap(Map<String, dynamic> data) => MainDataStruct(
        categories: getStructList(
          data['Categories'],
          CategoryStruct.fromMap,
        ),
        promoHome: getStructList(
          data['promo_home'],
          PromosStruct.fromMap,
        ),
        promoOther: getStructList(
          data['promo_other'],
          PromosStruct.fromMap,
        ),
      );

  static MainDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MainDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Categories': _categories?.map((e) => e.toMap()).toList(),
        'promo_home': _promoHome?.map((e) => e.toMap()).toList(),
        'promo_other': _promoOther?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Categories': serializeParam(
          _categories,
          ParamType.DataStruct,
          true,
        ),
        'promo_home': serializeParam(
          _promoHome,
          ParamType.DataStruct,
          true,
        ),
        'promo_other': serializeParam(
          _promoOther,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static MainDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MainDataStruct(
        categories: deserializeStructParam<CategoryStruct>(
          data['Categories'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        promoHome: deserializeStructParam<PromosStruct>(
          data['promo_home'],
          ParamType.DataStruct,
          true,
          structBuilder: PromosStruct.fromSerializableMap,
        ),
        promoOther: deserializeStructParam<PromosStruct>(
          data['promo_other'],
          ParamType.DataStruct,
          true,
          structBuilder: PromosStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MainDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MainDataStruct &&
        listEquality.equals(categories, other.categories) &&
        listEquality.equals(promoHome, other.promoHome) &&
        listEquality.equals(promoOther, other.promoOther);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([categories, promoHome, promoOther]);
}

MainDataStruct createMainDataStruct() => MainDataStruct();
