import '/backend/schema/structs/index.dart';
import '/components/modals/modal_category_item/modal_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_model.dart';
export 'post_new_model.dart';

class PostNewWidget extends StatefulWidget {
  const PostNewWidget({
    super.key,
    this.categoryList,
  });

  final List<dynamic>? categoryList;

  @override
  State<PostNewWidget> createState() => _PostNewWidgetState();
}

class _PostNewWidgetState extends State<PostNewWidget> {
  late PostNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().FormZar = FormZarStruct();
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(66.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'wui1q5lm' /* Ангилал сонгох */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SFPRO',
                                    fontSize: 17.0,
                                    useGoogleFonts: false,
                                    lineHeight: 1.41,
                                  ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Container(
                            width: 50.0,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Icon(
                                Icons.close,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 0.0))
                    .addToStart(SizedBox(height: 0.0))
                    .addToEnd(SizedBox(height: 0.0)),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).borderBottomColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                      child: Builder(
                        builder: (context) {
                          final categoriesList =
                              widget.categoryList?.toList() ?? [];
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(categoriesList.length,
                                  (categoriesListIndex) {
                                final categoriesListItem =
                                    categoriesList[categoriesListIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    // SetCatIndexes Reset
                                    setState(() {
                                      _model.selCatIndexes = [];
                                    });
                                    // SetCatIndexes Add
                                    setState(() {
                                      _model.addToSelCatIndexes(
                                          categoriesListIndex);
                                    });

                                    context.pushNamed(
                                      'PostNewCategory',
                                      queryParameters: {
                                        'catIds': serializeParam(
                                          (getJsonField(
                                            categoriesListItem,
                                            r'''$.id''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList(),
                                          ParamType.String,
                                          true,
                                        ),
                                        'catIndexs': serializeParam(
                                          _model.selCatIndexes,
                                          ParamType.int,
                                          true,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model:
                                        _model.modalCategoryItemModels.getModel(
                                      getJsonField(
                                        categoriesListItem,
                                        r'''$.id''',
                                      ).toString(),
                                      categoriesListIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: ModalCategoryItemWidget(
                                      key: Key(
                                        'Keyw4e_${getJsonField(
                                          categoriesListItem,
                                          r'''$.id''',
                                        ).toString()}',
                                      ),
                                      title: getJsonField(
                                        categoriesListItem,
                                        r'''$.name''',
                                      ).toString(),
                                      postCount: getJsonField(
                                        categoriesListItem,
                                        r'''$.totalCount''',
                                      ),
                                      iconUrl: getJsonField(
                                        categoriesListItem,
                                        r'''$.media.icon''',
                                      ).toString(),
                                    ),
                                  ),
                                );
                              }).divide(SizedBox(height: 8.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
