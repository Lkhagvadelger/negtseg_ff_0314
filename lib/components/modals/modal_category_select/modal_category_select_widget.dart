import '/components/modals/modal_category_item/modal_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_category_select_model.dart';
export 'modal_category_select_model.dart';

class ModalCategorySelectWidget extends StatefulWidget {
  const ModalCategorySelectWidget({
    super.key,
    this.componentCategories,
    this.componentSelectedCatIds,
  });

  final List<dynamic>? componentCategories;
  final List<String>? componentSelectedCatIds;

  @override
  State<ModalCategorySelectWidget> createState() =>
      _ModalCategorySelectWidgetState();
}

class _ModalCategorySelectWidgetState extends State<ModalCategorySelectWidget> {
  late ModalCategorySelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCategorySelectModel());

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
        height: MediaQuery.sizeOf(context).height * 1.0,
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
                  'qpmt3xq4' /* Бүх категори */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'SFPRO',
                      fontSize: 17.0,
                      useGoogleFonts: false,
                      lineHeight: 1.41,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Builder(
                builder: (context) {
                  final subCategories =
                      widget.componentCategories?.toList() ?? [];
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(subCategories.length,
                          (subCategoriesIndex) {
                        final subCategoriesItem =
                            subCategories[subCategoriesIndex];
                        return wrapWithModel(
                          model: _model.modalCategoryItemModels.getModel(
                            getJsonField(
                              subCategoriesItem,
                              r'''$.id''',
                            ).toString(),
                            subCategoriesIndex,
                          ),
                          updateCallback: () => setState(() {}),
                          child: ModalCategoryItemWidget(
                            key: Key(
                              'Keyir1_${getJsonField(
                                subCategoriesItem,
                                r'''$.id''',
                              ).toString()}',
                            ),
                            title: getJsonField(
                              subCategoriesItem,
                              r'''$.name''',
                            ).toString(),
                            postCount: getJsonField(
                              subCategoriesItem,
                              r'''$.totalCount''',
                            ),
                            iconUrl: getJsonField(
                              subCategoriesItem,
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
