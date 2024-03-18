import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_detail_main_model.dart';
export 'post_new_detail_main_model.dart';

class PostNewDetailMainWidget extends StatefulWidget {
  const PostNewDetailMainWidget({super.key});

  @override
  State<PostNewDetailMainWidget> createState() =>
      _PostNewDetailMainWidgetState();
}

class _PostNewDetailMainWidgetState extends State<PostNewDetailMainWidget> {
  late PostNewDetailMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewDetailMainModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // REST FORM CLEAR
      setState(() {
        FFAppState().updateFormZarStruct(
          (e) => e
            ..title = null
            ..description = null
            ..price = null
            ..isFlexiblePrice = null,
        );
      });
    });

    _model.titleTextFieldController ??=
        TextEditingController(text: FFAppState().FormZar.title);
    _model.titleTextFieldFocusNode ??= FocusNode();

    _model.priceTextFieldController ??=
        TextEditingController(text: FFAppState().FormZar.price.toString());
    _model.priceTextFieldFocusNode ??= FocusNode();

    _model.descTextFieldController ??=
        TextEditingController(text: FFAppState().FormZar.description);
    _model.descTextFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).white,
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
                        '060o9awr' /* Зар нэмэх  */,
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
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
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
                child: Container(
                  width: 50.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).borderBottomColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 90.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ow3nd2zw' /* Зарын гарчиг /дээд тал нь 100 ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                      lineHeight: 1.15,
                                    ),
                              ),
                              TextFormField(
                                controller: _model.titleTextFieldController,
                                focusNode: _model.titleTextFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.titleTextFieldController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    setState(() {
                                      FFAppState().updateFormZarStruct(
                                        (e) => e
                                          ..title = _model
                                              .titleTextFieldController.text,
                                      );
                                    });
                                  },
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '9fsb9ma1' /*  */,
                                  ),
                                  alignLabelWithHint: false,
                                  hintText: FFLocalizations.of(context).getText(
                                    'pex25tot' /* Гарчиг оруулах */,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                        lineHeight: 1.33,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .borderSecondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 14.0, 12.0),
                                  suffixIcon: _model.titleTextFieldController!
                                          .text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.titleTextFieldController
                                                ?.clear();
                                            setState(() {
                                              FFAppState().updateFormZarStruct(
                                                (e) => e
                                                  ..title = _model
                                                      .titleTextFieldController
                                                      .text,
                                              );
                                            });
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 12.0,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                                minLines: 1,
                                validator: _model
                                    .titleTextFieldControllerValidator
                                    .asValidator(context),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'l5bnx18s' /* Үнэ */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                      lineHeight: 1.15,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  controller: _model.priceTextFieldController,
                                  focusNode: _model.priceTextFieldFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.priceTextFieldController',
                                    Duration(milliseconds: 2000),
                                    () async {
                                      setState(() {
                                        FFAppState().updateFormZarStruct(
                                          (e) => e
                                            ..price = double.tryParse(_model
                                                .priceTextFieldController.text),
                                        );
                                      });
                                    },
                                  ),
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    alignLabelWithHint: false,
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'dk900rdb' /* Үнэ оруулах */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          fontSize: 0.0,
                                          useGoogleFonts: false,
                                          lineHeight: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .borderSecondary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            14.0, 12.0, 14.0, 12.0),
                                    suffixIcon: _model.priceTextFieldController!
                                            .text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.priceTextFieldController
                                                  ?.clear();
                                              setState(() {
                                                FFAppState()
                                                    .updateFormZarStruct(
                                                  (e) => e
                                                    ..price = double.tryParse(_model
                                                        .priceTextFieldController
                                                        .text),
                                                );
                                              });
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 12.0,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        fontSize: 15.0,
                                        useGoogleFonts: false,
                                        lineHeight: 1.33,
                                      ),
                                  minLines: 1,
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .priceTextFieldControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'bvulr899' /* Үнэ тохирч зарна */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                      lineHeight: 1.15,
                                    ),
                              ),
                              Switch.adaptive(
                                value: _model.switchValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.switchValue = newValue!);
                                  if (newValue!) {
                                    setState(() {
                                      FFAppState().updateFormZarStruct(
                                        (e) => e
                                          ..isFlexiblePrice =
                                              _model.switchValue,
                                      );
                                    });
                                  }
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).secondary,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).secondary,
                                inactiveTrackColor: FlutterFlowTheme.of(context)
                                    .borderSecondary,
                                inactiveThumbColor: FlutterFlowTheme.of(context)
                                    .borderSecondary,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '1tt9kuey' /* Нэмэлт тайлбар /доод тал нь 10... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                      lineHeight: 1.15,
                                    ),
                              ),
                              TextFormField(
                                controller: _model.descTextFieldController,
                                focusNode: _model.descTextFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.descTextFieldController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    setState(() {
                                      FFAppState().updateFormZarStruct(
                                        (e) => e
                                          ..description = _model
                                              .descTextFieldController.text,
                                      );
                                    });
                                  },
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: FFLocalizations.of(context).getText(
                                    'hg32amcz' /* Нэмэлт тайлбар */,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                        lineHeight: 1.33,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .borderSecondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 14.0, 12.0),
                                  suffixIcon: _model.descTextFieldController!
                                          .text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.descTextFieldController
                                                ?.clear();
                                            setState(() {
                                              FFAppState().updateFormZarStruct(
                                                (e) => e
                                                  ..description = _model
                                                      .descTextFieldController
                                                      .text,
                                              );
                                            });
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 12.0,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 15.0,
                                      useGoogleFonts: false,
                                      lineHeight: 1.33,
                                    ),
                                maxLines: 5,
                                minLines: 5,
                                maxLength: 320,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                validator: _model
                                    .descTextFieldControllerValidator
                                    .asValidator(context),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ].divide(SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                  child: Container(
                    height: 44.0,
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }

                        context.pushNamed('PostNewDetailType');
                      },
                      child: wrapWithModel(
                        model: _model.buttonRoundIconRightModel,
                        updateCallback: () => setState(() {}),
                        child: ButtonRoundIconRightWidget(
                          title: FFLocalizations.of(context).getVariableText(
                            mnText: 'Үргэлжлүүлэх',
                            enText: 'Үргэлжлүүлэх',
                          ),
                          icon: Icon(
                            Icons.arrow_forward,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 20.0,
                          ),
                          isFull: true,
                        ),
                      ),
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
