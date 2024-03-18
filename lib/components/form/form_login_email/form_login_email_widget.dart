import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_login_email_model.dart';
export 'form_login_email_model.dart';

class FormLoginEmailWidget extends StatefulWidget {
  const FormLoginEmailWidget({
    super.key,
    required this.title,
    this.emailValue,
  });

  final String? title;
  final String? emailValue;

  @override
  State<FormLoginEmailWidget> createState() => _FormLoginEmailWidgetState();
}

class _FormLoginEmailWidgetState extends State<FormLoginEmailWidget> {
  late FormLoginEmailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormLoginEmailModel());

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
      child: Material(
        color: Colors.transparent,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).secondary,
              width: 1.0,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: true,
                textInputAction: TextInputAction.done,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '1lzf1iw1' /* И-мэйл */,
                  ),
                  alignLabelWithHint: false,
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        fontSize: 0.0,
                        useGoogleFonts: false,
                        lineHeight: 0.0,
                      ),
                  errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        color: FlutterFlowTheme.of(context).error,
                        fontSize: 0.0,
                        useGoogleFonts: false,
                        lineHeight: 0.0,
                      ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  prefixIcon: FaIcon(
                    FontAwesomeIcons.mobileAlt,
                    size: 20.0,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
