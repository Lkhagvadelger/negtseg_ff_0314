import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dynamic_form_input_widget.dart' show DynamicFormInputWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DynamicFormInputModel extends FlutterFlowModel<DynamicFormInputWidget> {
  ///  Local state fields for this component.

  int? dropCounter = 0;

  List<String> dropItems = [];
  void addToDropItems(String item) => dropItems.add(item);
  void removeFromDropItems(String item) => dropItems.remove(item);
  void removeAtIndexFromDropItems(int index) => dropItems.removeAt(index);
  void insertAtIndexInDropItems(int index, String item) =>
      dropItems.insert(index, item);
  void updateDropItemsAtIndex(int index, Function(String) updateFn) =>
      dropItems[index] = updateFn(dropItems[index]);

  FormZarDynamicValueStruct? dynamicValueItem;
  void updateDynamicValueItemStruct(
          Function(FormZarDynamicValueStruct) updateFn) =>
      updateFn(dynamicValueItem ??= FormZarDynamicValueStruct());

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for dynamicNumberField widget.
  FocusNode? dynamicNumberFieldFocusNode;
  TextEditingController? dynamicNumberFieldController;
  String? Function(BuildContext, String?)?
      dynamicNumberFieldControllerValidator;
  String? _dynamicNumberFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for DropDownMulti widget.
  List<String>? dropDownMultiValue;
  FormFieldController<List<String>>? dropDownMultiValueController;
  // State field(s) for dynamicStringField widget.
  FocusNode? dynamicStringFieldFocusNode;
  TextEditingController? dynamicStringFieldController;
  String? Function(BuildContext, String?)?
      dynamicStringFieldControllerValidator;
  String? _dynamicStringFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dynamicNumberFieldControllerValidator =
        _dynamicNumberFieldControllerValidator;
    dynamicStringFieldControllerValidator =
        _dynamicStringFieldControllerValidator;
  }

  @override
  void dispose() {
    dynamicNumberFieldFocusNode?.dispose();
    dynamicNumberFieldController?.dispose();

    dynamicStringFieldFocusNode?.dispose();
    dynamicStringFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
