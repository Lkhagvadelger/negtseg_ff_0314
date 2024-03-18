import '/backend/schema/structs/index.dart';
import '/components/bottom_navigation_component/bottom_navigation_component_widget.dart';
import '/components/buttons/button_round/button_round_widget.dart';
import '/components/buttons/button_round_normal/button_round_normal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().UserToken != null && FFAppState().UserToken != '') {
        setState(() {
          _model.isLoggedIn = true;
        });
      } else {
        setState(() {
          _model.isLoggedIn = false;
        });
      }
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        setState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent4,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width * 1.0,
                      minHeight: 88.0,
                      maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                      maxHeight: 88.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        if (!_model.isLoggedIn) {
                          return Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    borderRadius: BorderRadius.circular(999.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .borderBottomColor,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Icon(
                                      FFIcons.kuser,
                                      color: FlutterFlowTheme.of(context)
                                          .placeholder,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.buttonRoundNormalModel,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonRoundNormalWidget(
                                    title: FFLocalizations.of(context)
                                        .getVariableText(
                                      mnText: 'Нэвтрэх эсвэл бүртгүүлэх',
                                      enText: 'Нэвтрэх эсвэл бүртгүүлэх',
                                    ),
                                    colorString: '#5148E7',
                                    textColor: '#FFFFFF',
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    borderRadius: BorderRadius.circular(999.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .borderBottomColor,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Icon(
                                      FFIcons.kuser,
                                      color: FlutterFlowTheme.of(context)
                                          .placeholder,
                                      size: 32.0,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFAppState().UserData.email,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                        lineHeight: 1.41,
                                                      ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Container(
                                                  width: 50.0,
                                                  height: 24.0,
                                                  decoration: BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Icon(
                                                      FFIcons.kpenLine44,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ssquet43' /* Таны дансанд: 0₮ */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .helpText,
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                        lineHeight: 1.15,
                                                      ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7fscxfjm' /* Цэнэглэх */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        useGoogleFonts: false,
                                                        lineHeight: 1.15,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 6.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('CompanyList');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/building.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'k0nx402h' /* Миний дэлгүүрүүд */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Group');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/screen-users.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '49wrxgye' /* Миний групп */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Friends');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/users.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '7p6w28z1' /* Миний найзууд */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('PostMy');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/screen-users.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'xv1sd2gl' /* Миний зарууд */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('PostSaved');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/heart-alt.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'kg2xk55b' /* Хадгалсан зарууд */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 52.0,
                                  constraints: BoxConstraints(
                                    minHeight: 52.0,
                                    maxHeight: 52.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/wallet.svg',
                                          width: 20.0,
                                          height: 20.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'iohc9jqj' /* Дансаа цэнэглэх */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SFPRO',
                                              fontSize: 15.0,
                                              letterSpacing: 1.01,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                              lineHeight: 1.33,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Settings');
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/gear.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            's8cwpb6x' /* Тохиргоо */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  constraints: BoxConstraints(
                                    minHeight: 1.0,
                                    maxHeight: 1.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .placeholder,
                                  ),
                                ),
                              ],
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 52.0,
                                    constraints: BoxConstraints(
                                      minHeight: 52.0,
                                      maxHeight: 52.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/refresh-ccw-clock.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '031eu3wv' /* Апп түүхүүд */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                fontSize: 15.0,
                                                letterSpacing: 1.01,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                                lineHeight: 1.33,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    constraints: BoxConstraints(
                                      minHeight: 1.0,
                                      maxHeight: 1.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .placeholder,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (_model.isLoggedIn)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              FFAppState().UserToken = '';
                              FFAppState().UserData = UserDataStruct();
                            });
                            setState(() {
                              _model.isLoggedIn = false;
                            });
                          },
                          child: wrapWithModel(
                            model: _model.buttonRoundModel,
                            updateCallback: () => setState(() {}),
                            child: ButtonRoundWidget(
                              title:
                                  FFLocalizations.of(context).getVariableText(
                                mnText: 'Sign out',
                                enText: 'Sign out',
                              ),
                              colorString: '#FFF',
                              iconUrl:
                                  'https://1tseg.mn/appIcons/arrow-right-to-bracket.svg',
                              textColor: '#1B1E25',
                            ),
                          ),
                        ),
                      ),
                    ),
                ]
                    .divide(SizedBox(height: 8.0))
                    .addToEnd(SizedBox(height: 64.0)),
              ),
              if (!(isWeb
                  ? MediaQuery.viewInsetsOf(context).bottom > 0
                  : _isKeyboardVisible))
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.bottomNavigationComponentModel,
                    updateCallback: () => setState(() {}),
                    child: BottomNavigationComponentWidget(
                      selectedPageIndex: 5,
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
