import '/backend/api_requests/api_calls.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel;
  // Stores action output result for [Backend Call - API (Sign in Patch)] action in ButtonRoundIconRight widget.
  ApiCallResponse? signPatchResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttonRoundIconRightModel =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    buttonRoundIconRightModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
