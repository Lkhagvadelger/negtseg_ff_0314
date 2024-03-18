import '/components/form/form_file_container/form_file_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_file_upload_model.dart';
export 'form_file_upload_model.dart';

class FormFileUploadWidget extends StatefulWidget {
  const FormFileUploadWidget({super.key});

  @override
  State<FormFileUploadWidget> createState() => _FormFileUploadWidgetState();
}

class _FormFileUploadWidgetState extends State<FormFileUploadWidget> {
  late FormFileUploadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormFileUploadModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          FFLocalizations.of(context).getText(
            'sxiudp67' /* Зураг оруулах */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SFPRO',
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
                useGoogleFonts: false,
                lineHeight: 1.15,
              ),
        ),
        Expanded(
          child: wrapWithModel(
            model: _model.formFileContainerModel,
            updateCallback: () => setState(() {}),
            child: FormFileContainerWidget(
              btnTitle: FFLocalizations.of(context).getVariableText(
                mnText: 'Зураг оруулах',
                enText: 'Зураг оруулах',
              ),
              title: 'Зураг сонгох',
            ),
          ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
