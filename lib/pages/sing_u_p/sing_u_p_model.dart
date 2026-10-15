import '/components/auth_header/auth_header_widget.dart';
import '/components/button_signup/button_signup_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sing_u_p_widget.dart' show SingUPWidget;
import 'package:flutter/material.dart';

class SingUPModel extends FlutterFlowModel<SingUPWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AuthHeader.
  late AuthHeaderModel authHeaderModel;
  // Model for nameField.
  late TextFieldModel nameFieldModel;
  // Model for phoneField.
  late TextFieldModel phoneFieldModel;
  // Model for emailField.
  late TextFieldModel emailFieldModel;
  // Model for passwordField.
  late TextFieldModel passwordFieldModel;
  // Model for confirmPasswordField.
  late TextFieldModel confirmPasswordFieldModel;
  // Model for ButtonSignup component.
  late ButtonSignupModel buttonSignupModel;

  @override
  void initState(BuildContext context) {
    authHeaderModel = createModel(context, () => AuthHeaderModel());
    nameFieldModel = createModel(context, () => TextFieldModel());
    phoneFieldModel = createModel(context, () => TextFieldModel());
    emailFieldModel = createModel(context, () => TextFieldModel());
    passwordFieldModel = createModel(context, () => TextFieldModel());
    confirmPasswordFieldModel = createModel(context, () => TextFieldModel());
    buttonSignupModel = createModel(context, () => ButtonSignupModel());
    nameFieldModel.inputTextControllerValidator = _formTextFieldValidator1;
    phoneFieldModel.inputTextControllerValidator = _formTextFieldValidator2;
    passwordFieldModel.inputTextControllerValidator = _formTextFieldValidator3;
    confirmPasswordFieldModel.inputTextControllerValidator =
        _formTextFieldValidator4;
  }

  @override
  void dispose() {
    authHeaderModel.dispose();
    nameFieldModel.dispose();
    phoneFieldModel.dispose();
    emailFieldModel.dispose();
    passwordFieldModel.dispose();
    confirmPasswordFieldModel.dispose();
    buttonSignupModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0t0pjjjk' /* Name is required */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        '824yqaiy' /* Name requires minimum of 2 let... */,
      );
    }

    if (!RegExp('^[A-Za-zÀ-ÿ\' -]{2,}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5abs92ih' /* Number is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'xl1zhr9e' /* Invalid number(8 numbers, ex :... */,
      );
    }

    if (!RegExp('^(\\+216|00216)?[2-579]\\d{7}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8000mdw2' /* Password is required */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f2h86s7u' /* Confirm your password */,
      );
    }

    return null;
  }
}
