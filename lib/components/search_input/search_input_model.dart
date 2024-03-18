import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_input_widget.dart' show SearchInputWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchInputModel extends FlutterFlowModel<SearchInputWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldController;
  String? Function(BuildContext, String?)? searchTextFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTextFieldFocusNode?.dispose();
    searchTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
