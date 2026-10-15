import '/components/button_energistrer/button_energistrer_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'personalinformation_widget.dart' show PersonalinformationWidget;
import 'package:flutter/material.dart';

class PersonalinformationModel
    extends FlutterFlowModel<PersonalinformationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for emailField.
  late TextFieldModel emailFieldModel;
  // State field(s) for birthField widget.
  DateTime? birthFieldSelectedDay;
  // Model for phoneField.
  late TextFieldModel phoneFieldModel1;
  // Model for phoneField.
  late TextFieldModel phoneFieldModel2;
  // Model for regionField.
  late TextFieldModel regionFieldModel;
  // Model for cityField.
  late TextFieldModel cityFieldModel;
  // Model for postalcode.
  late TextFieldModel postalcodeModel;
  // Model for ButtonEnergistrer component.
  late ButtonEnergistrerModel buttonEnergistrerModel;

  @override
  void initState(BuildContext context) {
    emailFieldModel = createModel(context, () => TextFieldModel());
    phoneFieldModel1 = createModel(context, () => TextFieldModel());
    phoneFieldModel2 = createModel(context, () => TextFieldModel());
    regionFieldModel = createModel(context, () => TextFieldModel());
    cityFieldModel = createModel(context, () => TextFieldModel());
    postalcodeModel = createModel(context, () => TextFieldModel());
    buttonEnergistrerModel =
        createModel(context, () => ButtonEnergistrerModel());
    postalcodeModel.inputTextControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    emailFieldModel.dispose();
    phoneFieldModel1.dispose();
    phoneFieldModel2.dispose();
    regionFieldModel.dispose();
    cityFieldModel.dispose();
    postalcodeModel.dispose();
    buttonEnergistrerModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9ykw5w35' /* value is required */,
      );
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }
}
