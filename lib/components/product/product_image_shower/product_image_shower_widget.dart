import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_image_shower_model.dart';
export 'product_image_shower_model.dart';

class ProductImageShowerWidget extends StatefulWidget {
  const ProductImageShowerWidget({
    super.key,
    this.images,
    required this.imagePaging,
  });

  final dynamic images;
  final bool? imagePaging;

  @override
  State<ProductImageShowerWidget> createState() =>
      _ProductImageShowerWidgetState();
}

class _ProductImageShowerWidgetState extends State<ProductImageShowerWidget> {
  late ProductImageShowerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductImageShowerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.imagePaging ?? false) {
          return Builder(
            builder: (context) {
              final images = widget.images?.toList() ?? [];
              return Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _model.pageViewController ??= PageController(
                          initialPage: min(0, images.length - 1)),
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, imagesIndex) {
                        final imagesItem = images[imagesIndex];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            fadeInDuration: Duration(milliseconds: 200),
                            fadeOutDuration: Duration(milliseconds: 200),
                            imageUrl: getJsonField(
                              imagesItem,
                              r'''$''',
                            ).toString(),
                            width: 140.0,
                            height: 140.0,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage: min(0, images.length - 1)),
                          count: images.length,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: smooth_page_indicator.SlideEffect(
                            spacing: 6.0,
                            radius: 16.0,
                            dotWidth: 8.0,
                            dotHeight: 8.0,
                            dotColor: Color(0x7F000000),
                            activeDotColor:
                                FlutterFlowTheme.of(context).secondary,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              getJsonField(
                widget.images,
                r'''$[0]''',
              ).toString(),
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          );
        }
      },
    );
  }
}
