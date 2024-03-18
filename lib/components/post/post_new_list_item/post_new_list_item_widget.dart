import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_list_item_model.dart';
export 'post_new_list_item_model.dart';

class PostNewListItemWidget extends StatefulWidget {
  const PostNewListItemWidget({super.key});

  @override
  State<PostNewListItemWidget> createState() => _PostNewListItemWidgetState();
}

class _PostNewListItemWidgetState extends State<PostNewListItemWidget> {
  late PostNewListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.network(
            'https://picsum.photos/seed/172/600',
            width: 96.0,
            height: 96.0,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'w5eejg6q' /* Hello World */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SFPRO',
                    color: FlutterFlowTheme.of(context).grayBodyText,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                    lineHeight: 1.38,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'jn5efquf' /* Hello World */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SFPRO',
                    fontSize: 17.0,
                    letterSpacing: 0.07,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                    lineHeight: 1.41,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'fklyohe6' /* Hello World */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'SFPRO',
                      color: FlutterFlowTheme.of(context).helpText,
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                      lineHeight: 1.38,
                    ),
              ),
            ),
          ].divide(SizedBox(height: 6.0)),
        ),
      ].divide(SizedBox(width: 12.0)),
    );
  }
}
