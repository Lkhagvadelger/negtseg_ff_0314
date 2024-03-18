import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_input_switch_model.dart';
export 'form_input_switch_model.dart';

class FormInputSwitchWidget extends StatefulWidget {
  const FormInputSwitchWidget({
    super.key,
    required this.title,
    bool? isSelected,
  }) : this.isSelected = isSelected ?? false;

  final String? title;
  final bool isSelected;

  @override
  State<FormInputSwitchWidget> createState() => _FormInputSwitchWidgetState();
}

class _FormInputSwitchWidgetState extends State<FormInputSwitchWidget> {
  late FormInputSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormInputSwitchModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title!,
            maxLines: 2,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SFPRO',
                  fontSize: 15.0,
                  useGoogleFonts: false,
                  lineHeight: 1.33,
                ),
          ),
          Switch.adaptive(
            value: _model.switchValue ??= widget.isSelected,
            onChanged: (newValue) async {
              setState(() => _model.switchValue = newValue!);
            },
            activeColor: FlutterFlowTheme.of(context).secondary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            inactiveTrackColor: FlutterFlowTheme.of(context).borderSecondary,
            inactiveThumbColor: FlutterFlowTheme.of(context).borderSecondary,
          ),
        ].divide(SizedBox(width: 10.0)),
      ),
    );
  }
}
