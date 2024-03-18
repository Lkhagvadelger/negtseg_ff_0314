import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _UserToken = prefs.getString('ff_UserToken') ?? _UserToken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_UserData')) {
        try {
          final serializedData = prefs.getString('ff_UserData') ?? '{}';
          _UserData =
              UserDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _ProfileMenus = prefs
              .getStringList('ff_ProfileMenus')
              ?.map((x) {
                try {
                  return ProfileMenuStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ProfileMenus;
    });
    _safeInit(() {
      _CountryCode = prefs.getString('ff_CountryCode') ?? _CountryCode;
    });
    _safeInit(() {
      _NegtsegDeviceUniqueId =
          prefs.getString('ff_NegtsegDeviceUniqueId') ?? _NegtsegDeviceUniqueId;
    });
    _safeInit(() {
      _IsOnboarded = prefs.getBool('ff_IsOnboarded') ?? _IsOnboarded;
    });
    _safeInit(() {
      _recentSearch = prefs.getStringList('ff_recentSearch') ?? _recentSearch;
    });
    _safeInit(() {
      _MyPostStatus = prefs.getStringList('ff_MyPostStatus') ?? _MyPostStatus;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_SettingsConfig')) {
        try {
          final serializedData = prefs.getString('ff_SettingsConfig') ?? '{}';
          _SettingsConfig = SettingsConfigStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _UserToken = '';
  String get UserToken => _UserToken;
  set UserToken(String _value) {
    _UserToken = _value;
    prefs.setString('ff_UserToken', _value);
  }

  String _LoginEmail = '';
  String get LoginEmail => _LoginEmail;
  set LoginEmail(String _value) {
    _LoginEmail = _value;
  }

  String _LoginPin = '';
  String get LoginPin => _LoginPin;
  set LoginPin(String _value) {
    _LoginPin = _value;
  }

  FormZarStruct _FormZar = FormZarStruct();
  FormZarStruct get FormZar => _FormZar;
  set FormZar(FormZarStruct _value) {
    _FormZar = _value;
  }

  void updateFormZarStruct(Function(FormZarStruct) updateFn) {
    updateFn(_FormZar);
  }

  UserDataStruct _UserData = UserDataStruct();
  UserDataStruct get UserData => _UserData;
  set UserData(UserDataStruct _value) {
    _UserData = _value;
    prefs.setString('ff_UserData', _value.serialize());
  }

  void updateUserDataStruct(Function(UserDataStruct) updateFn) {
    updateFn(_UserData);
    prefs.setString('ff_UserData', _UserData.serialize());
  }

  List<ProfileMenuStruct> _ProfileMenus = [
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Миний компани\",\"Icon\":\"https://1tseg.mn/appIcons/building.svg\",\"id\":\"company\",\"IconUrl\":\"https://1tseg.mn/appIcons/building.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Миний групп\",\"Icon\":\"https://1tseg.mn/appIcons/screen-users.svg\",\"id\":\"mygroup\",\"IconUrl\":\"https://1tseg.mn/appIcons/screen-users.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Миний найз\",\"Icon\":\"https://1tseg.mn/appIcons/users.svg\",\"id\":\"myfriend\",\"IconUrl\":\"https://1tseg.mn/appIcons/users.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Миний зар\",\"Icon\":\"https://1tseg.mn/appIcons/receipt-alt.svg\",\"id\":\"mypost\",\"IconUrl\":\"https://1tseg.mn/appIcons/receipt-alt.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Хадгалсан зарууд\",\"Icon\":\"https://1tseg.mn/appIcons/heart-alt.svg\",\"id\":\"savedpost\",\"IconUrl\":\"https://1tseg.mn/appIcons/heart-alt.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Апп түүх\",\"Icon\":\"https://1tseg.mn/appIcons/refresh-ccw-clock.svg\",\"id\":\"apphistory\",\"IconUrl\":\"https://1tseg.mn/appIcons/refresh-ccw-clock.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Дансаа цэнэглэх\",\"Icon\":\"https://1tseg.mn/appIcons/wallet.svg\",\"id\":\"chargewallet\",\"IconUrl\":\"https://1tseg.mn/appIcons/wallet.svg\"}')),
    ProfileMenuStruct.fromSerializableMap(jsonDecode(
        '{\"Title\":\"Тохиргоо\",\"Icon\":\"https://1tseg.mn/appIcons/gear.svg\",\"id\":\"settings\",\"IconUrl\":\"https://1tseg.mn/appIcons/gear.svg\"}'))
  ];
  List<ProfileMenuStruct> get ProfileMenus => _ProfileMenus;
  set ProfileMenus(List<ProfileMenuStruct> _value) {
    _ProfileMenus = _value;
    prefs.setStringList(
        'ff_ProfileMenus', _value.map((x) => x.serialize()).toList());
  }

  void addToProfileMenus(ProfileMenuStruct _value) {
    _ProfileMenus.add(_value);
    prefs.setStringList(
        'ff_ProfileMenus', _ProfileMenus.map((x) => x.serialize()).toList());
  }

  void removeFromProfileMenus(ProfileMenuStruct _value) {
    _ProfileMenus.remove(_value);
    prefs.setStringList(
        'ff_ProfileMenus', _ProfileMenus.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProfileMenus(int _index) {
    _ProfileMenus.removeAt(_index);
    prefs.setStringList(
        'ff_ProfileMenus', _ProfileMenus.map((x) => x.serialize()).toList());
  }

  void updateProfileMenusAtIndex(
    int _index,
    ProfileMenuStruct Function(ProfileMenuStruct) updateFn,
  ) {
    _ProfileMenus[_index] = updateFn(_ProfileMenus[_index]);
    prefs.setStringList(
        'ff_ProfileMenus', _ProfileMenus.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProfileMenus(int _index, ProfileMenuStruct _value) {
    _ProfileMenus.insert(_index, _value);
    prefs.setStringList(
        'ff_ProfileMenus', _ProfileMenus.map((x) => x.serialize()).toList());
  }

  String _CountryCode = 'MN';
  String get CountryCode => _CountryCode;
  set CountryCode(String _value) {
    _CountryCode = _value;
    prefs.setString('ff_CountryCode', _value);
  }

  String _NegtsegDeviceUniqueId = '';
  String get NegtsegDeviceUniqueId => _NegtsegDeviceUniqueId;
  set NegtsegDeviceUniqueId(String _value) {
    _NegtsegDeviceUniqueId = _value;
    prefs.setString('ff_NegtsegDeviceUniqueId', _value);
  }

  bool _IsOnboarded = false;
  bool get IsOnboarded => _IsOnboarded;
  set IsOnboarded(bool _value) {
    _IsOnboarded = _value;
    prefs.setBool('ff_IsOnboarded', _value);
  }

  List<String> _recentSearch = [];
  List<String> get recentSearch => _recentSearch;
  set recentSearch(List<String> _value) {
    _recentSearch = _value;
    prefs.setStringList('ff_recentSearch', _value);
  }

  void addToRecentSearch(String _value) {
    _recentSearch.add(_value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void removeFromRecentSearch(String _value) {
    _recentSearch.remove(_value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void removeAtIndexFromRecentSearch(int _index) {
    _recentSearch.removeAt(_index);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void updateRecentSearchAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _recentSearch[_index] = updateFn(_recentSearch[_index]);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  void insertAtIndexInRecentSearch(int _index, String _value) {
    _recentSearch.insert(_index, _value);
    prefs.setStringList('ff_recentSearch', _recentSearch);
  }

  List<String> _suggestedSearch = [];
  List<String> get suggestedSearch => _suggestedSearch;
  set suggestedSearch(List<String> _value) {
    _suggestedSearch = _value;
  }

  void addToSuggestedSearch(String _value) {
    _suggestedSearch.add(_value);
  }

  void removeFromSuggestedSearch(String _value) {
    _suggestedSearch.remove(_value);
  }

  void removeAtIndexFromSuggestedSearch(int _index) {
    _suggestedSearch.removeAt(_index);
  }

  void updateSuggestedSearchAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _suggestedSearch[_index] = updateFn(_suggestedSearch[_index]);
  }

  void insertAtIndexInSuggestedSearch(int _index, String _value) {
    _suggestedSearch.insert(_index, _value);
  }

  String _searchInputValue = '';
  String get searchInputValue => _searchInputValue;
  set searchInputValue(String _value) {
    _searchInputValue = _value;
  }

  List<String> _MyPostStatus = [
    'Бүгд',
    'Нийтлэгдсэн',
    'Шалгагдаж байгаа',
    'Буцаагдсан'
  ];
  List<String> get MyPostStatus => _MyPostStatus;
  set MyPostStatus(List<String> _value) {
    _MyPostStatus = _value;
    prefs.setStringList('ff_MyPostStatus', _value);
  }

  void addToMyPostStatus(String _value) {
    _MyPostStatus.add(_value);
    prefs.setStringList('ff_MyPostStatus', _MyPostStatus);
  }

  void removeFromMyPostStatus(String _value) {
    _MyPostStatus.remove(_value);
    prefs.setStringList('ff_MyPostStatus', _MyPostStatus);
  }

  void removeAtIndexFromMyPostStatus(int _index) {
    _MyPostStatus.removeAt(_index);
    prefs.setStringList('ff_MyPostStatus', _MyPostStatus);
  }

  void updateMyPostStatusAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _MyPostStatus[_index] = updateFn(_MyPostStatus[_index]);
    prefs.setStringList('ff_MyPostStatus', _MyPostStatus);
  }

  void insertAtIndexInMyPostStatus(int _index, String _value) {
    _MyPostStatus.insert(_index, _value);
    prefs.setStringList('ff_MyPostStatus', _MyPostStatus);
  }

  SettingsConfigStruct _SettingsConfig = SettingsConfigStruct();
  SettingsConfigStruct get SettingsConfig => _SettingsConfig;
  set SettingsConfig(SettingsConfigStruct _value) {
    _SettingsConfig = _value;
    prefs.setString('ff_SettingsConfig', _value.serialize());
  }

  void updateSettingsConfigStruct(Function(SettingsConfigStruct) updateFn) {
    updateFn(_SettingsConfig);
    prefs.setString('ff_SettingsConfig', _SettingsConfig.serialize());
  }

  List<MainDataStruct> _MainData = [];
  List<MainDataStruct> get MainData => _MainData;
  set MainData(List<MainDataStruct> _value) {
    _MainData = _value;
  }

  void addToMainData(MainDataStruct _value) {
    _MainData.add(_value);
  }

  void removeFromMainData(MainDataStruct _value) {
    _MainData.remove(_value);
  }

  void removeAtIndexFromMainData(int _index) {
    _MainData.removeAt(_index);
  }

  void updateMainDataAtIndex(
    int _index,
    MainDataStruct Function(MainDataStruct) updateFn,
  ) {
    _MainData[_index] = updateFn(_MainData[_index]);
  }

  void insertAtIndexInMainData(int _index, MainDataStruct _value) {
    _MainData.insert(_index, _value);
  }

  int _MainDataSelectedIndex = 0;
  int get MainDataSelectedIndex => _MainDataSelectedIndex;
  set MainDataSelectedIndex(int _value) {
    _MainDataSelectedIndex = _value;
  }

  List<MainCategoryStruct> _MainCategories = [];
  List<MainCategoryStruct> get MainCategories => _MainCategories;
  set MainCategories(List<MainCategoryStruct> _value) {
    _MainCategories = _value;
  }

  void addToMainCategories(MainCategoryStruct _value) {
    _MainCategories.add(_value);
  }

  void removeFromMainCategories(MainCategoryStruct _value) {
    _MainCategories.remove(_value);
  }

  void removeAtIndexFromMainCategories(int _index) {
    _MainCategories.removeAt(_index);
  }

  void updateMainCategoriesAtIndex(
    int _index,
    MainCategoryStruct Function(MainCategoryStruct) updateFn,
  ) {
    _MainCategories[_index] = updateFn(_MainCategories[_index]);
  }

  void insertAtIndexInMainCategories(int _index, MainCategoryStruct _value) {
    _MainCategories.insert(_index, _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
