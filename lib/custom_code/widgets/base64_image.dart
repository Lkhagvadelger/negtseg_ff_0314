// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

class Base64Image extends StatelessWidget {
  Base64Image({this.base64ImageStr, this.width, this.height});
  final String? base64ImageStr;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        child: Image.memory(base64Decode(base64ImageStr!), fit: BoxFit.cover));
  }
}
