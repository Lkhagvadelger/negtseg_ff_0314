import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_left_icon_title_model.dart';
export 'button_left_icon_title_model.dart';

class ButtonLeftIconTitleWidget extends StatefulWidget {
  const ButtonLeftIconTitleWidget({
    super.key,
    required this.title,
    this.iconName,
  });

  final String? title;
  final String? iconName;

  @override
  State<ButtonLeftIconTitleWidget> createState() =>
      _ButtonLeftIconTitleWidgetState();
}

class _ButtonLeftIconTitleWidgetState extends State<ButtonLeftIconTitleWidget> {
  late ButtonLeftIconTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonLeftIconTitleModel());

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
        borderRadius: BorderRadius.circular(999.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).borderSecondary,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                if (widget.iconName == 'logout') {
                  return FaIcon(
                    FontAwesomeIcons.signInAlt,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 16.0,
                  );
                } else {
                  return Icon(
                    FFIcons.karrowUpRight,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 16.0,
                  );
                }
              },
            ),
            Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SFPRO',
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
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
