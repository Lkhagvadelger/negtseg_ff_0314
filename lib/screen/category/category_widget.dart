import '/backend/api_requests/api_calls.dart';
import '/components/headers/category_header/category_header_widget.dart';
import '/components/headers/header_section_title/header_section_title_widget.dart';
import '/components/modals/modal_category_filter_data/modal_category_filter_data_widget.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/components/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_model.dart';
export 'category_model.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    super.key,
    required this.categoryItem,
  });

  final dynamic categoryItem;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late CategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.children = getJsonField(
          widget.categoryItem,
          r'''$.children''',
          true,
        )!
            .toList()
            .cast<dynamic>();
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            FFIcons.karrowSmLeft04,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        Flexible(
                          child: wrapWithModel(
                            model: _model.searchBarModel,
                            updateCallback: () => setState(() {}),
                            child: SearchBarWidget(),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: ModalCategoryFilterDataWidget(
                                          data: getJsonField(
                                            widget.categoryItem,
                                            r'''$.filterCategory''',
                                            true,
                                          )!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Icon(
                                FFIcons.kfilter09,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                            Icon(
                              FFIcons.kdotsHorizontal,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 72.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.headerSectionTitleModel,
                            updateCallback: () => setState(() {}),
                            child: HeaderSectionTitleWidget(
                              title: getJsonField(
                                widget.categoryItem,
                                r'''$.name''',
                              ).toString(),
                            ),
                          ),
                          if (_model.children.length > 0)
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final categoryChildren =
                                      _model.children.toList();
                                  return MasonryGridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    crossAxisSpacing: 12.0,
                                    mainAxisSpacing: 16.0,
                                    itemCount: categoryChildren.length,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (context, categoryChildrenIndex) {
                                      final categoryChildrenItem =
                                          categoryChildren[
                                              categoryChildrenIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Category',
                                            queryParameters: {
                                              'categoryItem': serializeParam(
                                                categoryChildrenItem,
                                                ParamType.JSON,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: CategoryHeaderWidget(
                                          key: Key(
                                              'Keycqn_${categoryChildrenIndex}_of_${categoryChildren.length}'),
                                          title: getJsonField(
                                            categoryChildrenItem,
                                            r'''$.name''',
                                          ).toString(),
                                          titleBtn: getJsonField(
                                            categoryChildrenItem,
                                            r'''$.totalCount''',
                                          ).toString(),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future: CategoryProductsCall.call(
                                id: getJsonField(
                                  widget.categoryItem,
                                  r'''$.id''',
                                ).toString(),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 40.0,
                                      height: 40.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final staggeredViewCategoryProductsResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final categoryRecentProducts =
                                        (CategoryProductsCall.products(
                                                  staggeredViewCategoryProductsResponse
                                                      .jsonBody,
                                                )?.toList() ??
                                                [])
                                            .take(10)
                                            .toList();
                                    return MasonryGridView.builder(
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                      ),
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 16.0,
                                      itemCount: categoryRecentProducts.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context,
                                          categoryRecentProductsIndex) {
                                        final categoryRecentProductsItem =
                                            categoryRecentProducts[
                                                categoryRecentProductsIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'PostDetail',
                                              queryParameters: {
                                                'zarId': serializeParam(
                                                  getJsonField(
                                                    categoryRecentProductsItem,
                                                    r'''$.id''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: wrapWithModel(
                                            model: _model.productItemPromoModels
                                                .getModel(
                                              getJsonField(
                                                categoryRecentProductsItem,
                                                r'''$.id''',
                                              ).toString(),
                                              categoryRecentProductsIndex,
                                            ),
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ProductItemPromoWidget(
                                              key: Key(
                                                'Key4bx_${getJsonField(
                                                  categoryRecentProductsItem,
                                                  r'''$.id''',
                                                ).toString()}',
                                              ),
                                              title: getJsonField(
                                                categoryRecentProductsItem,
                                                r'''$.title''',
                                              ).toString(),
                                              price: getJsonField(
                                                categoryRecentProductsItem,
                                                r'''$.price''',
                                              ),
                                              isPromoted:
                                                  categoryRecentProductsIndex ==
                                                      2,
                                              images: getJsonField(
                                                categoryRecentProductsItem,
                                                r'''$.media.images''',
                                              ),
                                              imagePaging: true,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
