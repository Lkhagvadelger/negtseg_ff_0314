import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_success_model.dart';
export 'login_success_model.dart';

class LoginSuccessWidget extends StatefulWidget {
  const LoginSuccessWidget({
    super.key,
    this.emailVaue,
  });

  final String? emailVaue;

  @override
  State<LoginSuccessWidget> createState() => _LoginSuccessWidgetState();
}

class _LoginSuccessWidgetState extends State<LoginSuccessWidget> {
  late LoginSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginSuccessModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 2000),
        callback: (timer) async {
          _model.instantTimer?.cancel();

          context.pushNamed('HomePageNew');
        },
        startImmediately: true,
      );
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 88.0,
                      height: 88.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).success,
                        borderRadius: BorderRadius.circular(999.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          FFIcons.kcheck,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 40.0,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getVariableText(
                        mnText: 'Амжилттай бүртгэгдлээ!!!',
                        enText: 'Амжилттай бүртгэгдлээ!!!',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SFPRO',
                            fontSize: 15.0,
                            useGoogleFonts: false,
                            lineHeight: 1.33,
                          ),
                    ),
                  ].divide(SizedBox(height: 25.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
