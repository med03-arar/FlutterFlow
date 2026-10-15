import '/components/auth_header/auth_header_widget.dart';
import '/components/button/button_widget.dart';
import '/components/social_button/social_button_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'authentication_widget.dart' show AuthenticationWidget;
import 'package:flutter/material.dart';

class AuthenticationModel extends FlutterFlowModel<AuthenticationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AuthHeader.
  late AuthHeaderModel authHeaderModel;
  // Model for emailField.
  late TextFieldModel emailFieldModel;
  // Model for passwordField.
  late TextFieldModel passwordFieldModel;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for SocialButton.
  late SocialButtonModel socialButtonModel1;
  // Model for SocialButton.
  late SocialButtonModel socialButtonModel2;

  @override
  void initState(BuildContext context) {
    authHeaderModel = createModel(context, () => AuthHeaderModel());
    emailFieldModel = createModel(context, () => TextFieldModel());
    passwordFieldModel = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
    socialButtonModel1 = createModel(context, () => SocialButtonModel());
    socialButtonModel2 = createModel(context, () => SocialButtonModel());
  }

  @override
  void dispose() {
    authHeaderModel.dispose();
    emailFieldModel.dispose();
    passwordFieldModel.dispose();
    buttonModel.dispose();
    socialButtonModel1.dispose();
    socialButtonModel2.dispose();
  }
}
