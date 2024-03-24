import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String listToString(List<String>? listString) {
  String jsonList = jsonEncode(listString);
  return jsonList;
}

List<dynamic> getDataFromMainDataJson(
  List<dynamic> data,
  int index,
  String objectName,
) {
  var result = data[index][objectName];
  return result;
}

dynamic categoryJsonPrepare(
  List<dynamic> dataApiResult,
  int index,
) {
  return {
    "categories": dataApiResult[index]["categories"],
    "promo_home": dataApiResult[index]["promo_home"],
    "promo_other": dataApiResult[index]["promo_other"]
  };
}

dynamic getCategoryByIndex(
  List<dynamic> mainDataJson,
  int mainCatIndex,
  int categoryIndex,
) {
  return mainDataJson[mainCatIndex]["categories"][categoryIndex];
}

dynamic checkJsonData(
  String stringVal,
  dynamic dataItem,
  String checkColumnName,
) {
  if (dataItem[checkColumnName] == dataItem) {
    return dataItem;
  }

  return null;
}
