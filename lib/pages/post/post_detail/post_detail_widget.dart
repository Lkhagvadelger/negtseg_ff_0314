import '/backend/api_requests/api_calls.dart';
import '/components/buttons/button_border/button_border_widget.dart';
import '/components/buttons/button_circle_icon/button_circle_icon_widget.dart';
import '/components/buttons/button_round/button_round_widget.dart';
import '/components/form/form_select_box/form_select_box_widget.dart';
import '/components/post/post_list_item/post_list_item_widget.dart';
import '/components/post/post_list_item_white/post_list_item_white_widget.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_detail_model.dart';
export 'post_detail_model.dart';

class PostDetailWidget extends StatefulWidget {
  const PostDetailWidget({
    super.key,
    required this.zarId,
  });

  final String? zarId;

  @override
  State<PostDetailWidget> createState() => _PostDetailWidgetState();
}

class _PostDetailWidgetState extends State<PostDetailWidget> {
  late PostDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostDetailModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultZarDetail = await ZarDetailCall.call(
        id: widget.zarId,
      );
      if ((_model.apiResultZarDetail?.succeeded ?? true)) {
        setState(() {
          _model.zarItem = getJsonField(
            (_model.apiResultZarDetail?.jsonBody ?? ''),
            r'''$.item''',
          );
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent4,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            getJsonField(
              _model.zarItem,
              r'''$.title''',
            ).toString(),
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'SFPRO',
                  fontSize: 17.0,
                  useGoogleFonts: false,
                  lineHeight: 1.41,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Builder(
                        builder: (context) {
                          final images = getJsonField(
                            _model.zarItem,
                            r'''$.media.images''',
                          ).toList();
                          return Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 300.0,
                            child: Stack(
                              children: [
                                PageView.builder(
                                  controller: _model.pageViewController ??=
                                      PageController(
                                          initialPage:
                                              min(0, images.length - 1)),
                                  onPageChanged: (_) => setState(() {}),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: images.length,
                                  itemBuilder: (context, imagesIndex) {
                                    final imagesItem = images[imagesIndex];
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.network(
                                        imagesItem.toString(),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  },
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(
                                              initialPage:
                                                  min(0, images.length - 1)),
                                      count: images.length,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
                                            .animateToPage(
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
                                        dotColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        activeDotColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
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
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        getJsonField(
                                          _model.zarItem,
                                          r'''$.createdAt''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SFPRO',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.eye,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 11.0,
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  getJsonField(
                                                    _model.zarItem,
                                                    r'''$.viewCount''',
                                                  )?.toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SFPRO',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 11.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: AutoSizeText(
                                    getJsonField(
                                      _model.zarItem,
                                      r'''$.title''',
                                    ).toString(),
                                    textAlign: TextAlign.justify,
                                    maxLines: 3,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.31,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: AutoSizeText(
                                getJsonField(
                                  _model.zarItem,
                                  r'''$.description''',
                                ).toString(),
                                textAlign: TextAlign.justify,
                                maxLines: 10,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                      lineHeight: 1.38,
                                    ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.postListItemModel,
                                    updateCallback: () => setState(() {}),
                                    child: PostListItemWidget(
                                      title:
                                          FFLocalizations.of(context).getText(
                                        'a0ty5luo' /* Үнэ */,
                                      ),
                                      description: getJsonField(
                                        _model.zarItem,
                                        r'''$.price''',
                                      ).toString(),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.postListItemWhiteModel,
                                    updateCallback: () => setState(() {}),
                                    child: PostListItemWhiteWidget(
                                      title:
                                          FFLocalizations.of(context).getText(
                                        'pahbszhg' /* Үнэ тохирно */,
                                      ),
                                      description: 'Тийм',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: AutoSizeText(
                                    FFLocalizations.of(context).getVariableText(
                                      mnText: 'Хаяг байршил',
                                      enText: 'Хаяг байршил',
                                    ),
                                    textAlign: TextAlign.justify,
                                    maxLines: 10,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          fontSize: 13.0,
                                          useGoogleFonts: false,
                                          lineHeight: 1.38,
                                        ),
                                    minFontSize: 11.0,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.formSelectBoxModel,
                                    updateCallback: () => setState(() {}),
                                    child: FormSelectBoxWidget(
                                      title: 'Улаанбаатар',
                                      leftIconUrl:
                                          'https://1tseg.mn/appIcons/map-pin.svg',
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://images.unsplash.com/photo-1682685796014-2f342188a635?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MXwxfHNlYXJjaHwxfHxzdW5zZXR8ZW58MHx8fHwxNzAwNzcyNzY0fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(999.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'aog6fdwk' /* Centery 21 Nymdavaa */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SFPRO',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                            lineHeight: 1.33,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.settings_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          size: 16.0,
                                        ),
                                        Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            mnText: 'Баталгаажсан',
                                            enText: 'Баталгаажсан',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                fontSize: 11.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.45,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 6.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 16.0,
                                          height: 16.0,
                                          child: custom_widgets.SvgIcon(
                                            width: 16.0,
                                            height: 16.0,
                                            svgUrl:
                                                'https://1tseg.mn/appIcons/calendar.svg',
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            mnText: 'Joined March 2023',
                                            enText: 'Joined March 2023',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 11.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                                lineHeight: 1.45,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 6.0)),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.buttonBorderModel,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonBorderWidget(
                                    title: FFLocalizations.of(context)
                                        .getVariableText(
                                      mnText: 'Зарын эзний бусад зар',
                                      enText: 'Зарын эзний бусад зар',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 36.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.comment,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 16.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            mnText: 'Сэтгэгдэл',
                                            enText: 'Сэтгэгдэл',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.15,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getVariableText(
                                  mnText: 'Онцлох зарууд',
                                  enText: 'Онцлох зарууд',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      fontSize: 17.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: CategoryProductsCall.call(
                                id: getJsonField(
                                  _model.zarItem,
                                  r'''$.categoryId''',
                                ).toString(),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 40.0,
                                      height: 40.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final staggeredViewCategoryProductsResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final feathuredProducts =
                                        (CategoryProductsCall.products(
                                                  staggeredViewCategoryProductsResponse
                                                      .jsonBody,
                                                )?.toList() ??
                                                [])
                                            .take(15)
                                            .toList();
                                    return MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                      ),
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 16.0,
                                      itemCount: feathuredProducts.length,
                                      shrinkWrap: true,
                                      itemBuilder:
                                          (context, feathuredProductsIndex) {
                                        final feathuredProductsItem =
                                            feathuredProducts[
                                                feathuredProductsIndex];
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
                                                  getJsonField(
                                                    feathuredProductsItem,
                                                    r'''$.id''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: ProductItemPromoWidget(
                                            key: Key(
                                                'Keyq7d_${feathuredProductsIndex}_of_${feathuredProducts.length}'),
                                            title: getJsonField(
                                              feathuredProductsItem,
                                              r'''$.title''',
                                            ).toString(),
                                            price: getJsonField(
                                              feathuredProductsItem,
                                              r'''$.price''',
                                            ),
                                            isPromoted:
                                                feathuredProductsIndex == 2,
                                            images: getJsonField(
                                              feathuredProductsItem,
                                              r'''$.media.images''',
                                            ),
                                            imagePaging: true,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 8.0))
                      .addToEnd(SizedBox(height: 68.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(-4.0, -4.0),
                        spreadRadius: 0.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    mnText: 'Үнэ',
                                    enText: 'Үнэ',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SFPRO',
                                        color: FlutterFlowTheme.of(context)
                                            .placeholder,
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: false,
                                        lineHeight: 1.45,
                                      ),
                                ),
                              ),
                              Text(
                                getJsonField(
                                  _model.zarItem,
                                  r'''$.price''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                      lineHeight: 1.41,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.buttonCircleIconModel,
                              updateCallback: () => setState(() {}),
                              child: ButtonCircleIconWidget(
                                iconUrl: 'https://1tseg.mn/appIcons/heart.svg',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.buttonRoundModel,
                              updateCallback: () => setState(() {}),
                              child: ButtonRoundWidget(
                                title:
                                    FFLocalizations.of(context).getVariableText(
                                  mnText: 'Холбоо барих',
                                  enText: 'Холбоо барих',
                                ),
                                colorString: '#5148E7',
                                iconUrl:
                                    'https://1tseg.mn/appIcons/phone-call-alt-1.svg',
                                textColor: '#FFF',
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
