import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_check_box_model.dart';
export 'form_check_box_model.dart';

class FormCheckBoxWidget extends StatefulWidget {
  const FormCheckBoxWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<FormCheckBoxWidget> createState() => _FormCheckBoxWidgetState();
}

class _FormCheckBoxWidgetState extends State<FormCheckBoxWidget> {
  late FormCheckBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormCheckBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Theme(
          data: ThemeData(
            checkboxTheme: CheckboxThemeData(
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
          ),
          child: Checkbox(
            value: _model.checkboxValue ??= true,
            onChanged: (newValue) async {
              setState(() => _model.checkboxValue = newValue!);
            },
            activeColor: FlutterFlowTheme.of(context).primary,
            checkColor: FlutterFlowTheme.of(context).info,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: Text(
            widget.title!,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SFPRO',
                  fontSize: 13.0,
                  useGoogleFonts: false,
                  lineHeight: 1.15,
                ),
          ),
        ),
      ],
    );
  }
}
