import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_input_model.dart';
export 'drop_down_input_model.dart';

class DropDownInputWidget extends StatefulWidget {
  const DropDownInputWidget({
    super.key,
    this.title,
    this.data,
  });

  final String? title;
  final List<String>? data;

  @override
  State<DropDownInputWidget> createState() => _DropDownInputWidgetState();
}

class _DropDownInputWidgetState extends State<DropDownInputWidget> {
  late DropDownInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownInputModel());

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
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
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
          Flexible(
            child: FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(null),
              options: widget.data!,
              onChanged: (val) => setState(() => _model.dropDownValue = val),
              width: double.infinity,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SFPRO',
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                    lineHeight: 1.33,
                  ),
              hintText: FFLocalizations.of(context).getText(
                'gkbwybyb' /* Сонгох */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).helpText,
                size: 16.0,
              ),
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).borderSecondary,
              borderWidth: 0.0,
              borderRadius: 0.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
