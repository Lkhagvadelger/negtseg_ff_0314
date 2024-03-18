import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'banner_model.dart';
export 'banner_model.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
    required this.banners,
  });

  final List<dynamic>? banners;

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  late BannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BannerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Builder(
        builder: (context) {
          final banners = widget.banners!.toList();
          return Container(
            width: double.infinity,
            height: 500.0,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _model.pageViewController ??=
                      PageController(initialPage: min(0, banners.length - 1)),
                  onPageChanged: (_) => setState(() {}),
                  scrollDirection: Axis.horizontal,
                  itemCount: banners.length,
                  itemBuilder: (context, bannersIndex) {
                    final bannersItem = banners[bannersIndex];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://picsum.photos/seed/537/600',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.5),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??= PageController(
                          initialPage: min(0, banners.length - 1)),
                      count: banners.length,
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
                        radius: 999.0,
                        dotWidth: 8.0,
                        dotHeight: 8.0,
                        dotColor: FlutterFlowTheme.of(context).secondaryText,
                        activeDotColor:
                            FlutterFlowTheme.of(context).primaryText,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
