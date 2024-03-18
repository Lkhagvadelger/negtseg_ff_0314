import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_image_list_item_model.dart';
export 'post_new_image_list_item_model.dart';

class PostNewImageListItemWidget extends StatefulWidget {
  const PostNewImageListItemWidget({
    super.key,
    required this.image,
    required this.index,
  });

  final FFUploadedFile? image;
  final int? index;

  @override
  State<PostNewImageListItemWidget> createState() =>
      _PostNewImageListItemWidgetState();
}

class _PostNewImageListItemWidgetState
    extends State<PostNewImageListItemWidget> {
  late PostNewImageListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewImageListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(2.0),
                  bottomRight: Radius.circular(2.0),
                  topLeft: Radius.circular(2.0),
                  topRight: Radius.circular(2.0),
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.memory(
                      widget.image?.bytes ?? Uint8List.fromList([]),
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alpha4,
                        borderRadius: BorderRadius.circular(999.0),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 12.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.2, -1.2),
                    child: Container(
                      width: 14.0,
                      height: 14.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        borderRadius: BorderRadius.circular(999.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 8.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'r4ckvllr' /* Hello World */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                        lineHeight: 1.33,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'uj2v80rp' /* Hello World */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        color: FlutterFlowTheme.of(context).helpText,
                        fontSize: 11.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                        lineHeight: 1.45,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
        Switch.adaptive(
          value: _model.switchValue ??= _model.isSelected,
          onChanged: (newValue) async {
            setState(() => _model.switchValue = newValue!);
            if (newValue!) {
              setState(() {
                FFAppState().updateFormZarStruct(
                  (e) => e
                    ..updateFeaturedImageIndexs(
                      (e) => e.add(widget.index!),
                    ),
                );
              });
              setState(() {
                _model.isSelected = true;
              });
            } else {
              if (FFAppState().FormZar.featuredImageIndexs.isNotEmpty) {
                setState(() {
                  FFAppState().updateFormZarStruct(
                    (e) => e
                      ..updateFeaturedImageIndexs(
                        (e) => e.remove(widget.index),
                      ),
                  );
                });
                setState(() {
                  _model.isSelected = false;
                });
              }
            }
          },
          activeColor: FlutterFlowTheme.of(context).secondary,
          activeTrackColor: FlutterFlowTheme.of(context).accent1,
          inactiveTrackColor: FlutterFlowTheme.of(context).borderSecondary,
          inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
        ),
      ],
    );
  }
}
