import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_uploaded_image_model.dart';
export 'form_uploaded_image_model.dart';

class FormUploadedImageWidget extends StatefulWidget {
  const FormUploadedImageWidget({
    super.key,
    this.parameter1,
  });

  final dynamic parameter1;

  @override
  State<FormUploadedImageWidget> createState() =>
      _FormUploadedImageWidgetState();
}

class _FormUploadedImageWidgetState extends State<FormUploadedImageWidget> {
  late FormUploadedImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormUploadedImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
        child: Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                widget.parameter1!.toString(),
              ).image,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    borderRadius: BorderRadius.circular(999.0),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 12.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.2, -1.2),
                child: Container(
                  width: 14.0,
                  height: 14.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(999.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 8.0,
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
