import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_drop_down_model.dart';
export 'form_drop_down_model.dart';

class FormDropDownWidget extends StatefulWidget {
  const FormDropDownWidget({
    super.key,
    required this.title,
    required this.placeHolder,
    this.data,
  });

  final String? title;
  final String? placeHolder;
  final dynamic data;

  @override
  State<FormDropDownWidget> createState() => _FormDropDownWidgetState();
}

class _FormDropDownWidgetState extends State<FormDropDownWidget> {
  late FormDropDownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormDropDownModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 67.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title!,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SFPRO',
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: false,
                  lineHeight: 1.15,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(null),
              options: [
                FFLocalizations.of(context).getText(
                  'sp5q1w9g' /* 10 өдөрт - 27,000₮ */,
                )
              ],
              onChanged: (val) => setState(() => _model.dropDownValue = val),
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 42.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium,
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).helpText,
                size: 24.0,
              ),
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).borderSecondary,
              borderWidth: 1.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ],
      ),
    );
  }
}
