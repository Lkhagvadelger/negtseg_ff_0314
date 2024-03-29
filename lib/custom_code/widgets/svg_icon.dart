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
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  SvgIcon({this.svgUrl, this.width, this.height});
  final String? svgUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      svgUrl!,
      width: width,
      height: height,
    );
  }
}
