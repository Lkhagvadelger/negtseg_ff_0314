import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_item_model.dart';
export 'category_item_model.dart';

class CategoryItemWidget extends StatefulWidget {
  const CategoryItemWidget({
    super.key,
    required this.categoryItem,
  });

  final dynamic categoryItem;

  @override
  State<CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  late CategoryItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryItemModel());

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
      width: 140.0,
      height: 56.0,
      constraints: BoxConstraints(
        minHeight: 64.0,
        maxHeight: 64.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F8),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 12.0, 10.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    getJsonField(
                      widget.categoryItem,
                      r'''$.name''',
                    ).toString(),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 32.0,
                height: 32.0,
                child: custom_widgets.SvgIcon(
                  width: 32.0,
                  height: 32.0,
                  svgUrl: getJsonField(
                    widget.categoryItem,
                    r'''$.media.icon''',
                  ).toString(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
