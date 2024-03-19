import '/components/modals/modal_category_item/modal_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'post_new_widget.dart' show PostNewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostNewModel extends FlutterFlowModel<PostNewWidget> {
  ///  Local state fields for this page.

  List<dynamic> children = [];
  void addToChildren(dynamic item) => children.add(item);
  void removeFromChildren(dynamic item) => children.remove(item);
  void removeAtIndexFromChildren(int index) => children.removeAt(index);
  void insertAtIndexInChildren(int index, dynamic item) =>
      children.insert(index, item);
  void updateChildrenAtIndex(int index, Function(dynamic) updateFn) =>
      children[index] = updateFn(children[index]);

  List<int> selCatIndexes = [];
  void addToSelCatIndexes(int item) => selCatIndexes.add(item);
  void removeFromSelCatIndexes(int item) => selCatIndexes.remove(item);
  void removeAtIndexFromSelCatIndexes(int index) =>
      selCatIndexes.removeAt(index);
  void insertAtIndexInSelCatIndexes(int index, int item) =>
      selCatIndexes.insert(index, item);
  void updateSelCatIndexesAtIndex(int index, Function(int) updateFn) =>
      selCatIndexes[index] = updateFn(selCatIndexes[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for ModalCategoryItem dynamic component.
  late FlutterFlowDynamicModels<ModalCategoryItemModel> modalCategoryItemModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    modalCategoryItemModels =
        FlutterFlowDynamicModels(() => ModalCategoryItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    modalCategoryItemModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
