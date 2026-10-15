import '/components/category_item/category_item_widget.dart';
import '/components/category_item_copy/category_item_copy_widget.dart';
import '/components/gender_tab/gender_tab_widget.dart';
import '/components/gender_tab_copy/gender_tab_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'menu_copy_widget.dart' show MenuCopyWidget;
import 'package:flutter/material.dart';

class MenuCopyModel extends FlutterFlowModel<MenuCopyWidget> {
  ///  Local state fields for this page.

  bool showParfum = true;

  bool showParfums = false;

  bool showSoin = false;

  ///  State fields for stateful widgets in this page.

  // Model for GenderTab.
  late GenderTabModel genderTabModel;
  // Model for GenderTabCopy component.
  late GenderTabCopyModel genderTabCopyModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel1;
  // Model for CategoryItemCopy component.
  late CategoryItemCopyModel categoryItemCopyModel;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel2;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel3;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel4;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel5;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel6;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel7;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel8;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel9;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel10;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel11;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel12;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel13;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel14;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel15;

  @override
  void initState(BuildContext context) {
    genderTabModel = createModel(context, () => GenderTabModel());
    genderTabCopyModel = createModel(context, () => GenderTabCopyModel());
    categoryItemModel1 = createModel(context, () => CategoryItemModel());
    categoryItemCopyModel = createModel(context, () => CategoryItemCopyModel());
    categoryItemModel2 = createModel(context, () => CategoryItemModel());
    categoryItemModel3 = createModel(context, () => CategoryItemModel());
    categoryItemModel4 = createModel(context, () => CategoryItemModel());
    categoryItemModel5 = createModel(context, () => CategoryItemModel());
    categoryItemModel6 = createModel(context, () => CategoryItemModel());
    categoryItemModel7 = createModel(context, () => CategoryItemModel());
    categoryItemModel8 = createModel(context, () => CategoryItemModel());
    categoryItemModel9 = createModel(context, () => CategoryItemModel());
    categoryItemModel10 = createModel(context, () => CategoryItemModel());
    categoryItemModel11 = createModel(context, () => CategoryItemModel());
    categoryItemModel12 = createModel(context, () => CategoryItemModel());
    categoryItemModel13 = createModel(context, () => CategoryItemModel());
    categoryItemModel14 = createModel(context, () => CategoryItemModel());
    categoryItemModel15 = createModel(context, () => CategoryItemModel());
  }

  @override
  void dispose() {
    genderTabModel.dispose();
    genderTabCopyModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoryItemModel1.dispose();
    categoryItemCopyModel.dispose();
    categoryItemModel2.dispose();
    categoryItemModel3.dispose();
    categoryItemModel4.dispose();
    categoryItemModel5.dispose();
    categoryItemModel6.dispose();
    categoryItemModel7.dispose();
    categoryItemModel8.dispose();
    categoryItemModel9.dispose();
    categoryItemModel10.dispose();
    categoryItemModel11.dispose();
    categoryItemModel12.dispose();
    categoryItemModel13.dispose();
    categoryItemModel14.dispose();
    categoryItemModel15.dispose();
  }
}
