import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_list_item_white_model.dart';
export 'post_list_item_white_model.dart';

class PostListItemWhiteWidget extends StatefulWidget {
  const PostListItemWhiteWidget({
    super.key,
    required this.title,
    String? description,
  }) : this.description = description ?? 'desc';

  final String? title;
  final String description;

  @override
  State<PostListItemWhiteWidget> createState() =>
      _PostListItemWhiteWidgetState();
}

class _PostListItemWhiteWidgetState extends State<PostListItemWhiteWidget> {
  late PostListItemWhiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostListItemWhiteModel());

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
      height: 36.0,
      constraints: BoxConstraints(
        maxHeight: 38.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryText,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: AutoSizeText(
                    widget.title!,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SFPRO',
                          fontSize: 15.0,
                          useGoogleFonts: false,
                          lineHeight: 1.3,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: AutoSizeText(
                  widget.description,
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        fontSize: 15.0,
                        useGoogleFonts: false,
                        lineHeight: 1.3,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
