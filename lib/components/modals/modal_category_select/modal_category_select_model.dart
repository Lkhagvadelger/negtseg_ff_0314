import '/components/modals/modal_category_item/modal_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_category_select_widget.dart' show ModalCategorySelectWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalCategorySelectModel
    extends FlutterFlowModel<ModalCategorySelectWidget> {
  ///  Local state fields for this component.

  List<dynamic> children = [];
  void addToChildren(dynamic item) => children.add(item);
  void removeFromChildren(dynamic item) => children.remove(item);
  void removeAtIndexFromChildren(int index) => children.removeAt(index);
  void insertAtIndexInChildren(int index, dynamic item) =>
      children.insert(index, item);
  void updateChildrenAtIndex(int index, Function(dynamic) updateFn) =>
      children[index] = updateFn(children[index]);

  ///  State fields for stateful widgets in this component.

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
    modalCategoryItemModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
