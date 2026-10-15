import '/components/button/button_widget.dart';
import '/components/cart_item/cart_item_widget.dart';
import '/components/payment_chip/payment_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'panier_widget.dart' show PanierWidget;
import 'package:flutter/material.dart';

class PanierModel extends FlutterFlowModel<PanierWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for CartItem.
  late CartItemModel cartItemModel1;
  // Model for CartItem.
  late CartItemModel cartItemModel2;
  // Model for CartItem.
  late CartItemModel cartItemModel3;
  // Model for PaymentChip.
  late PaymentChipModel paymentChipModel1;
  // Model for PaymentChip.
  late PaymentChipModel paymentChipModel2;
  // Model for PaymentChip.
  late PaymentChipModel paymentChipModel3;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    cartItemModel1 = createModel(context, () => CartItemModel());
    cartItemModel2 = createModel(context, () => CartItemModel());
    cartItemModel3 = createModel(context, () => CartItemModel());
    paymentChipModel1 = createModel(context, () => PaymentChipModel());
    paymentChipModel2 = createModel(context, () => PaymentChipModel());
    paymentChipModel3 = createModel(context, () => PaymentChipModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    cartItemModel1.dispose();
    cartItemModel2.dispose();
    cartItemModel3.dispose();
    paymentChipModel1.dispose();
    paymentChipModel2.dispose();
    paymentChipModel3.dispose();
    buttonModel.dispose();
  }
}
