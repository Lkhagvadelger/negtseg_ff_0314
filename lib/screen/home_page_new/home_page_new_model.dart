import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/bottom_navigation_component/bottom_navigation_component_widget.dart';
import '/components/category_item/category_item_widget.dart';
import '/components/headers/header_home_post/header_home_post_widget.dart';
import '/components/headers/header_section_title/header_section_title_widget.dart';
import '/components/headers/home_category_header/home_category_header_widget.dart';
import '/components/modals/modal_category_filter/modal_category_filter_widget.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/components/product/top_product_item/top_product_item_widget.dart';
import '/components/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'home_page_new_widget.dart' show HomePageNewWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageNewModel extends FlutterFlowModel<HomePageNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (HomeMainCategory)] action in HomePageNew widget.
  ApiCallResponse? apiHomeMainCategory;
  // Stores action output result for [Backend Call - API (Categories)] action in HomePageNew widget.
  ApiCallResponse? apiResultProduct;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (HomeMainCategory)] action in Column widget.
  ApiCallResponse? apiHomeMainCategoryPull;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel1;
  // Model for HomeCategoryHeader component.
  late HomeCategoryHeaderModel homeCategoryHeaderModel1;
  // Model for HeaderHomePost component.
  late HeaderHomePostModel headerHomePostModel1;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // Model for HeaderSectionTitle component.
  late HeaderSectionTitleModel headerSectionTitleModel1;
  // Models for ProductItemPromo dynamic component.
  late FlutterFlowDynamicModels<ProductItemPromoModel> productItemPromoModels1;
  // Stores action output result for [Backend Call - API (HomeMainCategory)] action in Column widget.
  ApiCallResponse? apiHomeMainCategoryShopPull;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel2;
  // Model for HomeCategoryHeader component.
  late HomeCategoryHeaderModel homeCategoryHeaderModel2;
  // Models for CategoryItem dynamic component.
  late FlutterFlowDynamicModels<CategoryItemModel> categoryItemModels2;
  // Model for HeaderHomePost component.
  late HeaderHomePostModel headerHomePostModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // Model for HeaderSectionTitle component.
  late HeaderSectionTitleModel headerSectionTitleModel2;
  // Models for ProductItemPromo dynamic component.
  late FlutterFlowDynamicModels<ProductItemPromoModel> productItemPromoModels2;
  // Model for BottomNavigationComponent component.
  late BottomNavigationComponentModel bottomNavigationComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchBarModel1 = createModel(context, () => SearchBarModel());
    homeCategoryHeaderModel1 =
        createModel(context, () => HomeCategoryHeaderModel());
    headerHomePostModel1 = createModel(context, () => HeaderHomePostModel());
    headerSectionTitleModel1 =
        createModel(context, () => HeaderSectionTitleModel());
    productItemPromoModels1 =
        FlutterFlowDynamicModels(() => ProductItemPromoModel());
    searchBarModel2 = createModel(context, () => SearchBarModel());
    homeCategoryHeaderModel2 =
        createModel(context, () => HomeCategoryHeaderModel());
    categoryItemModels2 = FlutterFlowDynamicModels(() => CategoryItemModel());
    headerHomePostModel2 = createModel(context, () => HeaderHomePostModel());
    headerSectionTitleModel2 =
        createModel(context, () => HeaderSectionTitleModel());
    productItemPromoModels2 =
        FlutterFlowDynamicModels(() => ProductItemPromoModel());
    bottomNavigationComponentModel =
        createModel(context, () => BottomNavigationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    searchBarModel1.dispose();
    homeCategoryHeaderModel1.dispose();
    headerHomePostModel1.dispose();
    headerSectionTitleModel1.dispose();
    productItemPromoModels1.dispose();
    searchBarModel2.dispose();
    homeCategoryHeaderModel2.dispose();
    categoryItemModels2.dispose();
    headerHomePostModel2.dispose();
    headerSectionTitleModel2.dispose();
    productItemPromoModels2.dispose();
    bottomNavigationComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
