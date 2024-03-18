import '/components/search_input/search_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_screen_model.dart';
export 'search_screen_model.dart';

class SearchScreenWidget extends StatefulWidget {
  const SearchScreenWidget({super.key});

  @override
  State<SearchScreenWidget> createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreenWidget> {
  late SearchScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchScreenModel());

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
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 52.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'rc2t6upi' /* Сүүлийн хайлтууд */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                        lineHeight: 1.41,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final recentSearchList = FFAppState()
                                        .recentSearch
                                        .map((e) => e)
                                        .toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          List.generate(recentSearchList.length,
                                              (recentSearchListIndex) {
                                        final recentSearchListItem =
                                            recentSearchList[
                                                recentSearchListIndex];
                                        return Text(
                                          recentSearchListItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }).divide(SizedBox(height: 16.0)),
                                    );
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'khd5bhoy' /* Санал болгох */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                        lineHeight: 1.41,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final suggestedSearchList = FFAppState()
                                        .suggestedSearch
                                        .map((e) => e)
                                        .toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          suggestedSearchList.length,
                                          (suggestedSearchListIndex) {
                                        final suggestedSearchListItem =
                                            suggestedSearchList[
                                                suggestedSearchListIndex];
                                        return Text(
                                          suggestedSearchListItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }).divide(SizedBox(height: 16.0)),
                                    );
                                  },
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.karrowSmLeft04,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Expanded(
                          child: wrapWithModel(
                            model: _model.searchInputModel,
                            updateCallback: () => setState(() {}),
                            child: SearchInputWidget(),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
