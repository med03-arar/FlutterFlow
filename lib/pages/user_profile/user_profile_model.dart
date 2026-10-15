import '/components/settings_tile/settings_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData7od = false;
  FFUploadedFile uploadedLocalFile_uploadData7od =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData7od = '';

  // Model for SettingsTile.
  late SettingsTileModel settingsTileModel1;
  // Model for SettingsTile.
  late SettingsTileModel settingsTileModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for SettingsTile.
  late SettingsTileModel settingsTileModel3;

  @override
  void initState(BuildContext context) {
    settingsTileModel1 = createModel(context, () => SettingsTileModel());
    settingsTileModel2 = createModel(context, () => SettingsTileModel());
    settingsTileModel3 = createModel(context, () => SettingsTileModel());
  }

  @override
  void dispose() {
    settingsTileModel1.dispose();
    settingsTileModel2.dispose();
    settingsTileModel3.dispose();
  }
}
