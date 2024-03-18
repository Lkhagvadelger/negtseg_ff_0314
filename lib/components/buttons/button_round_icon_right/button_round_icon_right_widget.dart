import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_round_icon_right_model.dart';
export 'button_round_icon_right_model.dart';

class ButtonRoundIconRightWidget extends StatefulWidget {
  const ButtonRoundIconRightWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.isFull,
  });

  final String? title;
  final Widget? icon;
  final bool? isFull;

  @override
  State<ButtonRoundIconRightWidget> createState() =>
      _ButtonRoundIconRightWidgetState();
}

class _ButtonRoundIconRightWidgetState
    extends State<ButtonRoundIconRightWidget> {
  late ButtonRoundIconRightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonRoundIconRightModel());

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
      children: [
        Builder(
          builder: (context) {
            if (widget.isFull ?? false) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.circular(999.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 0.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getVariableText(
                          mnText: widget.title,
                          enText: widget.title,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                              lineHeight: 1.33,
                            ),
                      ),
                      widget.icon!,
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.circular(999.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getVariableText(
                          mnText: widget.title,
                          enText: widget.title,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                              lineHeight: 1.33,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: widget.icon!,
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
