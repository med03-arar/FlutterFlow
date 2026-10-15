import 'package:collection/collection.dart';

enum ProductCategory {
  parfum,
  soin,
  maquillage,
}

enum ProductGender {
  femme,
  homme,
  mixte,
}

enum OrderStatus {
  en_attente,
  confirmee,
  en_preparation,
  expediee,
  livree,
  annulee,
}

enum PaymentMethod {
  livraison,
  carte,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ProductCategory):
      return ProductCategory.values.deserialize(value) as T?;
    case (ProductGender):
      return ProductGender.values.deserialize(value) as T?;
    case (OrderStatus):
      return OrderStatus.values.deserialize(value) as T?;
    case (PaymentMethod):
      return PaymentMethod.values.deserialize(value) as T?;
    default:
      return null;
  }
}
