import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dynamic_form_input_model.dart';
export 'dynamic_form_input_model.dart';

class DynamicFormInputWidget extends StatefulWidget {
  const DynamicFormInputWidget({
    super.key,
    required this.dynamicItem,
    required this.itemIndex,
  });

  final CategoryFilterStruct? dynamicItem;
  final int? itemIndex;

  @override
  State<DynamicFormInputWidget> createState() => _DynamicFormInputWidgetState();
}

class _DynamicFormInputWidgetState extends State<DynamicFormInputWidget> {
  late DynamicFormInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DynamicFormInputModel());

    _model.dynamicNumberFieldController ??= TextEditingController();
    _model.dynamicNumberFieldFocusNode ??= FocusNode();
    _model.dynamicNumberFieldFocusNode!.addListener(() => setState(() {}));
    _model.dynamicStringFieldController ??= TextEditingController();
    _model.dynamicStringFieldFocusNode ??= FocusNode();
    _model.dynamicStringFieldFocusNode!.addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.dynamicStringFieldController?.text =
              FFLocalizations.of(context).getText(
            'sdyxvc9f' /*  */,
          );
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Builder(
            builder: (context) {
              if (widget.dynamicItem?.dataType == 'number') {
                return Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.dynamicItem!.label,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                              lineHeight: 1.15,
                            ),
                      ),
                      TextFormField(
                        controller: _model.dynamicNumberFieldController,
                        focusNode: _model.dynamicNumberFieldFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.dynamicNumberFieldController',
                          Duration(milliseconds: 2000),
                          () async {
                            setState(() {
                              FFAppState().updateFormZarStruct(
                                (e) => e
                                  ..updateCategoryFilters(
                                    (e) => e[widget.itemIndex!]
                                      ..value = _model
                                          .dynamicNumberFieldController.text,
                                  ),
                              );
                            });
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.dropDownValue == null) {
                              return;
                            }
                            if (_model.dropDownMultiValue == null) {
                              return;
                            }
                          },
                        ),
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: widget.dynamicItem?.label,
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SFPRO',
                                color: FlutterFlowTheme.of(context).placeholder,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                                lineHeight: 1.33,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).borderSecondary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 12.0, 14.0, 12.0),
                          suffixIcon: _model
                                  .dynamicNumberFieldController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.dynamicNumberFieldController
                                        ?.clear();
                                    setState(() {
                                      FFAppState().updateFormZarStruct(
                                        (e) => e
                                          ..updateCategoryFilters(
                                            (e) => e[widget.itemIndex!]
                                              ..value = _model
                                                  .dynamicNumberFieldController
                                                  .text,
                                          ),
                                      );
                                    });
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.dropDownValue == null) {
                                      return;
                                    }
                                    if (_model.dropDownMultiValue == null) {
                                      return;
                                    }
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              fontSize: 15.0,
                              useGoogleFonts: false,
                              lineHeight: 1.33,
                            ),
                        minLines: 1,
                        maxLength: 20,
                        maxLengthEnforcement: MaxLengthEnforcement.none,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        keyboardType: TextInputType.number,
                        validator: _model.dynamicNumberFieldControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                );
              } else if ((widget.dynamicItem?.dataType == 'array') &&
                  (widget.dynamicItem?.isMulti == false)) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        widget.dynamicItem!.label,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                              lineHeight: 1.15,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: widget.dynamicItem!.data,
                        onChanged: (val) async {
                          setState(() => _model.dropDownValue = val);
                          setState(() {
                            FFAppState().updateFormZarStruct(
                              (e) => e
                                ..updateCategoryFilters(
                                  (e) => e[widget.itemIndex!]
                                    ..value = _model.dropDownValue,
                                ),
                            );
                          });
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          if (_model.dropDownValue == null) {
                            return;
                          }
                          if (_model.dropDownMultiValue == null) {
                            return;
                          }
                        },
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 44.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          '40rh0l7s' /* Сонгох */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).helpText,
                          size: 16.0,
                        ),
                        elevation: 2.0,
                        borderColor:
                            FlutterFlowTheme.of(context).borderSecondary,
                        borderWidth: 1.0,
                        borderRadius: 6.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                );
              } else if ((widget.dynamicItem?.dataType == 'array') &&
                  (widget.dynamicItem?.isMulti == true)) {
                return Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Text(
                          widget.dynamicItem!.label,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                    lineHeight: 1.15,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          multiSelectController:
                              _model.dropDownMultiValueController ??=
                                  FormFieldController<List<String>>(null),
                          options: widget.dynamicItem!.data,
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 44.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                    lineHeight: 1.33,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'epiiim8e' /* Сонгох */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).helpText,
                            size: 16.0,
                          ),
                          elevation: 2.0,
                          borderColor:
                              FlutterFlowTheme.of(context).borderSecondary,
                          borderWidth: 1.0,
                          borderRadius: 6.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: true,
                          onMultiSelectChanged: (val) async {
                            setState(() => _model.dropDownMultiValue = val);
                            setState(() {
                              FFAppState().updateFormZarStruct(
                                (e) => e
                                  ..updateCategoryFilters(
                                    (e) => e[widget.itemIndex!]
                                      ..value = functions.listToString(
                                          _model.dropDownMultiValue?.toList()),
                                  ),
                              );
                            });
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.dropDownValue == null) {
                              return;
                            }
                            if (_model.dropDownMultiValue == null) {
                              return;
                            }
                          },
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                );
              } else {
                return Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Text(
                          widget.dynamicItem!.label,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                    lineHeight: 1.15,
                                  ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.dynamicStringFieldController,
                        focusNode: _model.dynamicStringFieldFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.dynamicStringFieldController',
                          Duration(milliseconds: 2000),
                          () async {
                            setState(() {
                              FFAppState().updateFormZarStruct(
                                (e) => e
                                  ..updateCategoryFilters(
                                    (e) => e[widget.itemIndex!]
                                      ..value = _model
                                          .dynamicStringFieldController.text,
                                  ),
                              );
                            });
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.dropDownValue == null) {
                              return;
                            }
                            if (_model.dropDownMultiValue == null) {
                              return;
                            }
                          },
                        ),
                        textInputAction: TextInputAction.done,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: widget.dynamicItem?.label,
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'SFPRO',
                                color: FlutterFlowTheme.of(context).placeholder,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                                lineHeight: 1.33,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).borderSecondary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 12.0, 14.0, 12.0),
                          suffixIcon: _model
                                  .dynamicStringFieldController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.dynamicStringFieldController
                                        ?.clear();
                                    setState(() {
                                      FFAppState().updateFormZarStruct(
                                        (e) => e
                                          ..updateCategoryFilters(
                                            (e) => e[widget.itemIndex!]
                                              ..value = _model
                                                  .dynamicStringFieldController
                                                  .text,
                                          ),
                                      );
                                    });
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.dropDownValue == null) {
                                      return;
                                    }
                                    if (_model.dropDownMultiValue == null) {
                                      return;
                                    }
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              fontSize: 15.0,
                              useGoogleFonts: false,
                              lineHeight: 1.33,
                            ),
                        minLines: 1,
                        validator: _model.dynamicStringFieldControllerValidator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
