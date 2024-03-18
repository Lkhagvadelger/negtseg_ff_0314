import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'login_pin_widget.dart' show LoginPinWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPinModel extends FlutterFlowModel<LoginPinWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Timer widget.
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  InstantTimer? instantTimer;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel;
  // Stores action output result for [Backend Call - API (Sign in)] action in ButtonRoundIconRight widget.
  ApiCallResponse? signInResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    buttonRoundIconRightModel =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
    timerController.dispose();
    instantTimer?.cancel();
    buttonRoundIconRightModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
