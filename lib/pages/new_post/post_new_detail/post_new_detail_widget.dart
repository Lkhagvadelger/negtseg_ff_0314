import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/components/form/dynamic_form_input/dynamic_form_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_detail_model.dart';
export 'post_new_detail_model.dart';

class PostNewDetailWidget extends StatefulWidget {
  const PostNewDetailWidget({super.key});

  @override
  State<PostNewDetailWidget> createState() => _PostNewDetailWidgetState();
}

class _PostNewDetailWidgetState extends State<PostNewDetailWidget> {
  late PostNewDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewDetailModel());

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
                        'a5sbk0mt' /* Ангилал сонгох */,
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
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).borderBottomColor,
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 60.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {},
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'f2qk3qca' /* Ангилал */,
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
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(6.0),
                                        bottomRight: Radius.circular(6.0),
                                        topLeft: Radius.circular(6.0),
                                        topRight: Radius.circular(6.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .borderSecondary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 14.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFAppState()
                                                        .FormZar
                                                        .category
                                                        .name,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SFPRO',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.33,
                                                        ),
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      final categoryNames =
                                                          FFAppState()
                                                              .FormZar
                                                              .categoryNames
                                                              .toList();
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            categoryNames
                                                                .length,
                                                            (categoryNamesIndex) {
                                                          final categoryNamesItem =
                                                              categoryNames[
                                                                  categoryNamesIndex];
                                                          return Builder(
                                                            builder: (context) {
                                                              if (FFAppState()
                                                                      .FormZar
                                                                      .categoryNames
                                                                      .last ==
                                                                  categoryNamesItem) {
                                                                return Text(
                                                                  categoryNamesItem,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SFPRO',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .helpText,
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            false,
                                                                        lineHeight:
                                                                            1.38,
                                                                      ),
                                                                );
                                                              } else {
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      categoryNamesItem,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SFPRO',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).helpText,
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                false,
                                                                            lineHeight:
                                                                                1.38,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'zv2l1cjf' /* / */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SFPRO',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).helpText,
                                                                            fontSize:
                                                                                13.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                false,
                                                                            lineHeight:
                                                                                1.38,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                );
                                                              }
                                                            },
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            FFIcons.kcircleCheck,
                                            color: FlutterFlowTheme.of(context)
                                                .successIcon,
                                            size: 16.0,
                                          ),
                                        ].divide(SizedBox(width: 6.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final dynamicInputs = FFAppState()
                                    .FormZar
                                    .categoryFilters
                                    .toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(dynamicInputs.length,
                                      (dynamicInputsIndex) {
                                    final dynamicInputsItem =
                                        dynamicInputs[dynamicInputsIndex];
                                    return wrapWithModel(
                                      model: _model.dynamicFormInputModels
                                          .getModel(
                                        '${dynamicInputsIndex.toString()}${dynamicInputsItem.key}',
                                        dynamicInputsIndex,
                                      ),
                                      updateCallback: () => setState(() {}),
                                      child: DynamicFormInputWidget(
                                        key: Key(
                                          'Keyy6y_${'${dynamicInputsIndex.toString()}${dynamicInputsItem.key}'}',
                                        ),
                                        dynamicItem: dynamicInputsItem,
                                        itemIndex: dynamicInputsIndex,
                                      ),
                                    );
                                  }).divide(SizedBox(height: 20.0)),
                                );
                              },
                            ),
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
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 24.0),
                  child: Container(
                    height: 44.0,
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // REST-CAT ERR & FieldCounter
                        setState(() {
                          _model.fieldCounter = 0;
                          _model.categoryFieldError = [];
                        });
                        while (_model.fieldCounter <
                            FFAppState().FormZar.categoryFilters.length) {
                          if (FFAppState()
                                  .FormZar
                                  .categoryFilters[_model.fieldCounter]
                                  .value ==
                              '') {
                            // Add to CategoryFilterError
                            setState(() {
                              _model.addToCategoryFieldError(FFAppState()
                                  .FormZar
                                  .categoryFilters[_model.fieldCounter]);
                            });
                          }
                          // Increment Cateogry count
                          setState(() {
                            _model.fieldCounter = _model.fieldCounter + 1;
                          });
                        }
                        if ((_model.categoryFieldError.isNotEmpty) == true) {
                        } else {
                          context.pushNamed('PostNewDetailImage');
                        }
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
