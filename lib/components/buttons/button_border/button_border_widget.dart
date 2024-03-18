import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_border_model.dart';
export 'button_border_model.dart';

class ButtonBorderWidget extends StatefulWidget {
  const ButtonBorderWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<ButtonBorderWidget> createState() => _ButtonBorderWidgetState();
}

class _ButtonBorderWidgetState extends State<ButtonBorderWidget> {
  late ButtonBorderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonBorderModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 36.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 0.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.user,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 16.0,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SFPRO',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                    lineHeight: 1.15,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
