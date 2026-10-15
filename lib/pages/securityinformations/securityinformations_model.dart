import '/components/button_energistrer/button_energistrer_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'securityinformations_widget.dart' show SecurityinformationsWidget;
import 'package:flutter/material.dart';

class SecurityinformationsModel
    extends FlutterFlowModel<SecurityinformationsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for newpasswordField.
  late TextFieldModel newpasswordFieldModel;
  // Model for confirmnew.
  late TextFieldModel confirmnewModel;
  // Model for emailField.
  late TextFieldModel emailFieldModel;
  // Model for phoneField.
  late TextFieldModel phoneFieldModel;
  // Model for ButtonEnergistrer component.
  late ButtonEnergistrerModel buttonEnergistrerModel;

  @override
  void initState(BuildContext context) {
    newpasswordFieldModel = createModel(context, () => TextFieldModel());
    confirmnewModel = createModel(context, () => TextFieldModel());
    emailFieldModel = createModel(context, () => TextFieldModel());
    phoneFieldModel = createModel(context, () => TextFieldModel());
    buttonEnergistrerModel =
        createModel(context, () => ButtonEnergistrerModel());
    newpasswordFieldModel.inputTextControllerValidator =
        _formTextFieldValidator2;
  }

  @override
  void dispose() {
    newpasswordFieldModel.dispose();
    confirmnewModel.dispose();
    emailFieldModel.dispose();
    phoneFieldModel.dispose();
    buttonEnergistrerModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sql03vb4' /* value is required */,
      );
    }

    if (!RegExp('^(?=.*[A-Za-z])(?=.*\\d).{8,}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }
}
