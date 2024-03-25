import '/backend/schema/structs/index.dart';
import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/components/form/dynamic_form_input/dynamic_form_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'post_new_detail_widget.dart' show PostNewDetailWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostNewDetailModel extends FlutterFlowModel<PostNewDetailWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadImages = [];
  void addToUploadImages(FFUploadedFile item) => uploadImages.add(item);
  void removeFromUploadImages(FFUploadedFile item) => uploadImages.remove(item);
  void removeAtIndexFromUploadImages(int index) => uploadImages.removeAt(index);
  void insertAtIndexInUploadImages(int index, FFUploadedFile item) =>
      uploadImages.insert(index, item);
  void updateUploadImagesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadImages[index] = updateFn(uploadImages[index]);

  int fieldCounter = 0;

  List<CategoryFilterStruct> categoryFieldError = [];
  void addToCategoryFieldError(CategoryFilterStruct item) =>
      categoryFieldError.add(item);
  void removeFromCategoryFieldError(CategoryFilterStruct item) =>
      categoryFieldError.remove(item);
  void removeAtIndexFromCategoryFieldError(int index) =>
      categoryFieldError.removeAt(index);
  void insertAtIndexInCategoryFieldError(
          int index, CategoryFilterStruct item) =>
      categoryFieldError.insert(index, item);
  void updateCategoryFieldErrorAtIndex(
          int index, Function(CategoryFilterStruct) updateFn) =>
      categoryFieldError[index] = updateFn(categoryFieldError[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Models for DynamicFormInput dynamic component.
  late FlutterFlowDynamicModels<DynamicFormInputModel> dynamicFormInputModels;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dynamicFormInputModels =
        FlutterFlowDynamicModels(() => DynamicFormInputModel());
    buttonRoundIconRightModel =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dynamicFormInputModels.dispose();
    buttonRoundIconRightModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
