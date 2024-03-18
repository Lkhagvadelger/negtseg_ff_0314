import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_home_post_model.dart';
export 'header_home_post_model.dart';

class HeaderHomePostWidget extends StatefulWidget {
  const HeaderHomePostWidget({
    super.key,
    String? title,
  }) : this.title = title ?? 'null';

  final String title;

  @override
  State<HeaderHomePostWidget> createState() => _HeaderHomePostWidgetState();
}

class _HeaderHomePostWidgetState extends State<HeaderHomePostWidget> {
  late HeaderHomePostModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderHomePostModel());

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
      height: 24.0,
      constraints: BoxConstraints(
        maxHeight: 64.0,
      ),
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              widget.title,
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'SFPRO',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                    lineHeight: 1.4,
                  ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 40.0,
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
