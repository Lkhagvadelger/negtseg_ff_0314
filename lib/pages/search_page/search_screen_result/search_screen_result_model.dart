import '/components/search_input/search_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_screen_result_widget.dart' show SearchScreenResultWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchScreenResultModel
    extends FlutterFlowModel<SearchScreenResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchInput component.
  late SearchInputModel searchInputModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchInputModel = createModel(context, () => SearchInputModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchInputModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
