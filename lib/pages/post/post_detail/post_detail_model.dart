import '/backend/api_requests/api_calls.dart';
import '/components/buttons/button_border/button_border_widget.dart';
import '/components/buttons/button_circle_icon/button_circle_icon_widget.dart';
import '/components/buttons/button_round/button_round_widget.dart';
import '/components/form/form_select_box/form_select_box_widget.dart';
import '/components/post/post_list_item/post_list_item_widget.dart';
import '/components/post/post_list_item_white/post_list_item_white_widget.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'post_detail_widget.dart' show PostDetailWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostDetailModel extends FlutterFlowModel<PostDetailWidget> {
  ///  Local state fields for this page.

  dynamic zarItem;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (ZarDetail)] action in PostDetail widget.
  ApiCallResponse? apiResultZarDetail;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for PostListItem component.
  late PostListItemModel postListItemModel;
  // Model for PostListItemWhite component.
  late PostListItemWhiteModel postListItemWhiteModel;
  // Model for FormSelectBox component.
  late FormSelectBoxModel formSelectBoxModel;
  // Model for ButtonBorder component.
  late ButtonBorderModel buttonBorderModel;
  // Model for ButtonCircleIcon component.
  late ButtonCircleIconModel buttonCircleIconModel;
  // Model for ButtonRound component.
  late ButtonRoundModel buttonRoundModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    postListItemModel = createModel(context, () => PostListItemModel());
    postListItemWhiteModel =
        createModel(context, () => PostListItemWhiteModel());
    formSelectBoxModel = createModel(context, () => FormSelectBoxModel());
    buttonBorderModel = createModel(context, () => ButtonBorderModel());
    buttonCircleIconModel = createModel(context, () => ButtonCircleIconModel());
    buttonRoundModel = createModel(context, () => ButtonRoundModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postListItemModel.dispose();
    postListItemWhiteModel.dispose();
    formSelectBoxModel.dispose();
    buttonBorderModel.dispose();
    buttonCircleIconModel.dispose();
    buttonRoundModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
