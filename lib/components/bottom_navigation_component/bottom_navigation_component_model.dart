import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_navigation_component_widget.dart'
    show BottomNavigationComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomNavigationComponentModel
    extends FlutterFlowModel<BottomNavigationComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> data = [];
  void addToData(dynamic item) => data.add(item);
  void removeFromData(dynamic item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, dynamic item) => data.insert(index, item);
  void updateDataAtIndex(int index, Function(dynamic) updateFn) =>
      data[index] = updateFn(data[index]);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
