import '/components/button_left_icon_title/button_left_icon_title_widget.dart';
import '/components/form/form_input_normal/form_input_normal_widget.dart';
import '/components/form/form_input_switch/form_input_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({
    super.key,
    this.selectedCategory,
    this.selectedPost,
  });

  final dynamic selectedCategory;
  final dynamic selectedPost;

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

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
                        'nf314dfr' /* Тохиргоо */,
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
              color: FlutterFlowTheme.of(context).accent4,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ppuihuy0' /* Миний мэдээлэл */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                  lineHeight: 1.41,
                                ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent4,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 12.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://picsum.photos/seed/334/600',
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'w8ijhv5x' /* Зураг сонгох */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.formInputNormalModel1,
                                updateCallback: () => setState(() {}),
                                child: FormInputNormalWidget(
                                  title: 'Нэр',
                                  itemIndex: 0,
                                  value: FFAppState().UserData.name,
                                  type: 'string',
                                  isMulti: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formInputNormalModel2,
                                updateCallback: () => setState(() {}),
                                child: FormInputNormalWidget(
                                  title: 'Цахим шуудан',
                                  itemIndex: 1,
                                  value: FFAppState().UserData.email,
                                  type: 'string',
                                  isMulti: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formInputNormalModel3,
                                updateCallback: () => setState(() {}),
                                child: FormInputNormalWidget(
                                  title: 'Утасны дугаар',
                                  itemIndex: 2,
                                  value: FFAppState().UserData.phoneNumber,
                                  type: 'number',
                                  isMulti: false,
                                ),
                              ),
                            ].divide(SizedBox(height: 20.0)),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '64w43j95' /* Цахим мэдэгдэл */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SFPRO',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                    lineHeight: 1.41,
                                  ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.formInputSwitchModel1,
                            updateCallback: () => setState(() {}),
                            child: FormInputSwitchWidget(
                              title: 'Нийтлэгдсэн зарын талаар мэдэгдэх',
                              isSelected: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.formInputSwitchModel2,
                            updateCallback: () => setState(() {}),
                            child: FormInputSwitchWidget(
                              title: 'Буцаагдсан зарын талаар мэдэгдэх',
                              isSelected: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.formInputSwitchModel3,
                            updateCallback: () => setState(() {}),
                            child: FormInputSwitchWidget(
                              title: 'Ангилал шинэ зарууд',
                              isSelected: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'dbr46yjl' /* Чатны мэдэгдэл */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                  lineHeight: 1.41,
                                ),
                          ),
                          wrapWithModel(
                            model: _model.formInputSwitchModel4,
                            updateCallback: () => setState(() {}),
                            child: FormInputSwitchWidget(
                              title: 'Нийтлэгдсэн зарын талаар мэдэгдэх',
                              isSelected: true,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.formInputSwitchModel5,
                            updateCallback: () => setState(() {}),
                            child: FormInputSwitchWidget(
                              title: 'Буцаагдсан зарын талаар',
                              isSelected: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 24.0),
                    child: wrapWithModel(
                      model: _model.buttonLeftIconTitleModel,
                      updateCallback: () => setState(() {}),
                      child: ButtonLeftIconTitleWidget(
                        title: 'Гарах',
                        iconName: 'logout',
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
