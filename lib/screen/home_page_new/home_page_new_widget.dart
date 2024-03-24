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
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_new_model.dart';
export 'home_page_new_model.dart';

class HomePageNewWidget extends StatefulWidget {
  const HomePageNewWidget({super.key});

  @override
  State<HomePageNewWidget> createState() => _HomePageNewWidgetState();
}

class _HomePageNewWidgetState extends State<HomePageNewWidget>
    with TickerProviderStateMixin {
  late HomePageNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().MainDataJson = [];
      });
      setState(() {
        _model.mainCatCounter = 0;
      });
      if (FFAppState().IsOnboarded) {
        // MainCategory API
        _model.apiHomeMainCategory = await HomeMainCategoryCall.call(
          countryCode: 'MN',
        );
        if ((_model.apiHomeMainCategory?.succeeded ?? true)) {
          setState(() {
            FFAppState().MainCategories = (getJsonField(
              (_model.apiHomeMainCategory?.jsonBody ?? ''),
              r'''$.mainCategories''',
              true,
            )!
                    .toList()
                    .map<MainCategoryStruct?>(MainCategoryStruct.maybeFromMap)
                    .toList() as Iterable<MainCategoryStruct?>)
                .withoutNulls
                .toList()
                .cast<MainCategoryStruct>();
            FFAppState().MainDataSelectedIndex = 0;
          });
          while (_model.mainCatCounter < FFAppState().MainCategories.length) {
            setState(() {
              FFAppState().addToMainDataJson(functions.categoryJsonPrepare(
                  getJsonField(
                    (_model.apiHomeMainCategory?.jsonBody ?? ''),
                    r'''$.data''',
                    true,
                  )!,
                  _model.mainCatCounter));
            });
            // MainCatCounter++
            setState(() {
              _model.mainCatCounter = _model.mainCatCounter + 1;
            });
          }
        }
      } else {
        context.goNamed(
          'OnboardingPage',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: min(
          valueOrDefault<int>(
            FFAppState().MainDataSelectedIndex,
            0,
          ),
          2),
    )..addListener(() => setState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (FFAppState().MainCategories.isNotEmpty) {
                return Stack(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            isScrollable: true,
                            labelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                            unselectedLabelStyle: TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            indicatorWeight: 2.0,
                            tabs: [
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'i17bzb2u' /* Бүтээгдэхүүн */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'o73t00y6' /* Худалдааны төв */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'c2pvrp31' /* Expo */,
                                ),
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [
                                () async {
                                  setState(() {
                                    FFAppState().MainDataSelectedIndex = 0;
                                  });
                                },
                                () async {
                                  setState(() {
                                    FFAppState().MainDataSelectedIndex = 1;
                                  });
                                },
                                () async {}
                              ][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              KeepAliveWidgetWrapper(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 64.0),
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: RefreshIndicator(
                                      key: Key('RefreshIndicator_ayfu2s3j'),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .borderBottomColor,
                                      strokeWidth: 3.0,
                                      onRefresh: () async {
                                        setState(() {
                                          FFAppState().MainDataJson = [];
                                          FFAppState().MainCategories = [];
                                        });
                                        setState(() {
                                          _model.mainCatCounter = 0;
                                        });
                                        // MainCategory API
                                        _model.apiHomeMainCategoryCopy =
                                            await HomeMainCategoryCall.call(
                                          countryCode: 'MN',
                                        );
                                        if ((_model.apiHomeMainCategory
                                                ?.succeeded ??
                                            true)) {
                                          setState(() {
                                            FFAppState()
                                                .MainCategories = (getJsonField(
                                              (_model.apiHomeMainCategory
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.mainCategories''',
                                              true,
                                            )!
                                                        .toList()
                                                        .map<MainCategoryStruct?>(
                                                            MainCategoryStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        MainCategoryStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<MainCategoryStruct>();
                                            FFAppState().MainDataSelectedIndex =
                                                0;
                                          });
                                          while (_model.mainCatCounter <
                                              FFAppState()
                                                  .MainCategories
                                                  .length) {
                                            setState(() {
                                              FFAppState().addToMainDataJson(
                                                  functions.categoryJsonPrepare(
                                                      getJsonField(
                                                        (_model.apiHomeMainCategory
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.data''',
                                                        true,
                                                      )!,
                                                      _model.mainCatCounter));
                                            });
                                            // MainCatCounter++
                                            setState(() {
                                              _model.mainCatCounter =
                                                  _model.mainCatCounter + 1;
                                            });
                                          }
                                        }
                                      },
                                      child: SingleChildScrollView(
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.searchBarModel1,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: SearchBarWidget(),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.9,
                                                                              child: ModalCategoryFilterWidget(
                                                                                title: FFLocalizations.of(context).getVariableText(
                                                                                  mnText: 'Категори',
                                                                                  enText: 'Категори',
                                                                                ),
                                                                                data: functions.getDataFromMainDataJson(FFAppState().MainDataJson.toList(), 0, 'categories'),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .homeCategoryHeaderModel1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        HomeCategoryHeaderWidget(
                                                                      title: FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        mnText:
                                                                            'Категори',
                                                                        enText:
                                                                            'Категори',
                                                                      ),
                                                                      titleBtn:
                                                                          FFLocalizations.of(context)
                                                                              .getVariableText(
                                                                        mnText:
                                                                            'Бүх категори',
                                                                        enText:
                                                                            'Бүх категори',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 56.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final productCategoires = functions
                                                                      .getDataFromMainDataJson(
                                                                          FFAppState()
                                                                              .MainDataJson
                                                                              .toList(),
                                                                          0,
                                                                          'categories')
                                                                      .toList()
                                                                      .take(10)
                                                                      .toList();
                                                                  return SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          productCategoires
                                                                              .length,
                                                                          (productCategoiresIndex) {
                                                                        final productCategoiresItem =
                                                                            productCategoires[productCategoiresIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'Category',
                                                                              queryParameters: {
                                                                                'categoryItem': serializeParam(
                                                                                  productCategoiresItem,
                                                                                  ParamType.JSON,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.rightToLeft,
                                                                                ),
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              CategoryItemWidget(
                                                                            key:
                                                                                Key('Key0kz_${productCategoiresIndex}_of_${productCategoires.length}'),
                                                                            categoryItem:
                                                                                productCategoiresItem,
                                                                          ),
                                                                        );
                                                                      }).divide(SizedBox(width: 8.0)).addToStart(SizedBox(width: 16.0)).addToEnd(SizedBox(
                                                                          width:
                                                                              16.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            HomeTopZarApiCall
                                                                .call(
                                                          countryCode: 'MN',
                                                          categoryMainId:
                                                              FFAppState()
                                                                  .MainCategories[
                                                                      0]
                                                                  .id,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final columnHomeTopZarApiResponse =
                                                              snapshot.data!;
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .headerHomePostModel1,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      HeaderHomePostWidget(
                                                                    title: FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      mnText:
                                                                          'Топ зарууд',
                                                                      enText:
                                                                          'Топ зарууд',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final productTopZarApi = (HomeTopZarApiCall
                                                                              .topZarList(
                                                                            columnHomeTopZarApiResponse.jsonBody,
                                                                          )?.toList() ??
                                                                          [])
                                                                      .take(10)
                                                                      .toList();
                                                                  return SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: List.generate(
                                                                          productTopZarApi
                                                                              .length,
                                                                          (productTopZarApiIndex) {
                                                                        final productTopZarApiItem =
                                                                            productTopZarApi[productTopZarApiIndex];
                                                                        return TopProductItemWidget(
                                                                          key: Key(
                                                                              'Key1s3_${productTopZarApiIndex}_of_${productTopZarApi.length}'),
                                                                          images:
                                                                              getJsonField(
                                                                            productTopZarApiItem,
                                                                            r'''$.media.images''',
                                                                          ),
                                                                          id: getJsonField(
                                                                            productTopZarApiItem,
                                                                            r'''$.id''',
                                                                          ).toString(),
                                                                          title:
                                                                              getJsonField(
                                                                            productTopZarApiItem,
                                                                            r'''$.title''',
                                                                          ),
                                                                          price:
                                                                              getJsonField(
                                                                            productTopZarApiItem,
                                                                            r'''$.price''',
                                                                          ),
                                                                          imagePaging:
                                                                              false,
                                                                        );
                                                                      }).divide(SizedBox(width: 8.0)).addToStart(SizedBox(width: 16.0)).addToEnd(SizedBox(
                                                                          width:
                                                                              16.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 120.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00FFFFFF),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final homePromos = functions
                                                                  .getDataFromMainDataJson(
                                                                      FFAppState()
                                                                          .MainDataJson
                                                                          .toList(),
                                                                      0,
                                                                      'promo_home')
                                                                  .toList()
                                                                  .take(5)
                                                                  .toList();
                                                              return Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 500.0,
                                                                child: Stack(
                                                                  children: [
                                                                    PageView
                                                                        .builder(
                                                                      controller: _model
                                                                              .pageViewController1 ??=
                                                                          PageController(
                                                                              initialPage: min(0, homePromos.length - 1)),
                                                                      onPageChanged:
                                                                          (_) =>
                                                                              setState(() {}),
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      itemCount:
                                                                          homePromos
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              homePromosIndex) {
                                                                        final homePromosItem =
                                                                            homePromos[homePromosIndex];
                                                                        return ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              homePromosItem,
                                                                              r'''$.media.img''',
                                                                            ).toString(),
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              1.5),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: smooth_page_indicator
                                                                            .SmoothPageIndicator(
                                                                          controller: _model.pageViewController1 ??=
                                                                              PageController(initialPage: min(0, homePromos.length - 1)),
                                                                          count:
                                                                              homePromos.length,
                                                                          axisDirection:
                                                                              Axis.horizontal,
                                                                          onDotClicked:
                                                                              (i) async {
                                                                            await _model.pageViewController1!.animateToPage(
                                                                              i,
                                                                              duration: Duration(milliseconds: 500),
                                                                              curve: Curves.ease,
                                                                            );
                                                                          },
                                                                          effect:
                                                                              smooth_page_indicator.SlideEffect(
                                                                            spacing:
                                                                                6.0,
                                                                            radius:
                                                                                999.0,
                                                                            dotWidth:
                                                                                8.0,
                                                                            dotHeight:
                                                                                8.0,
                                                                            dotColor:
                                                                                Color(0x32000000),
                                                                            activeDotColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            paintStyle:
                                                                                PaintingStyle.fill,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            wrapWithModel(
                                                              model: _model
                                                                  .headerSectionTitleModel1,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  HeaderSectionTitleWidget(
                                                                title: FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  mnText:
                                                                      'Онцлох зарууд',
                                                                  enText:
                                                                      'Онцлох зарууд',
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future:
                                                                    HomeZarRecentCall
                                                                        .call(
                                                                  countryCode:
                                                                      'MN',
                                                                  categoryMainId:
                                                                      FFAppState()
                                                                          .MainCategories[
                                                                              0]
                                                                          .id,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final staggeredViewHomeZarRecentResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final productRecent = (HomeZarRecentCall.recentList(
                                                                                staggeredViewHomeZarRecentResponse.jsonBody,
                                                                              )?.toList() ??
                                                                              [])
                                                                          .take(10)
                                                                          .toList();
                                                                      return MasonryGridView
                                                                          .builder(
                                                                        physics:
                                                                            const NeverScrollableScrollPhysics(),
                                                                        gridDelegate:
                                                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                          crossAxisCount:
                                                                              2,
                                                                        ),
                                                                        crossAxisSpacing:
                                                                            10.0,
                                                                        mainAxisSpacing:
                                                                            10.0,
                                                                        itemCount:
                                                                            productRecent.length,
                                                                        shrinkWrap:
                                                                            true,
                                                                        itemBuilder:
                                                                            (context,
                                                                                productRecentIndex) {
                                                                          final productRecentItem =
                                                                              productRecent[productRecentIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                'PostDetail',
                                                                                queryParameters: {
                                                                                  'zarId': serializeParam(
                                                                                    getJsonField(
                                                                                      productRecentItem,
                                                                                      r'''$.id''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            },
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.productItemPromoModels1.getModel(
                                                                                getJsonField(
                                                                                  productRecentItem,
                                                                                  r'''$.id''',
                                                                                ).toString(),
                                                                                productRecentIndex,
                                                                              ),
                                                                              updateCallback: () => setState(() {}),
                                                                              child: ProductItemPromoWidget(
                                                                                key: Key(
                                                                                  'Keyqgh_${getJsonField(
                                                                                    productRecentItem,
                                                                                    r'''$.id''',
                                                                                  ).toString()}',
                                                                                ),
                                                                                title: getJsonField(
                                                                                  productRecentItem,
                                                                                  r'''$.title''',
                                                                                ).toString(),
                                                                                price: getJsonField(
                                                                                  productRecentItem,
                                                                                  r'''$.price''',
                                                                                ),
                                                                                isPromoted: productRecentIndex == 2,
                                                                                images: getJsonField(
                                                                                  productRecentItem,
                                                                                  r'''$.media.images''',
                                                                                ),
                                                                                imagePaging: false,
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
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 16.0))
                                                      .addToStart(SizedBox(
                                                          height: 24.0)),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation1']!),
                                          ]
                                              .divide(SizedBox(height: 8.0))
                                              .addToStart(
                                                  SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 64.0),
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: RefreshIndicator(
                                      key: Key('RefreshIndicator_z9foqjv4'),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .borderBottomColor,
                                      strokeWidth: 3.0,
                                      onRefresh: () async {
                                        setState(() {
                                          FFAppState().MainDataJson = [];
                                          FFAppState().MainCategories = [];
                                        });
                                        setState(() {
                                          _model.mainCatCounter = 0;
                                        });
                                        // MainCategory API
                                        _model.apiHomeMainCategoryCopyCopy =
                                            await HomeMainCategoryCall.call(
                                          countryCode: 'MN',
                                        );
                                        if ((_model.apiHomeMainCategory
                                                ?.succeeded ??
                                            true)) {
                                          setState(() {
                                            FFAppState()
                                                .MainCategories = (getJsonField(
                                              (_model.apiHomeMainCategory
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.mainCategories''',
                                              true,
                                            )!
                                                        .toList()
                                                        .map<MainCategoryStruct?>(
                                                            MainCategoryStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        MainCategoryStruct?>)
                                                .withoutNulls
                                                .toList()
                                                .cast<MainCategoryStruct>();
                                            FFAppState().MainDataSelectedIndex =
                                                0;
                                          });
                                          while (_model.mainCatCounter <
                                              FFAppState()
                                                  .MainCategories
                                                  .length) {
                                            setState(() {
                                              FFAppState().addToMainDataJson(
                                                  functions.categoryJsonPrepare(
                                                      getJsonField(
                                                        (_model.apiHomeMainCategory
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.data''',
                                                        true,
                                                      )!,
                                                      _model.mainCatCounter));
                                            });
                                            // MainCatCounter++
                                            setState(() {
                                              _model.mainCatCounter =
                                                  _model.mainCatCounter + 1;
                                            });
                                          }
                                        }
                                      },
                                      child: SingleChildScrollView(
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.searchBarModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: SearchBarWidget(),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.9,
                                                                              child: ModalCategoryFilterWidget(
                                                                                title: FFLocalizations.of(context).getVariableText(
                                                                                  mnText: 'Категори',
                                                                                  enText: 'Категори',
                                                                                ),
                                                                                data: functions.getDataFromMainDataJson(FFAppState().MainDataJson.toList(), 1, 'categories'),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .homeCategoryHeaderModel2,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        HomeCategoryHeaderWidget(
                                                                      title: FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        mnText:
                                                                            'Категори',
                                                                        enText:
                                                                            'Категори',
                                                                      ),
                                                                      titleBtn:
                                                                          FFLocalizations.of(context)
                                                                              .getVariableText(
                                                                        mnText:
                                                                            'Бүх категори',
                                                                        enText:
                                                                            'Бүх категори',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 56.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                              ),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final shopCategories = functions
                                                                      .getDataFromMainDataJson(
                                                                          FFAppState()
                                                                              .MainDataJson
                                                                              .toList(),
                                                                          1,
                                                                          'categories')
                                                                      .toList()
                                                                      .take(10)
                                                                      .toList();
                                                                  return SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          shopCategories
                                                                              .length,
                                                                          (shopCategoriesIndex) {
                                                                        final shopCategoriesItem =
                                                                            shopCategories[shopCategoriesIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'Category',
                                                                              queryParameters: {
                                                                                'categoryItem': serializeParam(
                                                                                  shopCategoriesItem,
                                                                                  ParamType.JSON,
                                                                                ),
                                                                              }.withoutNulls,
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.rightToLeft,
                                                                                ),
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.categoryItemModels2.getModel(
                                                                              shopCategoriesIndex.toString(),
                                                                              shopCategoriesIndex,
                                                                            ),
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                CategoryItemWidget(
                                                                              key: Key(
                                                                                'Keyfve_${shopCategoriesIndex.toString()}',
                                                                              ),
                                                                              categoryItem: shopCategoriesItem,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }).divide(SizedBox(width: 8.0)).addToStart(SizedBox(width: 16.0)).addToEnd(SizedBox(
                                                                          width:
                                                                              16.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            HomeTopZarApiCall
                                                                .call(
                                                          categoryMainId:
                                                              FFAppState()
                                                                  .MainCategories[
                                                                      1]
                                                                  .id,
                                                          countryCode: 'MN',
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final columnHomeTopZarApiResponse =
                                                              snapshot.data!;
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .headerHomePostModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      HeaderHomePostWidget(
                                                                    title: FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      mnText:
                                                                          'Топ зарууд',
                                                                      enText:
                                                                          'Топ зарууд',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final homeTopzarAPI = (HomeTopZarApiCall
                                                                              .topZarList(
                                                                            columnHomeTopZarApiResponse.jsonBody,
                                                                          )?.toList() ??
                                                                          [])
                                                                      .take(10)
                                                                      .toList();
                                                                  return SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: List.generate(
                                                                          homeTopzarAPI
                                                                              .length,
                                                                          (homeTopzarAPIIndex) {
                                                                        final homeTopzarAPIItem =
                                                                            homeTopzarAPI[homeTopzarAPIIndex];
                                                                        return TopProductItemWidget(
                                                                          key: Key(
                                                                              'Key66f_${homeTopzarAPIIndex}_of_${homeTopzarAPI.length}'),
                                                                          images:
                                                                              getJsonField(
                                                                            homeTopzarAPIItem,
                                                                            r'''$.media.images''',
                                                                          ),
                                                                          id: getJsonField(
                                                                            homeTopzarAPIItem,
                                                                            r'''$.id''',
                                                                          ).toString(),
                                                                          title:
                                                                              getJsonField(
                                                                            homeTopzarAPIItem,
                                                                            r'''$.title''',
                                                                          ),
                                                                          price:
                                                                              getJsonField(
                                                                            homeTopzarAPIItem,
                                                                            r'''$.price''',
                                                                          ),
                                                                          imagePaging:
                                                                              false,
                                                                        );
                                                                      }).divide(SizedBox(width: 8.0)).addToStart(SizedBox(width: 16.0)).addToEnd(SizedBox(
                                                                          width:
                                                                              16.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 120.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00FFFFFF),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final shopPromoHome = functions
                                                                  .getDataFromMainDataJson(
                                                                      FFAppState()
                                                                          .MainDataJson
                                                                          .toList(),
                                                                      1,
                                                                      'promo_home')
                                                                  .toList()
                                                                  .take(5)
                                                                  .toList();
                                                              return Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 500.0,
                                                                child: Stack(
                                                                  children: [
                                                                    PageView
                                                                        .builder(
                                                                      controller: _model
                                                                              .pageViewController2 ??=
                                                                          PageController(
                                                                              initialPage: min(0, shopPromoHome.length - 1)),
                                                                      onPageChanged:
                                                                          (_) =>
                                                                              setState(() {}),
                                                                      scrollDirection:
                                                                          Axis.horizontal,
                                                                      itemCount:
                                                                          shopPromoHome
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              shopPromoHomeIndex) {
                                                                        final shopPromoHomeItem =
                                                                            shopPromoHome[shopPromoHomeIndex];
                                                                        return ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              shopPromoHomeItem,
                                                                              r'''$.media.img''',
                                                                            ).toString(),
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              1.5),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: smooth_page_indicator
                                                                            .SmoothPageIndicator(
                                                                          controller: _model.pageViewController2 ??=
                                                                              PageController(initialPage: min(0, shopPromoHome.length - 1)),
                                                                          count:
                                                                              shopPromoHome.length,
                                                                          axisDirection:
                                                                              Axis.horizontal,
                                                                          onDotClicked:
                                                                              (i) async {
                                                                            await _model.pageViewController2!.animateToPage(
                                                                              i,
                                                                              duration: Duration(milliseconds: 500),
                                                                              curve: Curves.ease,
                                                                            );
                                                                          },
                                                                          effect:
                                                                              smooth_page_indicator.SlideEffect(
                                                                            spacing:
                                                                                6.0,
                                                                            radius:
                                                                                999.0,
                                                                            dotWidth:
                                                                                8.0,
                                                                            dotHeight:
                                                                                8.0,
                                                                            dotColor:
                                                                                Color(0x32000000),
                                                                            activeDotColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            paintStyle:
                                                                                PaintingStyle.fill,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            wrapWithModel(
                                                              model: _model
                                                                  .headerSectionTitleModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  HeaderSectionTitleWidget(
                                                                title: FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  mnText:
                                                                      'Онцлох зарууд',
                                                                  enText:
                                                                      'Онцлох зарууд',
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future:
                                                                    HomeZarRecentCall
                                                                        .call(
                                                                  countryCode:
                                                                      'MN',
                                                                  categoryMainId:
                                                                      FFAppState()
                                                                          .MainCategories[
                                                                              1]
                                                                          .id,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final staggeredViewHomeZarRecentResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final homeShopRecent = (HomeZarRecentCall.recentList(
                                                                                staggeredViewHomeZarRecentResponse.jsonBody,
                                                                              )?.toList() ??
                                                                              [])
                                                                          .take(10)
                                                                          .toList();
                                                                      return MasonryGridView
                                                                          .builder(
                                                                        physics:
                                                                            const NeverScrollableScrollPhysics(),
                                                                        gridDelegate:
                                                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                          crossAxisCount:
                                                                              2,
                                                                        ),
                                                                        crossAxisSpacing:
                                                                            10.0,
                                                                        mainAxisSpacing:
                                                                            10.0,
                                                                        itemCount:
                                                                            homeShopRecent.length,
                                                                        shrinkWrap:
                                                                            true,
                                                                        itemBuilder:
                                                                            (context,
                                                                                homeShopRecentIndex) {
                                                                          final homeShopRecentItem =
                                                                              homeShopRecent[homeShopRecentIndex];
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                'PostDetail',
                                                                                queryParameters: {
                                                                                  'zarId': serializeParam(
                                                                                    getJsonField(
                                                                                      homeShopRecentItem,
                                                                                      r'''$.id''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            },
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.productItemPromoModels2.getModel(
                                                                                getJsonField(
                                                                                  homeShopRecentItem,
                                                                                  r'''$.id''',
                                                                                ).toString(),
                                                                                homeShopRecentIndex,
                                                                              ),
                                                                              updateCallback: () => setState(() {}),
                                                                              child: ProductItemPromoWidget(
                                                                                key: Key(
                                                                                  'Keywwj_${getJsonField(
                                                                                    homeShopRecentItem,
                                                                                    r'''$.id''',
                                                                                  ).toString()}',
                                                                                ),
                                                                                title: getJsonField(
                                                                                  homeShopRecentItem,
                                                                                  r'''$.title''',
                                                                                ).toString(),
                                                                                price: getJsonField(
                                                                                  homeShopRecentItem,
                                                                                  r'''$.price''',
                                                                                ),
                                                                                isPromoted: homeShopRecentIndex == 2,
                                                                                images: getJsonField(
                                                                                  homeShopRecentItem,
                                                                                  r'''$.media.images''',
                                                                                ),
                                                                                imagePaging: false,
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
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 16.0))
                                                      .addToStart(SizedBox(
                                                          height: 24.0)),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation2']!),
                                          ]
                                              .divide(SizedBox(height: 8.0))
                                              .addToStart(
                                                  SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) => Text(
                                  FFLocalizations.of(context).getText(
                                    'nfviqh5b' /* Tab View 3 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        fontSize: 32.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.bottomNavigationComponentModel,
                        updateCallback: () => setState(() {}),
                        child: BottomNavigationComponentWidget(
                          selectedPageIndex: 1,
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'vm37ip8p' /* LOADING */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
