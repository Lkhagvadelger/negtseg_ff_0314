import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PromoListCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
    String? mainCategoryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PromoList',
      apiUrl:
          'https://1tseg.mn/api/promo?countryCode=${countryCode}&mainCategoryId=${mainCategoryId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? promoHome(dynamic response) => getJsonField(
        response,
        r'''$.promo_home''',
        true,
      ) as List?;
  static List? promoOther(dynamic response) => getJsonField(
        response,
        r'''$.promo_other''',
        true,
      ) as List?;
}

class HomeMainCategoryCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'HomeMainCategory',
      apiUrl: 'https://1tseg.mn/api/home/main?countryCode=${countryCode}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? mainCategories(dynamic response) => getJsonField(
        response,
        r'''$.mainCategories''',
        true,
      ) as List?;
  static List? datCategories(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class CategoriesCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
    String? mainCategoryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Categories',
      apiUrl:
          'https://1tseg.mn/api/category/main?countryCode=${countryCode}&mainCategoryId=${mainCategoryId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? promoHome(dynamic response) => getJsonField(
        response,
        r'''$.promo_home''',
        true,
      ) as List?;
  static List? promoOther(dynamic response) => getJsonField(
        response,
        r'''$.promo_other''',
        true,
      ) as List?;
  static List? categories(dynamic response) => getJsonField(
        response,
        r'''$.categories''',
        true,
      ) as List?;
}

class HomeOtherMainCategoryCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
    String? categoryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Home Other Main Category',
      apiUrl:
          'https://1tseg.mn/api/home?countryCode=${countryCode}&categoryId=${categoryId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? categories(dynamic response) => getJsonField(
        response,
        r'''$.categories''',
        true,
      ) as List?;
  static List? promos(dynamic response) => getJsonField(
        response,
        r'''$.promos''',
        true,
      ) as List?;
  static List? promoHome(dynamic response) => getJsonField(
        response,
        r'''$.promos.promo_home''',
        true,
      ) as List?;
  static List? promoOther(dynamic response) => getJsonField(
        response,
        r'''$.promos.promo_other''',
        true,
      ) as List?;
}

class CategoryProductsCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CategoryProducts',
      apiUrl: 'https://1tseg.mn/api/category/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      ) as List?;
}

class SignInPatchCall {
  static Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Sign in Patch',
      apiUrl: 'https://1tseg.mn/api/auth/loginonetimecode',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {
        'username': username,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignInCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "pin": "${pin}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sign in',
      apiUrl: 'https://1tseg.mn/api/auth/loginonetimecode?type=jwt',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateGetCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreateGet',
      apiUrl: 'https://ttqsj3k9-3200.inc1.devtunnels.ms/api/zar',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ZarCreateCopyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? title = '',
    String? description = '',
    List<String>? locationList,
    String? categoryId = '',
    List<String>? categoryIdsList,
    dynamic? mediaJson,
    double? price,
    bool? isFlexiblePrice,
    String? countryCode = '',
    dynamic? dynamicFieldsJson,
    String? zarType = '',
    String? categoryMainId = '',
  }) async {
    final location = _serializeList(locationList);
    final categoryIds = _serializeList(categoryIdsList);
    final media = _serializeJson(mediaJson);
    final dynamicFields = _serializeJson(dynamicFieldsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'ZarCreate Copy',
      apiUrl: 'https://1tseg.mn/api/zar',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'title': title,
        'description': description,
        'location': location,
        'categoryId': categoryId,
        'categoryIds': categoryIds,
        'media': media,
        'price': price,
        'isFlexiblePrice': isFlexiblePrice,
        'countryCode': countryCode,
        'categoryFieldData': dynamicFields,
        'zarType': zarType,
        'categoryMainId': categoryMainId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class HomeTopZarApiCall {
  static Future<ApiCallResponse> call({
    String? categoryMainId = '',
    String? countryCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'HomeTopZarApi',
      apiUrl:
          'https://1tseg.mn/api/home/top?countryCode=${countryCode}&categoryMainId=${categoryMainId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? topZarList(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      ) as List?;
}

class ZarDetailCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ZarDetail',
      apiUrl: 'https://1tseg.mn/api/zar/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? zarItem(dynamic response) => getJsonField(
        response,
        r'''$.item''',
        true,
      ) as List?;
}

class HomeZarRecentCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
    String? categoryMainId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'HomeZarRecent',
      apiUrl:
          'https://1tseg.mn/api/home/recent?countryCode=${countryCode}&categoryMainId=${categoryMainId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? recentList(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
