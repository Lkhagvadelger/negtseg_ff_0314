import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  Local state fields for this component.

  int? activeIndex = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel1;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel2;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttonRoundIconRightModel1 =
        createModel(context, () => ButtonRoundIconRightModel());
    buttonRoundIconRightModel2 =
        createModel(context, () => ButtonRoundIconRightModel());
    buttonRoundIconRightModel3 =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    buttonRoundIconRightModel1.dispose();
    buttonRoundIconRightModel2.dispose();
    buttonRoundIconRightModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
