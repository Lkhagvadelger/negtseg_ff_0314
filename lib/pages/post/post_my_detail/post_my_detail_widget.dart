import '/components/button_left_icon_title/button_left_icon_title_widget.dart';
import '/components/buttons/button_circle_font_icon/button_circle_font_icon_widget.dart';
import '/components/buttons/button_round_normal/button_round_normal_widget.dart';
import '/components/myzar_item_with_date/myzar_item_with_date_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_my_detail_model.dart';
export 'post_my_detail_model.dart';

class PostMyDetailWidget extends StatefulWidget {
  const PostMyDetailWidget({
    super.key,
    this.selectedCategory,
    this.selectedPost,
  });

  final dynamic selectedCategory;
  final dynamic selectedPost;

  @override
  State<PostMyDetailWidget> createState() => _PostMyDetailWidgetState();
}

class _PostMyDetailWidgetState extends State<PostMyDetailWidget> {
  late PostMyDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostMyDetailModel());

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
                        '3bsbfc8s' /* Миний зар */,
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
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 1.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning50,
                                borderRadius: BorderRadius.circular(999.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .warningBorder,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      FFIcons.kshieldCheck41,
                                      color: FlutterFlowTheme.of(context)
                                          .warningIcon,
                                      size: 16.0,
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '26m8f1dl' /* Зар шалгагдаж байгаа */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SFPRO',
                                            color: FlutterFlowTheme.of(context)
                                                .warningText,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                            lineHeight: 1.15,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.myzarItemWithDateModel,
                                updateCallback: () => setState(() {}),
                                child: MyzarItemWithDateWidget(
                                  title: FFAppState().FormZar.title,
                                  price: FFAppState().FormZar.price,
                                  dateString: 'Улбаанбаатар',
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.buttonLeftIconTitleModel,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonLeftIconTitleWidget(
                                    title: 'Boost',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.buttonCircleFontIconModel1,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonCircleFontIconWidget(
                                    iconName: 'eye',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.buttonCircleFontIconModel2,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonCircleFontIconWidget(
                                    iconName: 'pencil',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.buttonCircleFontIconModel3,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonCircleFontIconWidget(
                                    iconName: 'trash',
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'kfevtsxi' /* Нийтэлсэн */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'y0v6mdly' /* Огноо */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'jmdnflpt' /* Зарын дугаар */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFAppState().FormZar.category.name,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'nn2tsnh5' /* Ангилал */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFAppState().FormZar.category.name,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '0ytgr66w' /* Үзсэн */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFAppState().FormZar.category.name,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mnodvi47' /* Утас үзсэн */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFAppState().FormZar.category.name,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'zb1zx34l' /* Гар утас */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFAppState().FormZar.category.name,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'frwduozd' /* Цахим шуудан */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Text(
                                  FFAppState().FormZar.category.name,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 50.0, 16.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 44.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed(
                            'HomePageNew',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: wrapWithModel(
                          model: _model.buttonRoundNormalModel,
                          updateCallback: () => setState(() {}),
                          child: ButtonRoundNormalWidget(
                            title: 'ДУУСГАХ',
                            colorString: '#5148E7',
                            textColor: '#FFFFFF',
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 8.0))
                    .addToStart(SizedBox(height: 8.0))
                    .addToEnd(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
