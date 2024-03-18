import '/components/buttons/button_round_icon_right/button_round_icon_right_widget.dart';
import '/components/post/post_new_image_list_item/post_new_image_list_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'post_new_detail_image_widget.dart' show PostNewDetailImageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostNewDetailImageModel
    extends FlutterFlowModel<PostNewDetailImageWidget> {
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Models for PostNewImageListItem dynamic component.
  late FlutterFlowDynamicModels<PostNewImageListItemModel>
      postNewImageListItemModels;
  // Model for ButtonRoundIconRight component.
  late ButtonRoundIconRightModel buttonRoundIconRightModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    postNewImageListItemModels =
        FlutterFlowDynamicModels(() => PostNewImageListItemModel());
    buttonRoundIconRightModel =
        createModel(context, () => ButtonRoundIconRightModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    postNewImageListItemModels.dispose();
    buttonRoundIconRightModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
