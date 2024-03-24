import '/backend/api_requests/api_calls.dart';
import '/components/myzar_item/myzar_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiMyZar = await MyZarListCall.call(
        countryCode: 'MN',
        zarStatus: 'Бүгд',
        token: FFAppState().UserToken,
      );
      if ((_model.apiMyZar?.succeeded ?? true)) {
        setState(() {
          _model.zarData = MyZarListCall.list(
            (_model.apiMyZar?.jsonBody ?? ''),
          )!
              .toList()
              .cast<dynamic>();
        });
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 6,
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
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: RefreshIndicator(
              color: FlutterFlowTheme.of(context).secondary,
              backgroundColor: FlutterFlowTheme.of(context).borderBottomColor,
              strokeWidth: 3.0,
              onRefresh: () async {
                _model.apiMyZarPull = await MyZarListCall.call(
                  countryCode: 'MN',
                  zarStatus: 'Бүгд',
                  token: FFAppState().UserToken,
                );
                if ((_model.apiMyZarPull?.succeeded ?? true)) {
                  setState(() {
                    _model.zarData = getJsonField(
                      (_model.apiMyZarPull?.jsonBody ?? ''),
                      r'''$.list''',
                      true,
                    )!
                        .toList()
                        .cast<dynamic>();
                  });
                }
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 200.0,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                isScrollable: true,
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
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
                                tabs: [
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '9o15j8o8' /* Бүгд */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '209fkko9' /* Нийтэлсэн */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'z8vtpfqp' /* Шалгагдаж байгаа */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'hkmpcxkq' /* Буцаагдсан */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'sq772fs7' /* Устгагдсан */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'e5d22yzt' /* Архивласан */,
                                    ),
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [
                                    () async {},
                                    () async {},
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
                                    child: Builder(
                                      builder: (context) {
                                        final zarAll = _model.zarData.toList();
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(zarAll.length,
                                              (zarAllIndex) {
                                            final zarAllItem =
                                                zarAll[zarAllIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: MyzarItemWidget(
                                                key: Key(
                                                    'Key5wy_${zarAllIndex}_of_${zarAll.length}'),
                                                title: getJsonField(
                                                  zarAllItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  zarAllItem,
                                                  r'''$.price''',
                                                ),
                                                status: getJsonField(
                                                  zarAllItem,
                                                  r'''$.statusName''',
                                                ).toString(),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Builder(
                                      builder: (context) {
                                        final zarNiitelsen = _model.zarData
                                            .where((e) =>
                                                functions.checkJsonData(
                                                    'Нийтэлсэн',
                                                    e,
                                                    'statusName')!)
                                            .toList();
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children:
                                              List.generate(zarNiitelsen.length,
                                                  (zarNiitelsenIndex) {
                                            final zarNiitelsenItem =
                                                zarNiitelsen[zarNiitelsenIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: MyzarItemWidget(
                                                key: Key(
                                                    'Keycij_${zarNiitelsenIndex}_of_${zarNiitelsen.length}'),
                                                title: getJsonField(
                                                  zarNiitelsenItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  zarNiitelsenItem,
                                                  r'''$.price''',
                                                ),
                                                status: getJsonField(
                                                  zarNiitelsenItem,
                                                  r'''$.statusName''',
                                                ).toString(),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Builder(
                                      builder: (context) {
                                        final zarShalgagdajBaigaa = _model
                                            .zarData
                                            .where((e) =>
                                                functions.checkJsonData(
                                                    'Шалгагдаж байгаа',
                                                    e,
                                                    'statusName')!)
                                            .toList();
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(
                                              zarShalgagdajBaigaa.length,
                                              (zarShalgagdajBaigaaIndex) {
                                            final zarShalgagdajBaigaaItem =
                                                zarShalgagdajBaigaa[
                                                    zarShalgagdajBaigaaIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: MyzarItemWidget(
                                                key: Key(
                                                    'Keyrqt_${zarShalgagdajBaigaaIndex}_of_${zarShalgagdajBaigaa.length}'),
                                                title: getJsonField(
                                                  zarShalgagdajBaigaaItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  zarShalgagdajBaigaaItem,
                                                  r'''$.price''',
                                                ),
                                                status: getJsonField(
                                                  zarShalgagdajBaigaaItem,
                                                  r'''$.statusName''',
                                                ).toString(),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Builder(
                                      builder: (context) {
                                        final zarButsaagdsan = _model.zarData
                                            .where((e) =>
                                                functions.checkJsonData(
                                                    'Буцаагдсан',
                                                    e,
                                                    'statusName')!)
                                            .toList();
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(
                                              zarButsaagdsan.length,
                                              (zarButsaagdsanIndex) {
                                            final zarButsaagdsanItem =
                                                zarButsaagdsan[
                                                    zarButsaagdsanIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: MyzarItemWidget(
                                                key: Key(
                                                    'Keye2j_${zarButsaagdsanIndex}_of_${zarButsaagdsan.length}'),
                                                title: getJsonField(
                                                  zarButsaagdsanItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  zarButsaagdsanItem,
                                                  r'''$.price''',
                                                ),
                                                status: getJsonField(
                                                  zarButsaagdsanItem,
                                                  r'''$.statusName''',
                                                ).toString(),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Builder(
                                      builder: (context) {
                                        final zarUstgagdsan = _model.zarData
                                            .where((e) =>
                                                functions.checkJsonData(
                                                    'Устгагдсан',
                                                    e,
                                                    'statusName')!)
                                            .toList();
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(
                                              zarUstgagdsan.length,
                                              (zarUstgagdsanIndex) {
                                            final zarUstgagdsanItem =
                                                zarUstgagdsan[
                                                    zarUstgagdsanIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: MyzarItemWidget(
                                                key: Key(
                                                    'Key48j_${zarUstgagdsanIndex}_of_${zarUstgagdsan.length}'),
                                                title: getJsonField(
                                                  zarUstgagdsanItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  zarUstgagdsanItem,
                                                  r'''$.price''',
                                                ),
                                                status: getJsonField(
                                                  zarUstgagdsanItem,
                                                  r'''$.statusName''',
                                                ).toString(),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Builder(
                                      builder: (context) {
                                        final zarArchive = _model.zarData
                                            .where((e) =>
                                                functions.checkJsonData(
                                                    'Архивласан',
                                                    e,
                                                    'statusName')!)
                                            .toList();
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children:
                                              List.generate(zarArchive.length,
                                                  (zarArchiveIndex) {
                                            final zarArchiveItem =
                                                zarArchive[zarArchiveIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: MyzarItemWidget(
                                                key: Key(
                                                    'Keyohg_${zarArchiveIndex}_of_${zarArchive.length}'),
                                                title: getJsonField(
                                                  zarArchiveItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  zarArchiveItem,
                                                  r'''$.price''',
                                                ),
                                                status: getJsonField(
                                                  zarArchiveItem,
                                                  r'''$.statusName''',
                                                ).toString(),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
