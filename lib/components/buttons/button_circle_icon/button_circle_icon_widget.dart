import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_circle_icon_model.dart';
export 'button_circle_icon_model.dart';

class ButtonCircleIconWidget extends StatefulWidget {
  const ButtonCircleIconWidget({
    super.key,
    required this.iconUrl,
  });

  final String? iconUrl;

  @override
  State<ButtonCircleIconWidget> createState() => _ButtonCircleIconWidgetState();
}

class _ButtonCircleIconWidgetState extends State<ButtonCircleIconWidget> {
  late ButtonCircleIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonCircleIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 36.0,
        height: 36.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(999.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).tertiary,
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 16.0,
            height: 16.0,
            child: custom_widgets.SvgIcon(
              width: 16.0,
              height: 16.0,
              svgUrl: widget.iconUrl!,
            ),
          ),
        ),
      ),
    );
  }
}
