import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'post_new_category_widget.dart' show PostNewCategoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostNewCategoryModel extends FlutterFlowModel<PostNewCategoryWidget> {
  ///  Local state fields for this page.

  List<CategoryFilterStruct> selectedCatFilters = [];
  void addToSelectedCatFilters(CategoryFilterStruct item) =>
      selectedCatFilters.add(item);
  void removeFromSelectedCatFilters(CategoryFilterStruct item) =>
      selectedCatFilters.remove(item);
  void removeAtIndexFromSelectedCatFilters(int index) =>
      selectedCatFilters.removeAt(index);
  void insertAtIndexInSelectedCatFilters(
          int index, CategoryFilterStruct item) =>
      selectedCatFilters.insert(index, item);
  void updateSelectedCatFiltersAtIndex(
          int index, Function(CategoryFilterStruct) updateFn) =>
      selectedCatFilters[index] = updateFn(selectedCatFilters[index]);

  int? catFilterCount = 0;

  dynamic selCategory;

  List<String> selCatIds = [''];
  void addToSelCatIds(String item) => selCatIds.add(item);
  void removeFromSelCatIds(String item) => selCatIds.remove(item);
  void removeAtIndexFromSelCatIds(int index) => selCatIds.removeAt(index);
  void insertAtIndexInSelCatIds(int index, String item) =>
      selCatIds.insert(index, item);
  void updateSelCatIdsAtIndex(int index, Function(String) updateFn) =>
      selCatIds[index] = updateFn(selCatIds[index]);

  int catIdCounter = 0;

  List<int> selCatIndexes = [];
  void addToSelCatIndexes(int item) => selCatIndexes.add(item);
  void removeFromSelCatIndexes(int item) => selCatIndexes.remove(item);
  void removeAtIndexFromSelCatIndexes(int index) =>
      selCatIndexes.removeAt(index);
  void insertAtIndexInSelCatIndexes(int index, int item) =>
      selCatIndexes.insert(index, item);
  void updateSelCatIndexesAtIndex(int index, Function(int) updateFn) =>
      selCatIndexes[index] = updateFn(selCatIndexes[index]);

  List<String> selCatNames = [];
  void addToSelCatNames(String item) => selCatNames.add(item);
  void removeFromSelCatNames(String item) => selCatNames.remove(item);
  void removeAtIndexFromSelCatNames(int index) => selCatNames.removeAt(index);
  void insertAtIndexInSelCatNames(int index, String item) =>
      selCatNames.insert(index, item);
  void updateSelCatNamesAtIndex(int index, Function(String) updateFn) =>
      selCatNames[index] = updateFn(selCatNames[index]);

  List<String> sendCatIds = [];
  void addToSendCatIds(String item) => sendCatIds.add(item);
  void removeFromSendCatIds(String item) => sendCatIds.remove(item);
  void removeAtIndexFromSendCatIds(int index) => sendCatIds.removeAt(index);
  void insertAtIndexInSendCatIds(int index, String item) =>
      sendCatIds.insert(index, item);
  void updateSendCatIdsAtIndex(int index, Function(String) updateFn) =>
      sendCatIds[index] = updateFn(sendCatIds[index]);

  List<int> sendCatIndexes = [];
  void addToSendCatIndexes(int item) => sendCatIndexes.add(item);
  void removeFromSendCatIndexes(int item) => sendCatIndexes.remove(item);
  void removeAtIndexFromSendCatIndexes(int index) =>
      sendCatIndexes.removeAt(index);
  void insertAtIndexInSendCatIndexes(int index, int item) =>
      sendCatIndexes.insert(index, item);
  void updateSendCatIndexesAtIndex(int index, Function(int) updateFn) =>
      sendCatIndexes[index] = updateFn(sendCatIndexes[index]);

  List<dynamic> tempChildren = [];
  void addToTempChildren(dynamic item) => tempChildren.add(item);
  void removeFromTempChildren(dynamic item) => tempChildren.remove(item);
  void removeAtIndexFromTempChildren(int index) => tempChildren.removeAt(index);
  void insertAtIndexInTempChildren(int index, dynamic item) =>
      tempChildren.insert(index, item);
  void updateTempChildrenAtIndex(int index, Function(dynamic) updateFn) =>
      tempChildren[index] = updateFn(tempChildren[index]);

  dynamic rawCategory;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
