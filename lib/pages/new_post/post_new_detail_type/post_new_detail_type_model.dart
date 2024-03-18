import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/components/post/post_new_list_item/post_new_list_item_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'post_new_detail_type_widget.dart' show PostNewDetailTypeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostNewDetailTypeModel extends FlutterFlowModel<PostNewDetailTypeWidget> {
  ///  Local state fields for this page.

  int counter = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for PostNewListItem component.
  late PostNewListItemModel postNewListItemModel;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel;
  // Stores action output result for [Backend Call - API (ZarCreate)] action in ButtonRoundIconRight widget.
  ApiCallResponse? zarApiResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    postNewListItemModel = createModel(context, () => PostNewListItemModel());
    buttonRoundIconRightModel =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postNewListItemModel.dispose();
    buttonRoundIconRightModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
