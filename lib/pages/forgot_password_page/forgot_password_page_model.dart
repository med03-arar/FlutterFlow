import '/components/auth_header/auth_header_widget.dart';
import '/components/button_mot_passe_oublie/button_mot_passe_oublie_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPageModel
    extends FlutterFlowModel<ForgotPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AuthHeader.
  late AuthHeaderModel authHeaderModel;
  // Model for emailField.
  late TextFieldModel emailFieldModel;
  // Model for ButtonMotPasseOublie component.
  late ButtonMotPasseOublieModel buttonMotPasseOublieModel;

  @override
  void initState(BuildContext context) {
    authHeaderModel = createModel(context, () => AuthHeaderModel());
    emailFieldModel = createModel(context, () => TextFieldModel());
    buttonMotPasseOublieModel =
        createModel(context, () => ButtonMotPasseOublieModel());
  }

  @override
  void dispose() {
    authHeaderModel.dispose();
    emailFieldModel.dispose();
    buttonMotPasseOublieModel.dispose();
  }
}
