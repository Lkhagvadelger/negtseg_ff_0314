import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_pin_model.dart';
export 'login_pin_model.dart';

class LoginPinWidget extends StatefulWidget {
  const LoginPinWidget({
    super.key,
    this.emailVaue,
  });

  final String? emailVaue;

  @override
  State<LoginPinWidget> createState() => _LoginPinWidgetState();
}

class _LoginPinWidgetState extends State<LoginPinWidget> {
  late LoginPinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPinModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              FFIcons.karrowSmLeft,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getVariableText(
              mnText: 'Баталгаажуулах код',
              enText: 'Баталгаажуулах код',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SFPRO',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getVariableText(
                          mnText:
                              'Таны оруулсан дугаарт код илгээж таныг баталгаажуулах болно.',
                          enText:
                              'Таны оруулсан дугаарт код илгээж таныг баталгаажуулах болно.',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SFPRO',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                              lineHeight: 1.33,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                        child: PinCodeTextField(
                          autoDisposeControllers: false,
                          appContext: context,
                          length: 4,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                    lineHeight: 1.14,
                                  ),
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          enableActiveFill: false,
                          autoFocus: true,
                          enablePinAutofill: false,
                          errorTextSpace: 16.0,
                          showCursor: true,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          obscureText: false,
                          hintCharacter: '-',
                          keyboardType: TextInputType.number,
                          pinTheme: PinTheme(
                            fieldHeight: 64.0,
                            fieldWidth: 64.0,
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(999.0),
                              bottomRight: Radius.circular(999.0),
                              topLeft: Radius.circular(999.0),
                              topRight: Radius.circular(999.0),
                            ),
                            shape: PinCodeFieldShape.circle,
                            activeColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveColor:
                                FlutterFlowTheme.of(context).alternate,
                            selectedColor: FlutterFlowTheme.of(context).primary,
                            activeFillColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveFillColor:
                                FlutterFlowTheme.of(context).alternate,
                            selectedFillColor:
                                FlutterFlowTheme.of(context).primary,
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) {},
                          autovalidateMode: AutovalidateMode.disabled,
                          validator: _model.pinCodeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            FlutterFlowTimer(
                              initialTime: _model.timerMilliseconds,
                              getDisplayTime: (value) =>
                                  StopWatchTimer.getDisplayTime(
                                value,
                                hours: false,
                                minute: false,
                                milliSecond: false,
                              ),
                              controller: _model.timerController,
                              updateStateInterval: Duration(milliseconds: 1000),
                              onChanged: (value, displayTime, shouldUpdate) {
                                _model.timerMilliseconds = value;
                                _model.timerValue = displayTime;
                                if (shouldUpdate) setState(() {});
                              },
                              onEnded: () async {
                                _model.instantTimer = InstantTimer.periodic(
                                  duration: Duration(milliseconds: 1000),
                                  callback: (timer) async {},
                                  startImmediately: true,
                                );
                              },
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                    lineHeight: 1.2,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getVariableText(
                                mnText: 'сек',
                                enText: 'сек',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SFPRO',
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                    lineHeight: 1.33,
                                  ),
                            ),
                          ].divide(SizedBox(width: 6.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).warning,
                                  borderRadius: BorderRadius.circular(999.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.krefreshCwAlt3,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 16.0,
                                ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getVariableText(
                                mnText: 'дахин код авах',
                                enText: 'дахин код авах',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SFPRO',
                                    color:
                                        FlutterFlowTheme.of(context).helpText,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                    lineHeight: 1.33,
                                  ),
                            ),
                          ].divide(SizedBox(width: 6.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.signInResponse = await SignInCall.call(
                                username: FFAppState().LoginEmail,
                                pin: _model.pinCodeController!.text,
                              );
                              if ((_model.signInResponse?.succeeded ?? true)) {
                                setState(() {
                                  FFAppState().UserToken = getJsonField(
                                    (_model.signInResponse?.jsonBody ?? ''),
                                    r'''$.token''',
                                  ).toString();
                                  FFAppState().updateUserDataStruct(
                                    (e) => e
                                      ..id = getJsonField(
                                        (_model.signInResponse?.jsonBody ?? ''),
                                        r'''$.id''',
                                      ).toString()
                                      ..email = getJsonField(
                                        (_model.signInResponse?.jsonBody ?? ''),
                                        r'''$.email''',
                                      ).toString()
                                      ..phoneNumber = getJsonField(
                                        (_model.signInResponse?.jsonBody ?? ''),
                                        r'''$.phoneNumber''',
                                      ).toString()
                                      ..emailVerified = getJsonField(
                                        (_model.signInResponse?.jsonBody ?? ''),
                                        r'''$.emailVerified''',
                                      )
                                      ..phoneVerified = getJsonField(
                                        (_model.signInResponse?.jsonBody ?? ''),
                                        r'''$.phoneNumberVerified''',
                                      ),
                                  );
                                });

                                context.goNamed('LoginSuccess');
                              } else {
                                setState(() {
                                  FFAppState().UserToken = null!;
                                  FFAppState().UserData = null!;
                                });
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text(FFLocalizations.of(context)
                                          .getVariableText(
                                        mnText: 'Алдаа гарлаа',
                                        enText: 'Алдаа гарлаа',
                                      )),
                                      content: Text(
                                          (_model.signInResponse?.jsonBody ??
                                                  '')
                                              .toString()),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }

                              setState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.buttonRoundIconRightModel,
                              updateCallback: () => setState(() {}),
                              child: ButtonRoundIconRightWidget(
                                title:
                                    FFLocalizations.of(context).getVariableText(
                                  mnText: 'Үргэлжлүүлэх',
                                  enText: 'Үргэлжлүүлэх',
                                ),
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 16.0,
                                ),
                                isFull: false,
                              ),
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
        ),
      ),
    );
  }
}
