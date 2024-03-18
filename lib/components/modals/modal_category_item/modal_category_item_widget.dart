import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_category_item_model.dart';
export 'modal_category_item_model.dart';

class ModalCategoryItemWidget extends StatefulWidget {
  const ModalCategoryItemWidget({
    super.key,
    required this.title,
    required this.postCount,
    this.iconUrl,
  });

  final String? title;
  final int? postCount;
  final String? iconUrl;

  @override
  State<ModalCategoryItemWidget> createState() =>
      _ModalCategoryItemWidgetState();
}

class _ModalCategoryItemWidgetState extends State<ModalCategoryItemWidget> {
  late ModalCategoryItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCategoryItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 111.0,
            constraints: BoxConstraints(
              minHeight: 64.0,
              maxHeight: 64.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(0.0),
              border: Border.all(
                color: Color(0x00080808),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      if (widget.iconUrl !=
                          'https://1tseg.mn/categoryIcons/arrow-right.svg') {
                        return Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Container(
                              width: 24.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  child: custom_widgets.SvgIcon(
                                    width: 24.0,
                                    height: 24.0,
                                    svgUrl: widget.iconUrl!,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          width: 0.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        );
                      }
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            widget.title!,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'SFPRO',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 15.0,
                                  letterSpacing: 0.06,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                  lineHeight: 1.33333,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                formatNumber(
                                  widget.postCount,
                                  formatType: FormatType.custom,
                                  format: '###,###',
                                  locale: '',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'SFPRO',
                                      color: FlutterFlowTheme.of(context)
                                          .placeholder,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                      lineHeight: 1.38,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ico1bsnu' /* зар */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'SFPRO',
                                        color: FlutterFlowTheme.of(context)
                                            .placeholder,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                        lineHeight: 1.38,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).borderBottomColor,
              border: Border.all(
                color: Color(0x00FFFFFF),
                width: 0.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
