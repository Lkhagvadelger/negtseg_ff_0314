import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_round_model.dart';
export 'button_round_model.dart';

class ButtonRoundWidget extends StatefulWidget {
  const ButtonRoundWidget({
    super.key,
    required this.title,
    required this.colorString,
    required this.iconUrl,
    required this.textColor,
  });

  final String? title;
  final String? colorString;
  final String? iconUrl;
  final String? textColor;

  @override
  State<ButtonRoundWidget> createState() => _ButtonRoundWidgetState();
}

class _ButtonRoundWidgetState extends State<ButtonRoundWidget> {
  late ButtonRoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonRoundModel());

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
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16.0,
              height: 16.0,
              child: custom_widgets.SvgIcon(
                width: 16.0,
                height: 16.0,
                svgUrl: widget.iconUrl!,
              ),
            ),
            Text(
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
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
