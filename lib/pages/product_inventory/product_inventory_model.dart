import '/components/button/button_widget.dart';
import '/components/filter_chip/filter_chip_widget.dart';
import '/components/inventory_item/inventory_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'product_inventory_widget.dart' show ProductInventoryWidget;
import 'package:flutter/material.dart';

class ProductInventoryModel extends FlutterFlowModel<ProductInventoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for FilterChip.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip.
  late FilterChipModel filterChipModel2;
  // Model for FilterChip.
  late FilterChipModel filterChipModel3;
  // Model for FilterChip.
  late FilterChipModel filterChipModel4;
  // Model for InventoryItem.
  late InventoryItemModel inventoryItemModel1;
  // Model for InventoryItem.
  late InventoryItemModel inventoryItemModel2;
  // Model for InventoryItem.
  late InventoryItemModel inventoryItemModel3;
  // Model for InventoryItem.
  late InventoryItemModel inventoryItemModel4;
  // Model for InventoryItem.
  late InventoryItemModel inventoryItemModel5;
  // Model for InventoryItem.
  late InventoryItemModel inventoryItemModel6;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
    filterChipModel4 = createModel(context, () => FilterChipModel());
    inventoryItemModel1 = createModel(context, () => InventoryItemModel());
    inventoryItemModel2 = createModel(context, () => InventoryItemModel());
    inventoryItemModel3 = createModel(context, () => InventoryItemModel());
    inventoryItemModel4 = createModel(context, () => InventoryItemModel());
    inventoryItemModel5 = createModel(context, () => InventoryItemModel());
    inventoryItemModel6 = createModel(context, () => InventoryItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
    inventoryItemModel1.dispose();
    inventoryItemModel2.dispose();
    inventoryItemModel3.dispose();
    inventoryItemModel4.dispose();
    inventoryItemModel5.dispose();
    inventoryItemModel6.dispose();
    buttonModel.dispose();
  }
}
