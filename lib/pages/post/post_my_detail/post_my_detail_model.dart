import '/components/button_left_icon_title/button_left_icon_title_widget.dart';
import '/components/buttons/button_circle_font_icon/button_circle_font_icon_widget.dart';
import '/components/buttons/button_round_normal/button_round_normal_widget.dart';
import '/components/myzar_item_with_date/myzar_item_with_date_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'post_my_detail_widget.dart' show PostMyDetailWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostMyDetailModel extends FlutterFlowModel<PostMyDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MyzarItemWithDate component.
  late MyzarItemWithDateModel myzarItemWithDateModel;
  // Model for ButtonLeftIconTitle component.
  late ButtonLeftIconTitleModel buttonLeftIconTitleModel;
  // Model for ButtonCircleFontIcon component.
  late ButtonCircleFontIconModel buttonCircleFontIconModel1;
  // Model for ButtonCircleFontIcon component.
  late ButtonCircleFontIconModel buttonCircleFontIconModel2;
  // Model for ButtonCircleFontIcon component.
  late ButtonCircleFontIconModel buttonCircleFontIconModel3;
  // Model for ButtonRoundNormal component.
  late ButtonRoundNormalModel buttonRoundNormalModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    myzarItemWithDateModel =
        createModel(context, () => MyzarItemWithDateModel());
    buttonLeftIconTitleModel =
        createModel(context, () => ButtonLeftIconTitleModel());
    buttonCircleFontIconModel1 =
        createModel(context, () => ButtonCircleFontIconModel());
    buttonCircleFontIconModel2 =
        createModel(context, () => ButtonCircleFontIconModel());
    buttonCircleFontIconModel3 =
        createModel(context, () => ButtonCircleFontIconModel());
    buttonRoundNormalModel =
        createModel(context, () => ButtonRoundNormalModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    myzarItemWithDateModel.dispose();
    buttonLeftIconTitleModel.dispose();
    buttonCircleFontIconModel1.dispose();
    buttonCircleFontIconModel2.dispose();
    buttonCircleFontIconModel3.dispose();
    buttonRoundNormalModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
