import '/components/form/form_file_container/form_file_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_file_upload_widget.dart' show FormFileUploadWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormFileUploadModel extends FlutterFlowModel<FormFileUploadWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormFileContainer component.
  late FormFileContainerModel formFileContainerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    formFileContainerModel =
        createModel(context, () => FormFileContainerModel());
  }

  @override
  void dispose() {
    formFileContainerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
