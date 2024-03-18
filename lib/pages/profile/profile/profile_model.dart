import '/backend/schema/structs/index.dart';
import '/components/bottom_navigation_component/bottom_navigation_component_widget.dart';
import '/components/buttons/button_round/button_round_widget.dart';
import '/components/buttons/button_round_normal/button_round_normal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool isLoggedIn = false;

  String editImageUrl = 'https://1tseg.mn/appIcons/pen-line.svg';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ButtonRoundNormal component.
  late ButtonRoundNormalModel buttonRoundNormalModel;
  // Model for ButtonRound component.
  late ButtonRoundModel buttonRoundModel;
  // Model for BottomNavigationComponent component.
  late BottomNavigationComponentModel bottomNavigationComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttonRoundNormalModel =
        createModel(context, () => ButtonRoundNormalModel());
    buttonRoundModel = createModel(context, () => ButtonRoundModel());
    bottomNavigationComponentModel =
        createModel(context, () => BottomNavigationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    buttonRoundNormalModel.dispose();
    buttonRoundModel.dispose();
    bottomNavigationComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
