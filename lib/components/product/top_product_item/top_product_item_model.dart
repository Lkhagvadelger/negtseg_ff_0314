import '/components/product/ontsgoi_zar_component/ontsgoi_zar_component_widget.dart';
import '/components/product/product_image_shower/product_image_shower_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_product_item_widget.dart' show TopProductItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopProductItemModel extends FlutterFlowModel<TopProductItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ProductImageShower component.
  late ProductImageShowerModel productImageShowerModel;
  // Model for ontsgoiZarComponent component.
  late OntsgoiZarComponentModel ontsgoiZarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productImageShowerModel =
        createModel(context, () => ProductImageShowerModel());
    ontsgoiZarComponentModel =
        createModel(context, () => OntsgoiZarComponentModel());
  }

  @override
  void dispose() {
    productImageShowerModel.dispose();
    ontsgoiZarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
