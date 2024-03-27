import '/components/form/dynamic_form_input/dynamic_form_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_category_filter_data_model.dart';
export 'modal_category_filter_data_model.dart';

class ModalCategoryFilterDataWidget extends StatefulWidget {
  const ModalCategoryFilterDataWidget({
    super.key,
    required this.data,
  });

  final List<dynamic>? data;

  @override
  State<ModalCategoryFilterDataWidget> createState() =>
      _ModalCategoryFilterDataWidgetState();
}

class _ModalCategoryFilterDataWidgetState
    extends State<ModalCategoryFilterDataWidget> {
  late ModalCategoryFilterDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCategoryFilterDataModel());

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
                FFLocalizations.of(context).getText(
                  'brevq4az' /* Филтер */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final filterList = widget.data!.toList();
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            List.generate(filterList.length, (filterListIndex) {
                          final filterListItem = filterList[filterListIndex];
                          return wrapWithModel(
                            model: _model.dynamicFormInputModels.getModel(
                              '${filterListIndex.toString()}${getJsonField(
                                filterListItem,
                                r'''$.id''',
                              ).toString()}',
                              filterListIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: DynamicFormInputWidget(
                              key: Key(
                                'Keywdb_${'${filterListIndex.toString()}${getJsonField(
                                  filterListItem,
                                  r'''$.id''',
                                ).toString()}'}',
                              ),
                              dynamicItem: CategoryFilterStruct.maybeFromMap(
                                  getJsonField(
                                filterListItem,
                                r'''$.id''',
                              ))!,
                              itemIndex: filterListIndex,
                            ),
                          );
                        }).divide(SizedBox(height: 20.0)),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
