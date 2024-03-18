import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'myzar_item_with_date_model.dart';
export 'myzar_item_with_date_model.dart';

class MyzarItemWithDateWidget extends StatefulWidget {
  const MyzarItemWithDateWidget({
    super.key,
    String? title,
    required this.price,
    String? dateString,
  })  : this.title = title ?? ' ',
        this.dateString = dateString ?? ' ';

  final String title;
  final double? price;
  final String dateString;

  @override
  State<MyzarItemWithDateWidget> createState() =>
      _MyzarItemWithDateWidgetState();
}

class _MyzarItemWithDateWidgetState extends State<MyzarItemWithDateWidget> {
  late MyzarItemWithDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyzarItemWithDateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.network(
            'https://picsum.photos/seed/18/600',
            width: 96.0,
            height: 96.0,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SFPRO',
                            color: FlutterFlowTheme.of(context).grayBodytext,
                            fontSize: 13.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: false,
                            lineHeight: 1.38,
                          ),
                    ),
                    Text(
                      widget.price.toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'SFPRO',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                            lineHeight: 1.41,
                          ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
                Text(
                  widget.dateString,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SFPRO',
                        color: FlutterFlowTheme.of(context).helpText,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                        lineHeight: 1.38,
                      ),
                ),
              ]
                  .divide(SizedBox(height: 20.0))
                  .addToStart(SizedBox(height: 4.0))
                  .addToEnd(SizedBox(height: 4.0)),
            ),
          ),
        ),
      ].divide(SizedBox(width: 12.0)),
    );
  }
}
