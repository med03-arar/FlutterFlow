import '/components/category_item/category_item_widget.dart';
import '/components/category_item_copy/category_item_copy_widget.dart';
import '/components/gender_tab/gender_tab_widget.dart';
import '/components/gender_tab_copy/gender_tab_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this page.

  bool showParfum = true;

  bool showParfums = false;

  bool showSoin = false;

  bool showMaquillage = false;

  ///  State fields for stateful widgets in this page.

  // Model for GenderTabCopy component.
  late GenderTabCopyModel genderTabCopyModel;
  // Model for GenderTab.
  late GenderTabModel genderTabModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel1;
  // Model for CategoryItemCopy component.
  late CategoryItemCopyModel categoryItemCopyModel1;
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
  // Model for CategoryItem component.
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
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel16;
  // Model for CategoryItemCopy component.
  late CategoryItemCopyModel categoryItemCopyModel2;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel17;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel18;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel19;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel20;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel21;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel22;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel23;

  @override
  void initState(BuildContext context) {
    genderTabCopyModel = createModel(context, () => GenderTabCopyModel());
    genderTabModel = createModel(context, () => GenderTabModel());
    categoryItemModel1 = createModel(context, () => CategoryItemModel());
    categoryItemCopyModel1 =
        createModel(context, () => CategoryItemCopyModel());
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
    categoryItemModel16 = createModel(context, () => CategoryItemModel());
    categoryItemCopyModel2 =
        createModel(context, () => CategoryItemCopyModel());
    categoryItemModel17 = createModel(context, () => CategoryItemModel());
    categoryItemModel18 = createModel(context, () => CategoryItemModel());
    categoryItemModel19 = createModel(context, () => CategoryItemModel());
    categoryItemModel20 = createModel(context, () => CategoryItemModel());
    categoryItemModel21 = createModel(context, () => CategoryItemModel());
    categoryItemModel22 = createModel(context, () => CategoryItemModel());
    categoryItemModel23 = createModel(context, () => CategoryItemModel());
  }

  @override
  void dispose() {
    genderTabCopyModel.dispose();
    genderTabModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoryItemModel1.dispose();
    categoryItemCopyModel1.dispose();
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
    categoryItemModel16.dispose();
    categoryItemCopyModel2.dispose();
    categoryItemModel17.dispose();
    categoryItemModel18.dispose();
    categoryItemModel19.dispose();
    categoryItemModel20.dispose();
    categoryItemModel21.dispose();
    categoryItemModel22.dispose();
    categoryItemModel23.dispose();
  }
}
