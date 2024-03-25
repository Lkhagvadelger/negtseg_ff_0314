import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_new_category_model.dart';
export 'post_new_category_model.dart';

class PostNewCategoryWidget extends StatefulWidget {
  const PostNewCategoryWidget({
    super.key,
    required this.catIds,
    required this.catIndexs,
  });

  final List<String>? catIds;
  final List<int>? catIndexs;

  @override
  State<PostNewCategoryWidget> createState() => _PostNewCategoryWidgetState();
}

class _PostNewCategoryWidgetState extends State<PostNewCategoryWidget> {
  late PostNewCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostNewCategoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((widget.catIds?.length == 1) &&
          ((_model.selCatIds.isNotEmpty) == false)) {
        setState(() {
          _model.selCategory = functions.getCategoryByIndex(
              FFAppState().MainDataJson.toList(), 0, widget.catIndexs!.first);
          _model.addToSelCatNames(getJsonField(
            functions.getCategoryByIndex(
                FFAppState().MainDataJson.toList(), 0, widget.catIndexs!.first),
            r'''$.name''',
          ).toString().toString());
        });
      } else {
        while (_model.catIdCounter < widget.catIds!.length) {
          if (_model.catIdCounter == 0) {
            // Set SelCategoryy
            setState(() {
              _model.selCategory = functions.getCategoryByIndex(
                  FFAppState().MainDataJson.toList(),
                  0,
                  widget.catIndexs![_model.catIdCounter]);
              _model.addToSelCatNames(getJsonField(
                functions.getCategoryByIndex(FFAppState().MainDataJson.toList(),
                    0, widget.catIndexs![_model.catIdCounter]),
                r'''$.name''',
              ).toString().toString());
            });
            // SET TEMP CHILDREN
            setState(() {
              _model.tempChildren = getJsonField(
                _model.selCategory,
                r'''$.children''',
                true,
              )!
                  .toList()
                  .cast<dynamic>();
            });
          } else {
            setState(() {
              _model.selCategory =
                  _model.tempChildren[widget.catIndexs![_model.catIdCounter]];
              _model.addToSelCatNames(getJsonField(
                _model.tempChildren[widget.catIndexs![_model.catIdCounter]],
                r'''$.name''',
              ).toString().toString());
            });
          }

          // CatIdCounter++
          setState(() {
            _model.catIdCounter = _model.catIdCounter + 1;
          });
        }
      }
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(66.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              FFIcons.karrowSmLeft04,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'jatmnrfr' /* Ангилал сонгох */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'SFPRO',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                          lineHeight: 1.41,
                                        ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        final selCatNameList =
                                            _model.selCatNames.toList();
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              selCatNameList.length,
                                              (selCatNameListIndex) {
                                            final selCatNameListItem =
                                                selCatNameList[
                                                    selCatNameListIndex];
                                            return Builder(
                                              builder: (context) {
                                                if (_model.selCatNames.last ==
                                                    selCatNameListItem) {
                                                  return Text(
                                                    selCatNameListItem,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'SFPRO',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .helpText,
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                          lineHeight: 1.38,
                                                        ),
                                                  );
                                                } else {
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        selCatNameListItem,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'SFPRO',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .helpText,
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts:
                                                                  false,
                                                              lineHeight: 1.38,
                                                            ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4715jc53' /* / */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'SFPRO',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .helpText,
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts:
                                                                  false,
                                                              lineHeight: 1.38,
                                                            ),
                                                      ),
                                                    ],
                                                  );
                                                }
                                              },
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'HomePageNew',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
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
                ],
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
                          final catChildren = getJsonField(
                            _model.selCategory,
                            r'''$.children''',
                          ).toList();
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(catChildren.length,
                                  (catChildrenIndex) {
                                final catChildrenItem =
                                    catChildren[catChildrenIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    // SET TEMP DATA
                                    setState(() {
                                      _model.sendCatIds = widget.catIds!
                                          .toList()
                                          .cast<String>();
                                      _model.sendCatIndexes = widget.catIndexs!
                                          .toList()
                                          .cast<int>();
                                    });
                                    // ADD TEMP DATA
                                    setState(() {
                                      _model.addToSendCatIds(getJsonField(
                                        catChildrenItem,
                                        r'''$.id''',
                                      ).toString());
                                      _model.addToSendCatIndexes(
                                          catChildrenIndex);
                                    });
                                    // Songoson categegory ni children baigaa yu gedgees hamarch hiih vildel ni uur biagaa
                                    //
                                    if ((getJsonField(
                                          catChildrenItem,
                                          r'''$.children''',
                                        )
                                                    .toList()
                                                    .map<CategoryStruct?>(
                                                        CategoryStruct.maybeFromMap)
                                                    .toList()
                                                as Iterable<CategoryStruct?>)
                                            .withoutNulls
                                            ?.length ==
                                        0) {
                                      setState(() {
                                        _model.selCategory = catChildrenItem;
                                        _model.catIdCounter = 0;
                                      });
                                      // Form zar Set CLEAR
                                      setState(() {
                                        FFAppState().FormZar = FormZarStruct();
                                      });
                                      // SET CAT ID = 0
                                      setState(() {
                                        _model.catIdCounter = 0;
                                      });
                                      // Category Filter-iig FormZar -iin category filterlvv set hiih Loop davtalt hiij baina
                                      //
                                      while (_model.catIdCounter <
                                          _model.sendCatIndexes.length) {
                                        // Hamgiin ehnii category-g shalgaj baigaa. Uchir ni songoson category dotorhi childreng avahiin tuld SelCategory-g set hiij ugch baigaa
                                        if (_model.catIdCounter == 0) {
                                          // Set SelCategoryy
                                          setState(() {
                                            _model.selCategory =
                                                functions.getCategoryByIndex(
                                                    FFAppState()
                                                        .MainDataJson
                                                        .toList(),
                                                    0,
                                                    widget.catIndexs!.first);
                                          });
                                          // Set cat Filters
                                          setState(() {
                                            _model.selectedCatFilters =
                                                CategoryStruct.maybeFromMap(
                                                        _model.selCategory!)!
                                                    .filterCategory
                                                    .toList()
                                                    .cast<
                                                        CategoryFilterStruct>();
                                          });
                                        } else {
                                          // Set Cat of children index
                                          setState(() {
                                            _model.selCategory =
                                                (CategoryStruct.maybeFromMap(
                                                            _model.selCategory)
                                                        ?.children?[_model
                                                            .sendCatIndexes[
                                                        _model.catIdCounter]])
                                                    ?.toMap();
                                          });
                                          // SET CatFilterCount SET 0
                                          setState(() {
                                            _model.catFilterCount = 0;
                                          });
                                          // SelCat-iin FilterCategory count check hiij baina
                                          if ((CategoryStruct.maybeFromMap(
                                                          _model.selCategory!)!
                                                      .filterCategory
                                                      .length >
                                                  1) &&
                                              (getJsonField(
                                                    _model.selCategory,
                                                    r'''$.filterCategory''',
                                                  ) !=
                                                  null)) {
                                            // Sel category Children ni 0-ees ih vyd  duusaagvi baina gej vzej dahin set hiine
                                            while (CategoryStruct.maybeFromMap(
                                                        _model.selCategory!)!
                                                    .filterCategory
                                                    .length >
                                                _model.catFilterCount!) {
                                              // Add to CatFilterCount
                                              setState(() {
                                                _model.addToSelectedCatFilters(
                                                    CategoryStruct.maybeFromMap(
                                                                _model
                                                                    .selCategory!)!
                                                            .filterCategory[
                                                        _model
                                                            .catFilterCount!]);
                                              });
                                              // Increment CatFilterCount
                                              setState(() {
                                                _model.catFilterCount =
                                                    _model.catFilterCount! + 1;
                                              });
                                            }
                                          } else {
                                            if (CategoryStruct.maybeFromMap(
                                                        _model.selCategory)
                                                    ?.filterCategory
                                                    ?.length ==
                                                0) {
                                            } else {
                                              // Add to FilterCategory
                                              setState(() {
                                                _model.addToSelectedCatFilters(
                                                    CategoryStruct.maybeFromMap(
                                                            _model
                                                                .selCategory!)!
                                                        .filterCategory
                                                        .first);
                                              });
                                            }
                                          }

                                          // SET CATFILTERCOUNT 0
                                          setState(() {
                                            _model.catFilterCount = 0;
                                          });
                                        }

                                        // CatIdCOunter inc
                                        setState(() {
                                          _model.catIdCounter =
                                              _model.catIdCounter + 1;
                                        });
                                      }
                                      // SET Cat FIlter -0
                                      setState(() {
                                        _model.catFilterCount = 0;
                                      });
                                      // Form zar Set CATS
                                      setState(() {
                                        FFAppState().FormZar = FormZarStruct(
                                          category: CategoryStruct.maybeFromMap(
                                              _model.selCategory),
                                          categoryIndexes:
                                              _model.sendCatIndexes,
                                          categoryNames: _model.selCatNames,
                                          categoryIds: _model.sendCatIds,
                                        );
                                      });
                                      while (_model.catFilterCount! <
                                          _model.selectedCatFilters.length) {
                                        // FormZar CatFIlder update Add
                                        setState(() {
                                          FFAppState().updateFormZarStruct(
                                            (e) => e
                                              ..updateCategoryFilters(
                                                (e) => e.add(_model
                                                        .selectedCatFilters[
                                                    _model.catFilterCount!]),
                                              ),
                                          );
                                        });
                                        setState(() {
                                          _model.catFilterCount =
                                              _model.catFilterCount! + 1;
                                        });
                                      }

                                      context.goNamed(
                                        'PostNewDetail',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      context.pushNamed(
                                        'PostNewCategory',
                                        queryParameters: {
                                          'catIds': serializeParam(
                                            _model.sendCatIds,
                                            ParamType.String,
                                            true,
                                          ),
                                          'catIndexs': serializeParam(
                                            _model.sendCatIndexes,
                                            ParamType.int,
                                            true,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: Text(
                                          getJsonField(
                                            catChildrenItem,
                                            r'''$.name''',
                                          ).toString(),
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SFPRO',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 15.0,
                                                letterSpacing: 0.06,
                                                useGoogleFonts: false,
                                                lineHeight: 1.3,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .borderBottomColor,
                                        ),
                                      ),
                                    ],
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
