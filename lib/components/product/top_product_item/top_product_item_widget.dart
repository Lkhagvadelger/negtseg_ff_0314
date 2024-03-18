import '/components/product/ontsgoi_zar_component/ontsgoi_zar_component_widget.dart';
import '/components/product/product_image_shower/product_image_shower_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_product_item_model.dart';
export 'top_product_item_model.dart';

class TopProductItemWidget extends StatefulWidget {
  const TopProductItemWidget({
    super.key,
    this.images,
    this.id,
    required this.title,
    required this.price,
    required this.imagePaging,
  });

  final dynamic images;
  final String? id;
  final dynamic title;
  final int? price;
  final bool? imagePaging;

  @override
  State<TopProductItemWidget> createState() => _TopProductItemWidgetState();
}

class _TopProductItemWidgetState extends State<TopProductItemWidget> {
  late TopProductItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopProductItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'PostDetail',
          queryParameters: {
            'zarId': serializeParam(
              widget.id,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        width: 140.0,
        height: 216.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: wrapWithModel(
                    model: _model.productImageShowerModel,
                    updateCallback: () => setState(() {}),
                    child: ProductImageShowerWidget(
                      images: widget.images,
                      imagePaging: widget.imagePaging!,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: wrapWithModel(
                    model: _model.ontsgoiZarComponentModel,
                    updateCallback: () => setState(() {}),
                    child: OntsgoiZarComponentWidget(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x00F7F7F8),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Text(
                    widget.title!.toString(),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SFPRO',
                          color: FlutterFlowTheme.of(context).grayBodytext,
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                          lineHeight: 1.38,
                        ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 24.0,
                decoration: BoxDecoration(
                  color: Color(0x00F7F7F8),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    formatNumber(
                      widget.price,
                      formatType: FormatType.custom,
                      format: '###,###₮',
                      locale: 'mn_MN',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SFPRO',
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: false,
                          lineHeight: 1.41,
                        ),
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
