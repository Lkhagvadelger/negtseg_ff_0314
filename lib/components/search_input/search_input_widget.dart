import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_input_model.dart';
export 'search_input_model.dart';

class SearchInputWidget extends StatefulWidget {
  const SearchInputWidget({super.key});

  @override
  State<SearchInputWidget> createState() => _SearchInputWidgetState();
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  late SearchInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchInputModel());

    _model.searchTextFieldController ??=
        TextEditingController(text: FFAppState().searchInputValue);
    _model.searchTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent4,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: TextFormField(
        controller: _model.searchTextFieldController,
        focusNode: _model.searchTextFieldFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.searchTextFieldController',
          Duration(milliseconds: 2000),
          () => setState(() {}),
        ),
        onFieldSubmitted: (_) async {
          _model.updatePage(() {
            FFAppState().addToRecentSearch(FFAppState().searchInputValue);
          });
        },
        autofocus: true,
        textInputAction: TextInputAction.search,
        obscureText: false,
        decoration: InputDecoration(
          isDense: true,
          alignLabelWithHint: false,
          hintText: FFLocalizations.of(context).getText(
            'w3lbafx1' /* Хайх */,
          ),
          hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SFPRO',
                color: FlutterFlowTheme.of(context).placeholder,
                fontSize: 13.0,
                useGoogleFonts: false,
                lineHeight: 1.38,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).accent4,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).accent4,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          contentPadding:
              EdgeInsetsDirectional.fromSTEB(14.0, 12.0, 14.0, 12.0),
          suffixIcon: _model.searchTextFieldController!.text.isNotEmpty
              ? InkWell(
                  onTap: () async {
                    _model.searchTextFieldController?.clear();
                    setState(() {});
                  },
                  child: Icon(
                    Icons.clear,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 12.0,
                  ),
                )
              : null,
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'SFPRO',
              color: FlutterFlowTheme.of(context).primaryText,
              fontSize: 13.0,
              fontWeight: FontWeight.normal,
              useGoogleFonts: false,
              lineHeight: 1.38,
            ),
        minLines: 1,
        validator:
            _model.searchTextFieldControllerValidator.asValidator(context),
      ),
    );
  }
}
