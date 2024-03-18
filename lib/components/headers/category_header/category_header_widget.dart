import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_header_model.dart';
export 'category_header_model.dart';

class CategoryHeaderWidget extends StatefulWidget {
  const CategoryHeaderWidget({
    super.key,
    required this.title,
    required this.titleBtn,
  });

  final String? title;
  final String? titleBtn;

  @override
  State<CategoryHeaderWidget> createState() => _CategoryHeaderWidgetState();
}

class _CategoryHeaderWidgetState extends State<CategoryHeaderWidget> {
  late CategoryHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryHeaderModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: widget.title!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SFPRO',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                          lineHeight: 1.333,
                        ),
                  ),
                  TextSpan(
                    text: FFLocalizations.of(context).getText(
                      'y96ewd46' /*   */,
                    ),
                    style: TextStyle(
                      fontFamily: 'SFPRO',
                      color: FlutterFlowTheme.of(context).placeholder,
                      fontSize: 15.0,
                      height: 1.3333,
                    ),
                  ),
                  TextSpan(
                    text: widget.titleBtn!,
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).placeholder,
                      fontSize: 15.0,
                      height: 1.333,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'SFPRO',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                      lineHeight: 1.3333,
                    ),
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
