import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_round_normal_model.dart';
export 'button_round_normal_model.dart';

class ButtonRoundNormalWidget extends StatefulWidget {
  const ButtonRoundNormalWidget({
    super.key,
    required this.title,
    required this.colorString,
    required this.textColor,
  });

  final String? title;
  final String? colorString;
  final String? textColor;

  @override
  State<ButtonRoundNormalWidget> createState() =>
      _ButtonRoundNormalWidgetState();
}

class _ButtonRoundNormalWidgetState extends State<ButtonRoundNormalWidget> {
  late ButtonRoundNormalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonRoundNormalModel());

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
        color: colorFromCssString(
          widget.colorString!,
          defaultColor: Colors.black,
        ),
        borderRadius: BorderRadius.circular(999.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 0.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
        child: Text(
          valueOrDefault<String>(
            widget.title,
            'asdasd',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SFPRO',
                color: colorFromCssString(
                  widget.textColor!,
                  defaultColor: Colors.black,
                ),
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                useGoogleFonts: false,
                lineHeight: 1.15,
              ),
        ),
      ),
    );
  }
}
