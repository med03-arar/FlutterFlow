import '/components/button/button_widget.dart';
import '/components/info_label/info_label_widget.dart';
import '/components/note_tag/note_tag_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'product_details_editor_widget.dart' show ProductDetailsEditorWidget;
import 'package:flutter/material.dart';

class ProductDetailsEditorModel
    extends FlutterFlowModel<ProductDetailsEditorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel3;
  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // Model for NoteTag.
  late NoteTagModel noteTagModel1;
  // Model for NoteTag.
  late NoteTagModel noteTagModel2;
  // Model for NoteTag.
  late NoteTagModel noteTagModel3;
  // Model for NoteTag.
  late NoteTagModel noteTagModel4;
  // Model for InfoLabel.
  late InfoLabelModel infoLabelModel1;
  // Model for InfoLabel.
  late InfoLabelModel infoLabelModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel4;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel5;
  // Model for TextField.
  late TextFieldModel textFieldModel6;
  // Model for TextField.
  late TextFieldModel textFieldModel7;
  // Model for Button.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    textFieldModel3 = createModel(context, () => TextFieldModel());
    noteTagModel1 = createModel(context, () => NoteTagModel());
    noteTagModel2 = createModel(context, () => NoteTagModel());
    noteTagModel3 = createModel(context, () => NoteTagModel());
    noteTagModel4 = createModel(context, () => NoteTagModel());
    infoLabelModel1 = createModel(context, () => InfoLabelModel());
    infoLabelModel2 = createModel(context, () => InfoLabelModel());
    textFieldModel4 = createModel(context, () => TextFieldModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    textFieldModel5 = createModel(context, () => TextFieldModel());
    textFieldModel6 = createModel(context, () => TextFieldModel());
    textFieldModel7 = createModel(context, () => TextFieldModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    noteTagModel1.dispose();
    noteTagModel2.dispose();
    noteTagModel3.dispose();
    noteTagModel4.dispose();
    infoLabelModel1.dispose();
    infoLabelModel2.dispose();
    textFieldModel4.dispose();
    buttonModel2.dispose();
    textFieldModel5.dispose();
    textFieldModel6.dispose();
    textFieldModel7.dispose();
    buttonModel3.dispose();
  }
}
