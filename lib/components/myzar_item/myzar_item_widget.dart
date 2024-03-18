import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'myzar_item_model.dart';
export 'myzar_item_model.dart';

class MyzarItemWidget extends StatefulWidget {
  const MyzarItemWidget({
    super.key,
    String? title,
    required this.price,
    String? status,
  })  : this.title = title ?? ' ',
        this.status = status ?? ' ';

  final String title;
  final double? price;
  final String status;

  @override
  State<MyzarItemWidget> createState() => _MyzarItemWidgetState();
}

class _MyzarItemWidgetState extends State<MyzarItemWidget> {
  late MyzarItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyzarItemModel());

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
        Flexible(
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kcircleExclamationCheck,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                        Text(
                          widget.status,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                    Icon(
                      FFIcons.kdotsHorizontal,
                      color: FlutterFlowTheme.of(context).helpText,
                      size: 20.0,
                    ),
                  ],
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
