import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_catory_with_count_model.dart';
export 'filter_catory_with_count_model.dart';

class FilterCatoryWithCountWidget extends StatefulWidget {
  const FilterCatoryWithCountWidget({
    super.key,
    required this.title,
    int? count,
  }) : this.count = count ?? 0;

  final String? title;
  final int count;

  @override
  State<FilterCatoryWithCountWidget> createState() =>
      _FilterCatoryWithCountWidgetState();
}

class _FilterCatoryWithCountWidgetState
    extends State<FilterCatoryWithCountWidget> {
  late FilterCatoryWithCountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterCatoryWithCountModel());

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
      height: 40.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: AutoSizeText(
              widget.title!,
              maxLines: 2,
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'SFPRO',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                    lineHeight: 1.4,
                  ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: Text(
                formatNumber(
                  widget.count,
                  formatType: FormatType.custom,
                  format: '###,###',
                  locale: '',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'SFPRO',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                      lineHeight: 1.4,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
