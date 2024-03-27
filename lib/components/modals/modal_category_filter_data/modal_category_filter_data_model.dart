import '/components/form/dynamic_form_input/dynamic_form_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'modal_category_filter_data_widget.dart'
    show ModalCategoryFilterDataWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCategoryFilterDataModel
    extends FlutterFlowModel<ModalCategoryFilterDataWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for DynamicFormInput dynamic component.
  late FlutterFlowDynamicModels<DynamicFormInputModel> dynamicFormInputModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dynamicFormInputModels =
        FlutterFlowDynamicModels(() => DynamicFormInputModel());
  }

  @override
  void dispose() {
    dynamicFormInputModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
