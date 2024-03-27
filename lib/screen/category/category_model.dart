import '/backend/api_requests/api_calls.dart';
import '/components/headers/category_header/category_header_widget.dart';
import '/components/headers/header_section_title/header_section_title_widget.dart';
import '/components/modals/modal_category_filter_data/modal_category_filter_data_widget.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/components/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'category_widget.dart' show CategoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryModel extends FlutterFlowModel<CategoryWidget> {
  ///  Local state fields for this page.

  List<dynamic> children = [];
  void addToChildren(dynamic item) => children.add(item);
  void removeFromChildren(dynamic item) => children.remove(item);
  void removeAtIndexFromChildren(int index) => children.removeAt(index);
  void insertAtIndexInChildren(int index, dynamic item) =>
      children.insert(index, item);
  void updateChildrenAtIndex(int index, Function(dynamic) updateFn) =>
      children[index] = updateFn(children[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;
  // Model for HeaderSectionTitle component.
  late HeaderSectionTitleModel headerSectionTitleModel;
  // Models for ProductItemPromo dynamic component.
  late FlutterFlowDynamicModels<ProductItemPromoModel> productItemPromoModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchBarModel = createModel(context, () => SearchBarModel());
    headerSectionTitleModel =
        createModel(context, () => HeaderSectionTitleModel());
    productItemPromoModels =
        FlutterFlowDynamicModels(() => ProductItemPromoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarModel.dispose();
    headerSectionTitleModel.dispose();
    productItemPromoModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
