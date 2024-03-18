import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_select_box_model.dart';
export 'form_select_box_model.dart';

class FormSelectBoxWidget extends StatefulWidget {
  const FormSelectBoxWidget({
    super.key,
    required this.title,
    String? leftIconUrl,
  }) : this.leftIconUrl = leftIconUrl ?? ' ';

  final String? title;
  final String leftIconUrl;

  @override
  State<FormSelectBoxWidget> createState() => _FormSelectBoxWidgetState();
}

class _FormSelectBoxWidgetState extends State<FormSelectBoxWidget> {
  late FormSelectBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSelectBoxModel());

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
      height: 36.0,
      constraints: BoxConstraints(
        maxHeight: 36.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryText,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 16.0,
                  height: 16.0,
                  child: custom_widgets.SvgIcon(
                    width: 16.0,
                    height: 16.0,
                    svgUrl: widget.leftIconUrl,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.title!,
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'SFPRO',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                            lineHeight: 1.15,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Icon(
                Icons.chevron_right_sharp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
