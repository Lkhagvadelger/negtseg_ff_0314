import '/components/product/product_image_shower/product_image_shower_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_item_promo_model.dart';
export 'product_item_promo_model.dart';

class ProductItemPromoWidget extends StatefulWidget {
  const ProductItemPromoWidget({
    super.key,
    required this.images,
    required this.title,
    required this.price,
    bool? isPromoted,
    required this.imagePaging,
  }) : this.isPromoted = isPromoted ?? true;

  final dynamic images;
  final String? title;
  final int? price;
  final bool isPromoted;
  final bool? imagePaging;

  @override
  State<ProductItemPromoWidget> createState() => _ProductItemPromoWidgetState();
}

class _ProductItemPromoWidgetState extends State<ProductItemPromoWidget> {
  late ProductItemPromoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductItemPromoModel());

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
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 148.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: wrapWithModel(
              model: _model.roductImageShowerModel,
              updateCallback: () => setState(() {}),
              child: ProductImageShowerWidget(
                images: widget.images,
                imagePaging: widget.imagePaging!,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      widget.title!,
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
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(),
              child: Text(
                formatNumber(
                  widget.price,
                  formatType: FormatType.custom,
                  format: '###,###₮',
                  locale: 'mn_MN',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
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
          if (widget.isPromoted == true)
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.check_circle,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 12.0,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'estaj0d6' /* Онцгой */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic,
                                  useGoogleFonts: false,
                                  lineHeight: 1.45,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
