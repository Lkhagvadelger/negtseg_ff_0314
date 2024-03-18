import '/components/button_left_icon_title/button_left_icon_title_widget.dart';
import '/components/form/form_input_normal/form_input_normal_widget.dart';
import '/components/form/form_input_switch/form_input_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  Local state fields for this page.

  List<dynamic> zarData = [];
  void addToZarData(dynamic item) => zarData.add(item);
  void removeFromZarData(dynamic item) => zarData.remove(item);
  void removeAtIndexFromZarData(int index) => zarData.removeAt(index);
  void insertAtIndexInZarData(int index, dynamic item) =>
      zarData.insert(index, item);
  void updateZarDataAtIndex(int index, Function(dynamic) updateFn) =>
      zarData[index] = updateFn(zarData[index]);

  String selStatus = 'Бүгд';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FormInputNormal component.
  late FormInputNormalModel formInputNormalModel1;
  // Model for FormInputNormal component.
  late FormInputNormalModel formInputNormalModel2;
  // Model for FormInputNormal component.
  late FormInputNormalModel formInputNormalModel3;
  // Model for FormInputSwitch component.
  late FormInputSwitchModel formInputSwitchModel1;
  // Model for FormInputSwitch component.
  late FormInputSwitchModel formInputSwitchModel2;
  // Model for FormInputSwitch component.
  late FormInputSwitchModel formInputSwitchModel3;
  // Model for FormInputSwitch component.
  late FormInputSwitchModel formInputSwitchModel4;
  // Model for FormInputSwitch component.
  late FormInputSwitchModel formInputSwitchModel5;
  // Model for ButtonLeftIconTitle component.
  late ButtonLeftIconTitleModel buttonLeftIconTitleModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    formInputNormalModel1 = createModel(context, () => FormInputNormalModel());
    formInputNormalModel2 = createModel(context, () => FormInputNormalModel());
    formInputNormalModel3 = createModel(context, () => FormInputNormalModel());
    formInputSwitchModel1 = createModel(context, () => FormInputSwitchModel());
    formInputSwitchModel2 = createModel(context, () => FormInputSwitchModel());
    formInputSwitchModel3 = createModel(context, () => FormInputSwitchModel());
    formInputSwitchModel4 = createModel(context, () => FormInputSwitchModel());
    formInputSwitchModel5 = createModel(context, () => FormInputSwitchModel());
    buttonLeftIconTitleModel =
        createModel(context, () => ButtonLeftIconTitleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    formInputNormalModel1.dispose();
    formInputNormalModel2.dispose();
    formInputNormalModel3.dispose();
    formInputSwitchModel1.dispose();
    formInputSwitchModel2.dispose();
    formInputSwitchModel3.dispose();
    formInputSwitchModel4.dispose();
    formInputSwitchModel5.dispose();
    buttonLeftIconTitleModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
