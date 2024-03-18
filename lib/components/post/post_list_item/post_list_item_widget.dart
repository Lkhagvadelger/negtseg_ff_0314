import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_list_item_model.dart';
export 'post_list_item_model.dart';

class PostListItemWidget extends StatefulWidget {
  const PostListItemWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String? title;
  final String? description;

  @override
  State<PostListItemWidget> createState() => _PostListItemWidgetState();
}

class _PostListItemWidgetState extends State<PostListItemWidget> {
  late PostListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostListItemModel());

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
        minHeight: 38.0,
        maxHeight: 38.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
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
                  valueOrDefault<String>(
                    widget.description,
                    'desc',
                  ),
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
