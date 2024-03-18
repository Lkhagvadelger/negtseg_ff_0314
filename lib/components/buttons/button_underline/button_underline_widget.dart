import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_underline_model.dart';
export 'button_underline_model.dart';

class ButtonUnderlineWidget extends StatefulWidget {
  const ButtonUnderlineWidget({
    super.key,
    this.btnText,
    required this.width,
    bool? isSelected,
  }) : this.isSelected = isSelected ?? false;

  final String? btnText;
  final int? width;
  final bool isSelected;

  @override
  State<ButtonUnderlineWidget> createState() => _ButtonUnderlineWidgetState();
}

class _ButtonUnderlineWidgetState extends State<ButtonUnderlineWidget> {
  late ButtonUnderlineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonUnderlineModel());

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
      width: valueOrDefault<double>(
        widget.width?.toDouble(),
        150.0,
      ),
      height: 40.0,
      constraints: BoxConstraints(
        maxWidth: 300.0,
        maxHeight: 40.0,
      ),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Text(
                  widget.btnText!,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'SFPRO',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                        lineHeight: 1.2,
                      ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: widget.isSelected ? 1.0 : 0.0,
            child: Container(
              width: widget.width?.toDouble(),
              height: 2.0,
              constraints: BoxConstraints(
                maxWidth: 300.0,
                maxHeight: 2.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                border: Border.all(
                  width: 2.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
