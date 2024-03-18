import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_circle_pin_model.dart';
export 'form_circle_pin_model.dart';

class FormCirclePinWidget extends StatefulWidget {
  const FormCirclePinWidget({super.key});

  @override
  State<FormCirclePinWidget> createState() => _FormCirclePinWidgetState();
}

class _FormCirclePinWidgetState extends State<FormCirclePinWidget> {
  late FormCirclePinModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormCirclePinModel());

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
      child: Container(
        width: 64.0,
        height: 64.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 1.0,
          ),
        ),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              autofocus: true,
              textInputAction: TextInputAction.next,
              obscureText: false,
              decoration: InputDecoration(
                labelText: FFLocalizations.of(context).getText(
                  'uzrds0ej' /* - */,
                ),
                labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'SFPRO',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 28.0,
                      useGoogleFonts: false,
                      lineHeight: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'SFPRO',
                      fontSize: 0.0,
                      useGoogleFonts: false,
                    ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SFPRO',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 28.0,
                    useGoogleFonts: false,
                    lineHeight: 1.14,
                  ),
              textAlign: TextAlign.center,
              maxLength: 1,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  null,
              keyboardType: TextInputType.number,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
      ),
    );
  }
}
