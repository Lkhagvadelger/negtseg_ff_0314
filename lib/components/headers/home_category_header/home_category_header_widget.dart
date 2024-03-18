import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_category_header_model.dart';
export 'home_category_header_model.dart';

class HomeCategoryHeaderWidget extends StatefulWidget {
  const HomeCategoryHeaderWidget({
    super.key,
    required this.title,
    required this.titleBtn,
  });

  final String? title;
  final String? titleBtn;

  @override
  State<HomeCategoryHeaderWidget> createState() =>
      _HomeCategoryHeaderWidgetState();
}

class _HomeCategoryHeaderWidgetState extends State<HomeCategoryHeaderWidget> {
  late HomeCategoryHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeCategoryHeaderModel());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
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
                      lineHeight: 1.4,
                    ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Text(
                  widget.titleBtn!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                        lineHeight: 1.15,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
