import '/components/button/button_widget.dart';
import '/components/order_row/order_row_widget.dart';
import '/components/supplier_card/supplier_card_widget.dart';
import '/components/tab_group/tab_group_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_order_management_widget.dart'
    show SupplierOrderManagementWidget;
import 'package:flutter/material.dart';

class SupplierOrderManagementModel
    extends FlutterFlowModel<SupplierOrderManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for TabGroup.
  late TabGroupModel tabGroupModel;
  // Model for SupplierCard.
  late SupplierCardModel supplierCardModel1;
  // Model for SupplierCard.
  late SupplierCardModel supplierCardModel2;
  // Model for SupplierCard.
  late SupplierCardModel supplierCardModel3;
  // Model for OrderRow.
  late OrderRowModel orderRowModel1;
  // Model for OrderRow.
  late OrderRowModel orderRowModel2;
  // Model for OrderRow.
  late OrderRowModel orderRowModel3;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    tabGroupModel = createModel(context, () => TabGroupModel());
    supplierCardModel1 = createModel(context, () => SupplierCardModel());
    supplierCardModel2 = createModel(context, () => SupplierCardModel());
    supplierCardModel3 = createModel(context, () => SupplierCardModel());
    orderRowModel1 = createModel(context, () => OrderRowModel());
    orderRowModel2 = createModel(context, () => OrderRowModel());
    orderRowModel3 = createModel(context, () => OrderRowModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    tabGroupModel.dispose();
    supplierCardModel1.dispose();
    supplierCardModel2.dispose();
    supplierCardModel3.dispose();
    orderRowModel1.dispose();
    orderRowModel2.dispose();
    orderRowModel3.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
