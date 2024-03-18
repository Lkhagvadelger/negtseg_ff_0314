import '/components/myzar_item/myzar_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_my_model.dart';
export 'post_my_model.dart';

class PostMyWidget extends StatefulWidget {
  const PostMyWidget({
    super.key,
    this.selectedCategory,
    this.selectedPost,
  });

  final dynamic selectedCategory;
  final dynamic selectedPost;

  @override
  State<PostMyWidget> createState() => _PostMyWidgetState();
}

class _PostMyWidgetState extends State<PostMyWidget>
    with TickerProviderStateMixin {
  late PostMyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostMyModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
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
                        'lwbmi40b' /* Миний зарууд */,
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
                            '7m5nsb4b' /* Бүгд */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            '1cxeyuvi' /* Нийтлэгдсэн */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'sh9x787a' /* Шалгагдаж байгаа */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            '2au5w5bi' /* Буцаагдсан */,
                          ),
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [
                          () async {},
                          () async {},
                          () async {},
                          () async {}
                        ][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: wrapWithModel(
                                  model: _model.myzarItemModel,
                                  updateCallback: () => setState(() {}),
                                  child: MyzarItemWidget(
                                    title: 'Titlese',
                                    price: 100000.0,
                                    status: 'Шалгагдаж байна',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'tsxkzn7y' /* Tab View 2 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 32.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '0e48aeks' /* Tab View 3 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 32.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'oudjytv1' /* Tab View 4 */,
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
