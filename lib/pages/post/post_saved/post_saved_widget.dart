import '/backend/api_requests/api_calls.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_saved_model.dart';
export 'post_saved_model.dart';

class PostSavedWidget extends StatefulWidget {
  const PostSavedWidget({
    super.key,
    this.selectedCategory,
    this.selectedPost,
  });

  final dynamic selectedCategory;
  final dynamic selectedPost;

  @override
  State<PostSavedWidget> createState() => _PostSavedWidgetState();
}

class _PostSavedWidgetState extends State<PostSavedWidget>
    with TickerProviderStateMixin {
  late PostSavedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostSavedModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
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
        backgroundColor: FlutterFlowTheme.of(context).accent4,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
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
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'jh8tm32k' /* Миний зарууд */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SFPRO',
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                            lineHeight: 1.41,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0),
                    child: TabBar(
                      isScrollable: true,
                      labelColor: FlutterFlowTheme.of(context).primaryText,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).primaryText,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'SFPRO',
                                fontSize: 15.0,
                                useGoogleFonts: false,
                                lineHeight: 1.33,
                              ),
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: FlutterFlowTheme.of(context).primaryText,
                      tabs: [
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'dbf906d6' /* Хадгалсан зар */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'sa4rt8cw' /* Хадгалсан хайлт */,
                          ),
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 16.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: HomeTopZarApiCall.call(
                              countryCode: 'MN',
                              categoryMainId: FFAppState()
                                  .MainCategories[
                                      FFAppState().MainDataSelectedIndex]
                                  .id,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 40.0,
                                    height: 40.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final staggeredViewHomeTopZarApiResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final myZars = HomeTopZarApiCall.topZarList(
                                        staggeredViewHomeTopZarApiResponse
                                            .jsonBody,
                                      )?.toList() ??
                                      [];
                                  return MasonryGridView.builder(
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    itemCount: myZars.length,
                                    itemBuilder: (context, myZarsIndex) {
                                      final myZarsItem = myZars[myZarsIndex];
                                      return ProductItemPromoWidget(
                                        key: Key(
                                            'Keyx7a_${myZarsIndex}_of_${myZars.length}'),
                                        title: getJsonField(
                                          myZarsItem,
                                          r'''$.title''',
                                        ).toString(),
                                        price: getJsonField(
                                          myZarsItem,
                                          r'''$.price''',
                                        ),
                                        isPromoted: false,
                                        imagePaging: false,
                                        images: getJsonField(
                                          myZarsItem,
                                          r'''$.media.images''',
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'k3o70wp3' /* Tab View 2 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 32.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
