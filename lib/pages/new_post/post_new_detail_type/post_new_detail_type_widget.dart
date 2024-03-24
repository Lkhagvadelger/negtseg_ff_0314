import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/components/post/post_new_list_item/post_new_list_item_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_detail_type_model.dart';
export 'post_new_detail_type_model.dart';

class PostNewDetailTypeWidget extends StatefulWidget {
  const PostNewDetailTypeWidget({super.key});

  @override
  State<PostNewDetailTypeWidget> createState() =>
      _PostNewDetailTypeWidgetState();
}

class _PostNewDetailTypeWidgetState extends State<PostNewDetailTypeWidget> {
  late PostNewDetailTypeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewDetailTypeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().updateFormZarStruct(
          (e) => e..zarType = _model.radioButtonValue,
        );
      });
    });

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
                        'q3zngd4a' /* Зар нэмэх  */,
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
                  context.safePop();
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
                      FFIcons.kcircleQuestion03,
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
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
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
                        FlutterFlowRadioButton(
                          options: [
                            FFLocalizations.of(context).getText(
                              's8bf1wh6' /* Энгийн зар */,
                            ),
                            FFLocalizations.of(context).getText(
                              'c3lzj50h' /* Онцгой зар */,
                            )
                          ].toList(),
                          onChanged: (val) async {
                            setState(() {});
                            setState(() {
                              FFAppState().updateFormZarStruct(
                                (e) => e..zarType = _model.radioButtonValue,
                              );
                            });
                          },
                          controller: _model.radioButtonValueController ??=
                              FormFieldController<String>(
                                  FFLocalizations.of(context).getText(
                            'apxu8skd' /* Энгийн зар */,
                          )),
                          optionHeight: 28.0,
                          textStyle: FlutterFlowTheme.of(context).labelMedium,
                          selectedTextStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'SFPRO',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 15.0,
                                useGoogleFonts: false,
                                lineHeight: 1.33,
                              ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor:
                              FlutterFlowTheme.of(context).secondary,
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).borderSecondary,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).borderBottomColor,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.postNewListItemModel,
                          updateCallback: () => setState(() {}),
                          child: PostNewListItemWidget(
                            title: FFAppState().FormZar.title,
                            price: FFAppState().FormZar.price.toString(),
                            date: 'Улаанбаатар',
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
                        // COUNT SET 0
                        setState(() {
                          _model.counter = 0;
                        });
                        if (FFAppState().UserToken != null &&
                            FFAppState().UserToken != '') {
                          while (_model.counter <
                              FFAppState().FormZar.categoryFilters.length) {
                            // Add to DynamicVal
                            setState(() {
                              FFAppState().updateFormZarStruct(
                                (e) => e
                                  ..updateDynamicValue(
                                    (e) => e.add(FormZarDynamicValueStruct(
                                      key: FFAppState()
                                          .FormZar
                                          .categoryFilters[_model.counter]
                                          .key,
                                      value: FFAppState()
                                          .FormZar
                                          .categoryFilters[_model.counter]
                                          .value,
                                    )),
                                  ),
                              );
                            });
                            setState(() {
                              _model.counter = _model.counter + 1;
                            });
                          }
                          // Zar Create API
                          _model.zarApiResult = await ZarCreateCall.call(
                            token: FFAppState().UserToken,
                            title: FFAppState().FormZar.title,
                            description: FFAppState().FormZar.description,
                            locationList: FFAppState().FormZar.location,
                            categoryId: FFAppState().FormZar.category.id,
                            categoryIdsList: FFAppState().FormZar.categoryIds,
                            mediaJson: FFAppState().FormZar.media.toMap(),
                            price: FFAppState().FormZar.price,
                            isFlexiblePrice:
                                FFAppState().FormZar.isFlexiblePrice,
                            countryCode: 'MN',
                            dynamicFieldsJson: getJsonField(
                              FFAppState().FormZar.toMap(),
                              r'''$.dynamicValue''',
                              true,
                            ),
                            zarType: FFAppState().FormZar.zarType,
                            categoryMainId:
                                FFAppState().MainCategories.first.id,
                          );
                          if ((_model.zarApiResult?.succeeded ?? true)) {
                            context.pushNamed('LoginSuccess');
                          }
                        } else {
                          context.pushNamed('Login');
                        }

                        setState(() {});
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
