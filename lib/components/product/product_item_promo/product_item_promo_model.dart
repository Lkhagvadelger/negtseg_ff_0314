import '/components/product/product_image_shower/product_image_shower_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_item_promo_widget.dart' show ProductItemPromoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductItemPromoModel extends FlutterFlowModel<ProductItemPromoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for roductImageShower.
  late ProductImageShowerModel roductImageShowerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    roductImageShowerModel =
        createModel(context, () => ProductImageShowerModel());
  }

  @override
  void dispose() {
    roductImageShowerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
