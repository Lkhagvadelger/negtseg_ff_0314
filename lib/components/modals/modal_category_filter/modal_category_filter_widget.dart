import '/components/modals/modal_category_item/modal_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_category_filter_model.dart';
export 'modal_category_filter_model.dart';

class ModalCategoryFilterWidget extends StatefulWidget {
  const ModalCategoryFilterWidget({
    super.key,
    required this.title,
    required this.data,
  });

  final String? title;
  final List<dynamic>? data;

  @override
  State<ModalCategoryFilterWidget> createState() =>
      _ModalCategoryFilterWidgetState();
}

class _ModalCategoryFilterWidgetState extends State<ModalCategoryFilterWidget> {
  late ModalCategoryFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCategoryFilterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 50.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.title,
                  'Default Cat',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Builder(
                builder: (context) {
                  final dataList = widget.data!.toList();
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(dataList.length, (dataListIndex) {
                        final dataListItem = dataList[dataListIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Category',
                              queryParameters: {
                                'categoryItem': serializeParam(
                                  dataListItem,
                                  ParamType.JSON,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: ModalCategoryItemWidget(
                            key: Key(
                                'Keyzjn_${dataListIndex}_of_${dataList.length}'),
                            title: getJsonField(
                              dataListItem,
                              r'''$.name''',
                            ).toString(),
                            postCount: getJsonField(
                              dataListItem,
                              r'''$.totalCount''',
                            ),
                            iconUrl: getJsonField(
                              dataListItem,
                              r'''$.media.icon''',
                            ).toString(),
                          ),
                        );
                      }).divide(SizedBox(height: 8.0)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
