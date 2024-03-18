import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_circle_font_icon_model.dart';
export 'button_circle_font_icon_model.dart';

class ButtonCircleFontIconWidget extends StatefulWidget {
  const ButtonCircleFontIconWidget({
    super.key,
    required this.iconName,
  });

  final String? iconName;

  @override
  State<ButtonCircleFontIconWidget> createState() =>
      _ButtonCircleFontIconWidgetState();
}

class _ButtonCircleFontIconWidgetState
    extends State<ButtonCircleFontIconWidget> {
  late ButtonCircleFontIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonCircleFontIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.iconName == 'eye') {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(999.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).borderSecondary,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                FFIcons.keye17,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 16.0,
              ),
            ),
          );
        } else if (widget.iconName == 'pencil') {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(999.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).borderSecondary,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                FFIcons.kpenLine44,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 16.0,
              ),
            ),
          );
        } else if (widget.iconName == 'trash') {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).errorIcon,
              borderRadius: BorderRadius.circular(999.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                FFIcons.ktrash66,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 16.0,
              ),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(999.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).borderSecondary,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                FFIcons.kcamera,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 16.0,
              ),
            ),
          );
        }
      },
    );
  }
}
