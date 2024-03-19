import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['mn', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? mnText = '',
    String? enText = '',
  }) =>
      [mnText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Profile
  {
    'ssquet43': {
      'mn': 'Таны дансанд: 0₮',
      'en': 'Таны дансанд: 0₮',
    },
    '7fscxfjm': {
      'mn': 'Цэнэглэх',
      'en': 'Цэнэглэх',
    },
    'k0nx402h': {
      'mn': 'Миний дэлгүүрүүд',
      'en': 'Миний дэлгүүрүүд',
    },
    '49wrxgye': {
      'mn': 'Миний групп',
      'en': 'Миний групп',
    },
    '7p6w28z1': {
      'mn': 'Миний найзууд',
      'en': 'Миний найзууд',
    },
    'xv1sd2gl': {
      'mn': 'Миний зарууд',
      'en': 'Миний зарууд',
    },
    'kg2xk55b': {
      'mn': 'Хадгалсан зарууд',
      'en': 'Хадгалсан зарууд',
    },
    'iohc9jqj': {
      'mn': 'Дансаа цэнэглэх',
      'en': 'Дансаа цэнэглэх',
    },
    's8cwpb6x': {
      'mn': 'Тохиргоо',
      'en': 'Тохиргоо',
    },
    '031eu3wv': {
      'mn': 'Апп түүхүүд',
      'en': 'Апп түүхүүд',
    },
    'zajg3oyy': {
      'mn': 'Миний булан',
      'en': 'Миний булан',
    },
  },
  // PostDetail
  {
    'a0ty5luo': {
      'mn': 'Үнэ',
      'en': 'Үнэ',
    },
    'pahbszhg': {
      'mn': 'Үнэ тохирно',
      'en': 'Үнэ тохирно',
    },
    'aog6fdwk': {
      'mn': 'Centery 21 Nymdavaa',
      'en': 'Centery 21 Nymdavaa',
    },
    'jlj1x6x5': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // Login
  {
    'yr6qswmw': {
      'mn': 'И-мэйл',
      'en': '',
    },
    'tqgcrzhu': {
      'mn': '',
      'en': '',
    },
    'v4ngb4sx': {
      'mn': 'И-мэйл заавал оруулна уу',
      'en': 'И-мэйл заавал оруулна уу',
    },
    'udgilxeh': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'uzg4geyu': {
      'mn': 'Зар нэмэх',
      'en': 'Зар нэмэх',
    },
  },
  // LoginPin
  {
    'fxeebob4': {
      'mn': 'Field is required',
      'en': 'Заавал бөглөнө',
    },
    'vdk30csq': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'eyide4ny': {
      'mn': 'Field is required',
      'en': '',
    },
    'itue3v4a': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5036b3ip': {
      'mn': 'Field is required',
      'en': '',
    },
    'x07g5cr4': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'nkzyfzbu': {
      'mn': 'Field is required',
      'en': '',
    },
    'nws4lrgc': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'o5xikiwn': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // LoginSuccess
  {
    'jngjq8ts': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // Category
  {
    'u6ufc1si': {
      'mn': 'Home',
      'en': '',
    },
  },
  // PostNew
  {
    'wui1q5lm': {
      'mn': 'Ангилал сонгох',
      'en': 'Ангилал сонгох',
    },
    'fhztfdpa': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // CompanyList
  {
    'cd72nakf': {
      'mn': 'Миний компани1',
      'en': 'Миний компани1',
    },
    'f7b1x78t': {
      'mn': 'Миний компани',
      'en': 'Миний компани',
    },
    'e831gcrl': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // Friends
  {
    'a6g53czp': {
      'mn': 'My bussiness card',
      'en': 'My bussiness card',
    },
    'svyokw5v': {
      'mn': 'Миний найзууд',
      'en': 'Миний найзууд',
    },
    '6wlnq54x': {
      'mn': 'Username1',
      'en': '',
    },
    'cw0eqs58': {
      'mn': 'U',
      'en': '',
    },
    'o26bqz32': {
      'mn': 'Username1',
      'en': '',
    },
    '3vx45usj': {
      'mn': 'U',
      'en': '',
    },
    'bchwrnqw': {
      'mn': 'Username1',
      'en': '',
    },
    'l9oqitrs': {
      'mn': 'U',
      'en': '',
    },
    'ko5ik5mm': {
      'mn': 'Username1',
      'en': '',
    },
    '5hsbfgt0': {
      'mn': 'U',
      'en': '',
    },
    'hzd9bror': {
      'mn': 'Username1',
      'en': '',
    },
    'wn1hsqri': {
      'mn': 'U',
      'en': '',
    },
    't89883gt': {
      'mn': 'Миний найзууд',
      'en': 'Миний найзууд',
    },
    '33st08xl': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // PostMy
  {
    '7m5nsb4b': {
      'mn': 'Бүгд',
      'en': 'Бүгд',
    },
    '1cxeyuvi': {
      'mn': 'Нийтлэгдсэн',
      'en': 'Нийтлэгдсэн',
    },
    'tsxkzn7y': {
      'mn': 'Tab View 2',
      'en': '',
    },
    'sh9x787a': {
      'mn': 'Шалгагдаж байгаа',
      'en': 'Шалгагдаж байгаа',
    },
    '0e48aeks': {
      'mn': 'Tab View 3',
      'en': '',
    },
    '2au5w5bi': {
      'mn': 'Буцаагдсан',
      'en': 'Буцаагдсан',
    },
    'oudjytv1': {
      'mn': 'Tab View 4',
      'en': '',
    },
    'lwbmi40b': {
      'mn': 'Миний зарууд',
      'en': 'Миний зарууд',
    },
    'xtxxi36k': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // Message
  {
    'pxt1gie6': {
      'mn': 'Hello World',
      'en': 'Миний компани1',
    },
    '273xtagy': {
      'mn': 'New Message',
      'en': 'New Message',
    },
    'b37a0twq': {
      'mn': '9:20 pm',
      'en': 'Start chatting',
    },
    'nkhjkavn': {
      'mn': 'Мессеж',
      'en': 'Мессеж',
    },
    '2n8799yt': {
      'mn': 'Мессеж',
      'en': 'Мессеж',
    },
  },
  // OnboardingPage
  {
    'lxib5eiz': {
      'mn': 'Home',
      'en': '',
    },
  },
  // searchScreen
  {
    'rc2t6upi': {
      'mn': 'Сүүлийн хайлтууд',
      'en': 'Сүүлийн хайлтууд',
    },
    'khd5bhoy': {
      'mn': 'Санал болгох',
      'en': 'Санал болгох',
    },
    'wjpyr8bs': {
      'mn': 'Home',
      'en': '',
    },
  },
  // searchScreenResult
  {
    'l7dbx5nl': {
      'mn': 'Сүүлийн хайлтууд',
      'en': '',
    },
    'p6thtbon': {
      'mn': 'Санал болгох',
      'en': '',
    },
    '85qpg6px': {
      'mn': 'Home',
      'en': '',
    },
  },
  // PostNewCategory
  {
    'jatmnrfr': {
      'mn': 'Ангилал сонгох',
      'en': 'Ангилал сонгох',
    },
    '4715jc53': {
      'mn': '/',
      'en': '/',
    },
    'bj9dyrx7': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // PostNewDetail
  {
    'f2qk3qca': {
      'mn': 'Ангилал',
      'en': '',
    },
    'zv2l1cjf': {
      'mn': '/',
      'en': '',
    },
    'nnibng6d': {
      'mn': 'Field is required',
      'en': '',
    },
    'k1x7zrhd': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'cyec0l5c': {
      'mn': 'Field is required',
      'en': '',
    },
    'wttw4ipi': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gvzuzajg': {
      'mn': 'Field is required',
      'en': '',
    },
    't7yrh20e': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jewjb3hy': {
      'mn': 'Field is required',
      'en': '',
    },
    '711qsluc': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hhcri7xj': {
      'mn': 'Field is required',
      'en': '',
    },
    'jyyuxdsc': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'a5sbk0mt': {
      'mn': 'Ангилал сонгох',
      'en': 'Ангилал сонгох',
    },
    'xjnzf7q0': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // PostNewDetailMain
  {
    'ow3nd2zw': {
      'mn': 'Зарын гарчиг /дээд тал нь 100 тэмдэгт/',
      'en': 'Зарын гарчиг /дээд тал нь 100 тэмдэгт/',
    },
    '9fsb9ma1': {
      'mn': '',
      'en': '',
    },
    'pex25tot': {
      'mn': 'Гарчиг оруулах',
      'en': '',
    },
    'l5bnx18s': {
      'mn': 'Үнэ',
      'en': 'Үнэ',
    },
    'bjg8znc8': {
      'mn': '',
      'en': '',
    },
    'dk900rdb': {
      'mn': 'Үнэ оруулах',
      'en': '',
    },
    'bvulr899': {
      'mn': 'Үнэ тохирч зарна',
      'en': 'Үнэ тохирч зарна',
    },
    '1tt9kuey': {
      'mn': 'Нэмэлт тайлбар /доод тал нь 10 тэмдэгт/',
      'en': 'Нэмэлт тайлбар /доод тал нь 10 тэмдэгт/',
    },
    'sdax826i': {
      'mn': '',
      'en': '',
    },
    'hg32amcz': {
      'mn': 'Нэмэлт тайлбар',
      'en': '',
    },
    '8aht1gue': {
      'mn': 'Field is required',
      'en': '',
    },
    'az9tvj81': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'veg58z8s': {
      'mn': 'Field is required',
      'en': '',
    },
    '2osrgg3r': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ikfzfifr': {
      'mn': 'Field is required',
      'en': '',
    },
    '5z1dl2n3': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    '060o9awr': {
      'mn': 'Зар нэмэх ',
      'en': 'Зар нэмэх ',
    },
    '7lfzs4jx': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // PostNewDetailImage
  {
    'pi65hgv2': {
      'mn': 'Зураг нэмэх',
      'en': 'Зураг нэмэх',
    },
    'eowul27r': {
      'mn': 'Аль болох их зураг оруулна уу.',
      'en': 'Аль болох их зураг оруулна уу.',
    },
    'cgago65l': {
      'mn': 'Зураг оруулах',
      'en': 'Зураг оруулах',
    },
    '1btjm50n': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // PostNewDetailType
  {
    'apxu8skd': {
      'mn': 'Энгийн зар',
      'en': 'Энгийн зар',
    },
    's8bf1wh6': {
      'mn': 'Энгийн зар',
      'en': 'Энгийн зар',
    },
    'c3lzj50h': {
      'mn': 'Онцгой зар',
      'en': 'Онцгой зар',
    },
    '0jbouswz': {
      'mn': 'Field is required',
      'en': '',
    },
    'h7kigejs': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4imp26qd': {
      'mn': 'Field is required',
      'en': '',
    },
    '6bbgz620': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    '856wuxyv': {
      'mn': 'Field is required',
      'en': '',
    },
    'adfuhgp4': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5zqmf2jr': {
      'mn': 'Field is required',
      'en': '',
    },
    't0opkhnj': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xymivn99': {
      'mn': 'Field is required',
      'en': '',
    },
    'kmw7edl7': {
      'mn': 'Please choose an option from the dropdown',
      'en': '',
    },
    'q3zngd4a': {
      'mn': 'Зар нэмэх ',
      'en': 'Зар нэмэх ',
    },
    't80j5yta': {
      'mn': 'Зар нэмэх',
      'en': '',
    },
  },
  // PostNewPreview
  {
    '26m8f1dl': {
      'mn': 'Зар шалгагдаж байгаа',
      'en': 'Зар шалгагдаж байгаа',
    },
    'kfevtsxi': {
      'mn': 'Нийтэлсэн',
      'en': 'Нийтэлсэн',
    },
    'y0v6mdly': {
      'mn': 'Огноо',
      'en': 'Огноо',
    },
    'jmdnflpt': {
      'mn': 'Ангилал',
      'en': '',
    },
    '3bsbfc8s': {
      'mn': 'Миний зар',
      'en': 'Миний зар',
    },
    'mmofsjq2': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // Order
  {
    '5egn298f': {
      'mn': 'ЗАХИАЛГА',
      'en': 'ЗАХИАЛГА',
    },
    '6lrt8wvl': {
      'mn': 'Миний булан',
      'en': '',
    },
  },
  // Settings
  {
    'ppuihuy0': {
      'mn': 'Миний мэдээлэл',
      'en': 'Миний мэдээлэл',
    },
    'w8ijhv5x': {
      'mn': 'Зураг сонгох',
      'en': 'Зураг сонгох',
    },
    '64w43j95': {
      'mn': 'Цахим мэдэгдэл',
      'en': 'Цахим мэдэгдэл',
    },
    'dbr46yjl': {
      'mn': 'Чатны мэдэгдэл',
      'en': 'Чатны мэдэгдэл',
    },
    'nf314dfr': {
      'mn': 'Тохиргоо',
      'en': 'Тохиргоо',
    },
    'kx8x57u3': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // HomePageNew
  {
    'i17bzb2u': {
      'mn': 'Бүтээгдэхүүн',
      'en': 'Бүтээгдэхүүн',
    },
    'o73t00y6': {
      'mn': 'Худалдааны төв',
      'en': 'Худалдааны төв',
    },
    'c2pvrp31': {
      'mn': 'Expo',
      'en': 'Expo',
    },
    'nfviqh5b': {
      'mn': 'Tab View 3',
      'en': '',
    },
    'vm37ip8p': {
      'mn': 'LOADING',
      'en': 'LOADING',
    },
    'uet8q6bg': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // PostSaved
  {
    'dbf906d6': {
      'mn': 'Хадгалсан зар',
      'en': 'Хадгалсан зар',
    },
    'sa4rt8cw': {
      'mn': 'Хадгалсан хайлт',
      'en': 'Хадгалсан хайлт',
    },
    'k3o70wp3': {
      'mn': 'Tab View 2',
      'en': '',
    },
    'jh8tm32k': {
      'mn': 'Миний зарууд',
      'en': 'Мессеж',
    },
    'qzxaumeh': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // CompanyDetail
  {
    'dfzzzmcm': {
      'mn': 'Company Name',
      'en': 'Company Name',
    },
    '0ilbhcd2': {
      'mn': 'Hello World',
      'en': 'Hello World',
    },
    '8lq4ey9t': {
      'mn': '2024',
      'en': '2024',
    },
    'xy5edz62': {
      'mn':
          'Dualshock 4 resting gracefully beside a sleek keyboard, iPhone X, and more. The perfect companions for your tech-centric lifestyle.',
      'en':
          'Dualshock 4 resting gracefully beside a sleek keyboard, iPhone X, and more. The perfect companions for your tech-centric lifestyle.',
    },
    'adu9alfi': {
      'mn': 'Холбоо барих',
      'en': 'Холбоо барих',
    },
    'owq0qn8n': {
      'mn': '99119911',
      'en': '99119911',
    },
    'qolxr60p': {
      'mn': 'email@domain.com',
      'en': 'email@domain.com',
    },
    'w6edbjfv': {
      'mn': 'domain.com',
      'en': 'domain.com',
    },
    'mjdt3guw': {
      'mn': 'location',
      'en': 'location',
    },
    'pf9di1ef': {
      'mn': 'Зарууд',
      'en': 'Зарууд',
    },
    'sdrlxrbn': {
      'mn': 'Миний компани',
      'en': 'Миний компани',
    },
    '1rh40vcu': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // MessageDetail
  {
    '5g6xnlmc': {
      'mn': 'Welcome',
      'en': 'Welcome',
    },
    '0p4q6asa': {
      'mn': 'Start chatting',
      'en': 'Start chatting',
    },
    'xvbtcnbb': {
      'mn': 'Бүтээгдэхүүн:',
      'en': 'Бүтээгдэхүүн:',
    },
    'mc6r5zlj': {
      'mn': 'Dualshock 4 Beside Keyboard, Iphone X',
      'en': 'Dualshock 4 Beside Keyboard, Iphone X',
    },
    'vnifm6e3': {
      'mn': '840\'999 ₮',
      'en': '840\'999 ₮',
    },
    '4kixtzmr': {
      'mn': 'Энд бичнэ үү',
      'en': 'Энд бичнэ үү',
    },
    'azzjtd3r': {
      'mn': 'Хэрэглэгчийн нэр',
      'en': 'Хэрэглэгчийн нэр',
    },
    'v3qkghw7': {
      'mn': '05:13 PM',
      'en': '05:13 PM',
    },
    'fxx2qt5j': {
      'mn': 'Мессеж',
      'en': '',
    },
  },
  // Group
  {
    'vg63b614': {
      'mn': 'Миний групп 1',
      'en': 'Миний групп 1',
    },
    'bmp10030': {
      'mn': '110',
      'en': '110',
    },
    'oioh06ax': {
      'mn': 'гишүүн',
      'en': 'гишүүн',
    },
    'rx5rtzyz': {
      'mn': 'Миний групп',
      'en': 'Миний групп',
    },
    'y2peijp9': {
      'mn': 'Нүүр',
      'en': '',
    },
  },
  // SearchBar
  {
    'a7l5k0o3': {
      'mn': 'Хайх',
      'en': 'Хайх',
    },
  },
  // ProductItemPromo
  {
    'estaj0d6': {
      'mn': 'Онцгой',
      'en': 'Онцгой',
    },
  },
  // ModalCategoryItem
  {
    'ico1bsnu': {
      'mn': 'зар',
      'en': 'зар',
    },
  },
  // FormDropDown
  {
    'sp5q1w9g': {
      'mn': '10 өдөрт - 27,000₮',
      'en': '10 өдөрт - 27,000₮',
    },
    '6uid5t8l': {
      'mn': 'Search for an item...',
      'en': '',
    },
  },
  // FormFileUpload
  {
    'sxiudp67': {
      'mn': 'Зураг оруулах',
      'en': 'Зураг оруулах',
    },
  },
  // FormNumberRightIcon
  {
    'uq9p0ut9': {
      'mn': '',
      'en': '',
    },
    'ratbs0sd': {
      'mn': '₮',
      'en': '',
    },
  },
  // FormLoginEmail
  {
    '1lzf1iw1': {
      'mn': 'И-мэйл',
      'en': '',
    },
  },
  // FormCirclePin
  {
    'uzrds0ej': {
      'mn': '-',
      'en': '',
    },
  },
  // ModalCategorySelect
  {
    'qpmt3xq4': {
      'mn': 'Бүх категори',
      'en': 'Бүх категори',
    },
  },
  // CategoryHeader
  {
    'y96ewd46': {
      'mn': ' ',
      'en': '',
    },
  },
  // ontsgoiZarComponent
  {
    '0jwbi6ou': {
      'mn': 'Онцгой зар',
      'en': 'Онцгой зар',
    },
  },
  // onboarding
  {
    '0sffoxve': {
      'mn': 'Нэгцэгт тавтай морил!',
      'en': 'Нэгцэгт тавтай морил!',
    },
    'gpacu4p0': {
      'mn':
          'Таны Нэгтгэлийн туршлагыг ер бусын болгохын тулд хурдан тохиргооноос эхлээд энэ аялалд хамтдаа гарцгаая.',
      'en':
          'Таны Нэгтгэлийн туршлагыг ер бусын болгохын тулд хурдан тохиргооноос эхлээд энэ аялалд хамтдаа гарцгаая.',
    },
    'cchrgxtm': {
      'mn': 'Алгасах',
      'en': 'Алгасах',
    },
    '1bjnvzvo': {
      'mn': 'Түргэн шуурхай хүргэлт',
      'en': 'Түргэн шуурхай хүргэлт',
    },
    'c1hftf2q': {
      'mn':
          'Таны Нэгтгэлийн туршлагыг ер бусын болгохын тулд хурдан тохиргооноос эхлээд энэ аялалд хамтдаа гарцгаая.',
      'en':
          'Таны Нэгтгэлийн туршлагыг ер бусын болгохын тулд хурдан тохиргооноос эхлээд энэ аялалд хамтдаа гарцгаая.',
    },
    'b7bl9sax': {
      'mn': 'Алгасах',
      'en': '',
    },
    'sw4tz120': {
      'mn': 'Өөрийн төгс худалдааны адал явдлыг бүтээх',
      'en': 'Өөрийн төгс худалдааны адал явдлыг бүтээх',
    },
    '5v6vbyz6': {
      'mn':
          'Таны Нэгтгэлийн туршлагыг ер бусын болгохын тулд хурдан тохиргооноос эхлээд энэ аялалд хамтдаа гарцгаая.',
      'en':
          'Таны Нэгтгэлийн туршлагыг ер бусын болгохын тулд хурдан тохиргооноос эхлээд энэ аялалд хамтдаа гарцгаая.',
    },
    'zxhv35l6': {
      'mn': 'Алгасах',
      'en': '',
    },
  },
  // DynamicFormInput
  {
    'nvnwgcop': {
      'mn': '',
      'en': 'Энгийн зар',
    },
    'aeim5k2x': {
      'mn': 'Option 1',
      'en': '',
    },
    '40rh0l7s': {
      'mn': 'Сонгох',
      'en': 'Сонгох',
    },
    'dat34ump': {
      'mn': 'Search for an item...',
      'en': '',
    },
    't64yo19v': {
      'mn': 'Option 1',
      'en': '',
    },
    'epiiim8e': {
      'mn': 'Сонгох',
      'en': 'Сонгох',
    },
    '3trp0mw2': {
      'mn': 'Search for an item...',
      'en': '',
    },
    'gr1ci30g': {
      'mn': '',
      'en': '',
    },
    'sdyxvc9f': {
      'mn': '',
      'en': '',
    },
    'do6mo8mq': {
      'mn': '',
      'en': '',
    },
    '9fcv3oml': {
      'mn': '',
      'en': '',
    },
    'nm4u78c2': {
      'mn': '',
      'en': '',
    },
    'j9t7muy5': {
      'mn': '',
      'en': '',
    },
    'e37q116i': {
      'mn': '',
      'en': '',
    },
    'of3ruc69': {
      'mn': '',
      'en': '',
    },
  },
  // BottomNavigationComponent
  {
    'eouyxzi1': {
      'mn': 'Home',
      'en': 'Home',
    },
    'jq9av529': {
      'mn': 'Home',
      'en': 'Home',
    },
    'q93nx70t': {
      'mn': 'Мессэж',
      'en': 'Мессэж',
    },
    'nex6moaq': {
      'mn': 'Мессэж',
      'en': 'Мессэж',
    },
    'y39m66om': {
      'mn': 'Шинэ зар',
      'en': 'Шинэ зар',
    },
    'vy1z71sz': {
      'mn': 'Шинэ зар',
      'en': 'Шинэ зар',
    },
    '37aj0qbn': {
      'mn': 'Захиалга',
      'en': 'Захиалга',
    },
    'yrheo806': {
      'mn': 'Захиалга',
      'en': 'Захиалга',
    },
    '1xbvfmbp': {
      'mn': 'Миний булан',
      'en': 'Миний булан',
    },
    'e6i59izk': {
      'mn': 'Миний булан',
      'en': 'Миний булан',
    },
  },
  // SearchInput
  {
    'p569abzg': {
      'mn': '',
      'en': '',
    },
    'w3lbafx1': {
      'mn': 'Хайх',
      'en': '',
    },
  },
  // PostNewImageListItem
  {
    'r4ckvllr': {
      'mn': 'Hello World',
      'en': '',
    },
    'uj2v80rp': {
      'mn': 'Hello World',
      'en': '',
    },
  },
  // PostNewListItem
  {
    'w5eejg6q': {
      'mn': 'Hello World',
      'en': '',
    },
    'jn5efquf': {
      'mn': 'Hello World',
      'en': '840\'999 ₮',
    },
    'fklyohe6': {
      'mn': 'Hello World',
      'en': '',
    },
  },
  // DropDownInput
  {
    '0e4wtqnj': {
      'mn': 'Option 1',
      'en': '',
    },
    'gkbwybyb': {
      'mn': 'Сонгох',
      'en': '',
    },
    'cmtsi0gt': {
      'mn': 'Search for an item...',
      'en': '',
    },
  },
  // FormInputNormal
  {
    '91oapupw': {
      'mn': '',
      'en': '',
    },
    'sgwkz9y2': {
      'mn': 'Option 1',
      'en': '',
    },
    'dbhb7jqv': {
      'mn': 'Сонгох',
      'en': '',
    },
    's0540b7b': {
      'mn': 'Search for an item...',
      'en': '',
    },
    'fq3doc4w': {
      'mn': 'Option 1',
      'en': '',
    },
    'arqwsesh': {
      'mn': 'Сонгох',
      'en': '',
    },
    '6vyt4kup': {
      'mn': 'Search for an item...',
      'en': '',
    },
    'nkcwvaol': {
      'mn': '',
      'en': '',
    },
    '3fw56ht8': {
      'mn': '',
      'en': '',
    },
    'bfvl02zg': {
      'mn': '',
      'en': '',
    },
    'bmvhs8cl': {
      'mn': '',
      'en': '',
    },
    'iiwcnxou': {
      'mn': '',
      'en': '',
    },
    '3au9ik9o': {
      'mn': '',
      'en': '',
    },
    '1eleili1': {
      'mn': '',
      'en': '',
    },
    'eeold6xb': {
      'mn': '',
      'en': '',
    },
  },
  // SearchBarMessage
  {
    '8qc51wfw': {
      'mn': 'Хайлт',
      'en': 'Хайлт',
    },
  },
  // SearchBarFriend
  {
    'b94y4586': {
      'mn': 'Хайх',
      'en': 'Хайх',
    },
  },
  // Miscellaneous
  {
    'uqbiv1i0': {
      'mn': 'НЭГ ЦЭГ АПП камерт хандахыг хүсэж байна.',
      'en': '',
    },
    'zi8a086u': {
      'mn': 'НЭГ ЦЭГ АПП зурагруу хандахыг хүсэж байна.',
      'en': '',
    },
    'rnevrl9g': {
      'mn': 'НЭГ ЦЭГ АПП таны GPS байрлалд хандахыг хүсэж байна.',
      'en': '',
    },
    'epp44154': {
      'mn': '',
      'en': '',
    },
    'wmjtx5zi': {
      'mn': '',
      'en': '',
    },
    '7v9p0b6h': {
      'mn': '',
      'en': '',
    },
    'wx26tw4k': {
      'mn': '',
      'en': '',
    },
    'a0bmd39g': {
      'mn': '',
      'en': '',
    },
    '6fg34b8q': {
      'mn': '',
      'en': '',
    },
    'o82cv35e': {
      'mn': '',
      'en': '',
    },
    'cx81nbum': {
      'mn': '',
      'en': '',
    },
    'rimxvvsx': {
      'mn': '',
      'en': '',
    },
    'mnxmhp92': {
      'mn': '',
      'en': '',
    },
    '41t4eim6': {
      'mn': '',
      'en': '',
    },
    'beqnuja1': {
      'mn': '',
      'en': '',
    },
    'dh1ee9ik': {
      'mn': '',
      'en': '',
    },
    'ehkrj4p7': {
      'mn': '',
      'en': '',
    },
    'dfumnel3': {
      'mn': '',
      'en': '',
    },
    '16lrqvqk': {
      'mn': '',
      'en': '',
    },
    'p6ksbwfc': {
      'mn': '',
      'en': '',
    },
    'csy8a3u7': {
      'mn': '',
      'en': '',
    },
    '1bz5oqxs': {
      'mn': '',
      'en': '',
    },
    'wxv70s6d': {
      'mn': '',
      'en': '',
    },
    'mnwu7kjr': {
      'mn': '',
      'en': '',
    },
    'jfphtfhk': {
      'mn': '',
      'en': '',
    },
    's2jffp0a': {
      'mn': '',
      'en': '',
    },
    'vhmdf9t0': {
      'mn': '',
      'en': '',
    },
    'z0ehgt2p': {
      'mn': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
