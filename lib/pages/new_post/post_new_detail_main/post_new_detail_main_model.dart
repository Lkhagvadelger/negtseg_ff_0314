import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'post_new_detail_main_widget.dart' show PostNewDetailMainWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostNewDetailMainModel extends FlutterFlowModel<PostNewDetailMainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldController;
  String? Function(BuildContext, String?)? titleTextFieldControllerValidator;
  String? _titleTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8aht1gue' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for priceTextField widget.
  FocusNode? priceTextFieldFocusNode;
  TextEditingController? priceTextFieldController;
  String? Function(BuildContext, String?)? priceTextFieldControllerValidator;
  String? _priceTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'veg58z8s' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for descTextField widget.
  FocusNode? descTextFieldFocusNode;
  TextEditingController? descTextFieldController;
  String? Function(BuildContext, String?)? descTextFieldControllerValidator;
  String? _descTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ikfzfifr' /* Field is required */,
      );
    }

    return null;
  }

  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    titleTextFieldControllerValidator = _titleTextFieldControllerValidator;
    priceTextFieldControllerValidator = _priceTextFieldControllerValidator;
    descTextFieldControllerValidator = _descTextFieldControllerValidator;
    buttonRoundIconRightModel =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titleTextFieldFocusNode?.dispose();
    titleTextFieldController?.dispose();

    priceTextFieldFocusNode?.dispose();
    priceTextFieldController?.dispose();

    descTextFieldFocusNode?.dispose();
    descTextFieldController?.dispose();

    buttonRoundIconRightModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
