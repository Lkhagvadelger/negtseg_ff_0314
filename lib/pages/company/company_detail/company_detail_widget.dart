import '/backend/api_requests/api_calls.dart';
import '/components/product/product_item_promo/product_item_promo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'company_detail_model.dart';
export 'company_detail_model.dart';

class CompanyDetailWidget extends StatefulWidget {
  const CompanyDetailWidget({
    super.key,
    this.selectedCategory,
    this.selectedPost,
  });

  final dynamic selectedCategory;
  final dynamic selectedPost;

  @override
  State<CompanyDetailWidget> createState() => _CompanyDetailWidgetState();
}

class _CompanyDetailWidgetState extends State<CompanyDetailWidget> {
  late CompanyDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyDetailModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  FFIcons.karrowSmLeft04,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sdrlxrbn' /* Миний компани */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SFPRO',
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                            lineHeight: 1.41,
                          ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Container(
                  width: 50.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Icon(
                      FFIcons.kcircleQuestion03,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 1.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 300.0,
                            child: Stack(
                              children: [
                                PageView(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  onPageChanged: (_) => setState(() {}),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1498931299472-f7a63a5a1cfa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxmaXJld29ya3N8ZW58MHx8fHwxNzA4OTk2OTQzfDA&ixlib=rb-4.0.3&q=80&w=400',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 1,
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
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'dfzzzmcm' /* Company Name */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          fontSize: 17.0,
                                          useGoogleFonts: false,
                                          lineHeight: 1.41,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        FFIcons.kcrown,
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        size: 16.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '0ilbhcd2' /* Hello World */,
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
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '8lq4ey9t' /* 2024 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SFPRO',
                                              fontSize: 13.0,
                                              useGoogleFonts: false,
                                              lineHeight: 1.15,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .borderBottomColor,
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'xy5edz62' /* Dualshock 4 resting gracefully... */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'adu9alfi' /* Холбоо барих */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                  lineHeight: 1.41,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kphoneCallAlt130,
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                    size: 20.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'owq0qn8n' /* 99119911 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          color: FlutterFlowTheme.of(context)
                                              .placeholder,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.33,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kmailAlt137,
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                    size: 20.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'qolxr60p' /* email@domain.com */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          color: FlutterFlowTheme.of(context)
                                              .placeholder,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.33,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kglobe57,
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                    size: 20.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'w6edbjfv' /* domain.com */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          color: FlutterFlowTheme.of(context)
                                              .placeholder,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.33,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.klocationPinAlt139,
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                    size: 20.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'mjdt3guw' /* location */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          color: FlutterFlowTheme.of(context)
                                              .placeholder,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                          lineHeight: 1.33,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'pf9di1ef' /* Зарууд */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                  lineHeight: 1.41,
                                ),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: HomeTopZarApiCall.call(),
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
                                  final gridViewHomeTopZarApiResponse =
                                      snapshot.data!;
                                  return Builder(
                                    builder: (context) {
                                      final myZars =
                                          HomeTopZarApiCall.topZarList(
                                                gridViewHomeTopZarApiResponse
                                                    .jsonBody,
                                              )?.toList() ??
                                              [];
                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 8.0,
                                          mainAxisSpacing: 16.0,
                                          childAspectRatio: 1.0,
                                        ),
                                        primary: false,
                                        scrollDirection: Axis.vertical,
                                        itemCount: myZars.length,
                                        itemBuilder: (context, myZarsIndex) {
                                          final myZarsItem =
                                              myZars[myZarsIndex];
                                          return ProductItemPromoWidget(
                                            key: Key(
                                                'Keytz3_${myZarsIndex}_of_${myZars.length}'),
                                            title: getJsonField(
                                              myZarsItem,
                                              r'''$.title''',
                                            ).toString(),
                                            price: getJsonField(
                                              myZarsItem,
                                              r'''$.price''',
                                            ),
                                            isPromoted: false,
                                            imagePaging: false,
                                            images: getJsonField(
                                              myZarsItem,
                                              r'''$.media.images''',
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
