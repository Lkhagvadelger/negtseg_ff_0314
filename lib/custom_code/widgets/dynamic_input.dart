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

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class DynamicInput extends StatelessWidget {
  DynamicInput({this.dynamicItem, this.width, this.height});
  final CategoryFilterStruct? dynamicItem;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (dynamicItem?.dataType == 'string') {
      return Container(width: width, height: height);
    }
    return Container(width: width, height: height);
  }
}
