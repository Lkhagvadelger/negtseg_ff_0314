import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_file_container_model.dart';
export 'form_file_container_model.dart';

class FormFileContainerWidget extends StatefulWidget {
  const FormFileContainerWidget({
    super.key,
    required this.btnTitle,
    this.title,
  });

  final String? btnTitle;
  final String? title;

  @override
  State<FormFileContainerWidget> createState() =>
      _FormFileContainerWidgetState();
}

class _FormFileContainerWidgetState extends State<FormFileContainerWidget> {
  late FormFileContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormFileContainerModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(0.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).borderSecondary,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(14.0, 12.0, 14.0, 12.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SFPRO',
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                          lineHeight: 1.33,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 123.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(6.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(6.0),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                widget.btnTitle!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'SFPRO',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                      lineHeight: 1.33,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
