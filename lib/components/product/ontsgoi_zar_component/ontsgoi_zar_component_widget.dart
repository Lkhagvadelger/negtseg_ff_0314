import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ontsgoi_zar_component_model.dart';
export 'ontsgoi_zar_component_model.dart';

class OntsgoiZarComponentWidget extends StatefulWidget {
  const OntsgoiZarComponentWidget({super.key});

  @override
  State<OntsgoiZarComponentWidget> createState() =>
      _OntsgoiZarComponentWidgetState();
}

class _OntsgoiZarComponentWidgetState extends State<OntsgoiZarComponentWidget> {
  late OntsgoiZarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OntsgoiZarComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
        child: Container(
          width: 64.0,
          height: 16.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.transparent,
              width: 0.0,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).badgeWarningBG,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(2.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(2.0),
                ),
                border: Border.all(
                  color: Color(0x32000000),
                  width: 0.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '0jwbi6ou' /* Онцгой зар */,
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'SFPRO',
                        color: Color(0xFF6D1A07),
                        fontSize: 8.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                        lineHeight: 1.1,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
