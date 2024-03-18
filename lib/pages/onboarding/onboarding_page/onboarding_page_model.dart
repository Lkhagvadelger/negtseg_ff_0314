import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/onboarding/onboarding/onboarding_widget.dart';
import 'onboarding_page_widget.dart' show OnboardingPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingPageModel extends FlutterFlowModel<OnboardingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for onboarding component.
  late OnboardingModel onboardingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    onboardingModel = createModel(context, () => OnboardingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    onboardingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
