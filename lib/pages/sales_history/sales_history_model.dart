import '/components/button/button_widget.dart';
import '/components/filter_chip2/filter_chip2_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/components/transaction_item/transaction_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sales_history_widget.dart' show SalesHistoryWidget;
import 'package:flutter/material.dart';

class SalesHistoryModel extends FlutterFlowModel<SalesHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel1;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel2;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel3;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel4;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel5;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel1;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel2;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel3;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel4;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel5;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel6;
  // Model for TransactionItem.
  late TransactionItemModel transactionItemModel7;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    filterChipModel1 = createModel(context, () => FilterChip2Model());
    filterChipModel2 = createModel(context, () => FilterChip2Model());
    filterChipModel3 = createModel(context, () => FilterChip2Model());
    filterChipModel4 = createModel(context, () => FilterChip2Model());
    filterChipModel5 = createModel(context, () => FilterChip2Model());
    transactionItemModel1 = createModel(context, () => TransactionItemModel());
    transactionItemModel2 = createModel(context, () => TransactionItemModel());
    transactionItemModel3 = createModel(context, () => TransactionItemModel());
    transactionItemModel4 = createModel(context, () => TransactionItemModel());
    transactionItemModel5 = createModel(context, () => TransactionItemModel());
    transactionItemModel6 = createModel(context, () => TransactionItemModel());
    transactionItemModel7 = createModel(context, () => TransactionItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
    filterChipModel5.dispose();
    transactionItemModel1.dispose();
    transactionItemModel2.dispose();
    transactionItemModel3.dispose();
    transactionItemModel4.dispose();
    transactionItemModel5.dispose();
    transactionItemModel6.dispose();
    transactionItemModel7.dispose();
    buttonModel.dispose();
  }
}
