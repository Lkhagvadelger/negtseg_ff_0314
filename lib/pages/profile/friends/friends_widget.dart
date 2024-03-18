import '/components/search_bar_friend/search_bar_friend_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'friends_model.dart';
export 'friends_model.dart';

class FriendsWidget extends StatefulWidget {
  const FriendsWidget({
    super.key,
    this.selectedCategory,
    this.selectedPost,
  });

  final dynamic selectedCategory;
  final dynamic selectedPost;

  @override
  State<FriendsWidget> createState() => _FriendsWidgetState();
}

class _FriendsWidgetState extends State<FriendsWidget> {
  late FriendsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FriendsModel());

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
                        't89883gt' /* Миний найзууд */,
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
              Container(
                width: 50.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Icon(
                    FFIcons.kcirclePlus58,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
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
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 1.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: wrapWithModel(
                      model: _model.searchBarFriendModel,
                      updateCallback: () => setState(() {}),
                      child: SearchBarFriendWidget(),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).indigo50,
                              borderRadius: BorderRadius.circular(999.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                FFIcons.kidCard53,
                                color: FlutterFlowTheme.of(context).iconPrimary,
                                size: 16.0,
                              ),
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'a6g53czp' /* My bussiness card */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                      Icon(
                        FFIcons.kchevronRight,
                        color: FlutterFlowTheme.of(context).placeholder,
                        size: 20.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'svyokw5v' /* Миний найзууд */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SFPRO',
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                            lineHeight: 1.41,
                          ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(999.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FFIcons.kuser1,
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '6wlnq54x' /* Username1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'cw0eqs58' /* U */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(999.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FFIcons.kuser1,
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'o26bqz32' /* Username1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '3vx45usj' /* U */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(999.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FFIcons.kuser1,
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'bchwrnqw' /* Username1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'l9oqitrs' /* U */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(999.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FFIcons.kuser1,
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ko5ik5mm' /* Username1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '5hsbfgt0' /* U */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(999.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FFIcons.kuser1,
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'hzd9bror' /* Username1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'wn1hsqri' /* U */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
