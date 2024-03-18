import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_section_title_model.dart';
export 'header_section_title_model.dart';

class HeaderSectionTitleWidget extends StatefulWidget {
  const HeaderSectionTitleWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<HeaderSectionTitleWidget> createState() =>
      _HeaderSectionTitleWidgetState();
}

class _HeaderSectionTitleWidgetState extends State<HeaderSectionTitleWidget> {
  late HeaderSectionTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderSectionTitleModel());

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
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(),
        child: Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Text(
            widget.title!,
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'SFPRO',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: false,
                  lineHeight: 1.41,
                ),
          ),
        ),
      ),
    );
  }
}
