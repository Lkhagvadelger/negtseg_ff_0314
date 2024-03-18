import '/backend/api_requests/api_calls.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'post_saved_widget.dart' show PostSavedWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostSavedModel extends FlutterFlowModel<PostSavedWidget> {
  ///  Local state fields for this page.

  List<dynamic> zarData = [];
  void addToZarData(dynamic item) => zarData.add(item);
  void removeFromZarData(dynamic item) => zarData.remove(item);
  void removeAtIndexFromZarData(int index) => zarData.removeAt(index);
  void insertAtIndexInZarData(int index, dynamic item) =>
      zarData.insert(index, item);
  void updateZarDataAtIndex(int index, Function(dynamic) updateFn) =>
      zarData[index] = updateFn(zarData[index]);

  String selStatus = 'Бүгд';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
