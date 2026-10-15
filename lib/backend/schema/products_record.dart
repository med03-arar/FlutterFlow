import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "category" field.
  ProductCategory? _category;
  ProductCategory? get category => _category;
  bool hasCategory() => _category != null;

  // "featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  bool hasFeatured() => _featured != null;

  // "volume_ml" field.
  int? _volumeMl;
  int get volumeMl => _volumeMl ?? 0;
  bool hasVolumeMl() => _volumeMl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _brand = snapshotData['brand'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _stock = castToType<int>(snapshotData['stock']);
    _imageUrl = snapshotData['image_url'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _category = snapshotData['category'] is ProductCategory
        ? snapshotData['category']
        : deserializeEnum<ProductCategory>(snapshotData['category']);
    _featured = snapshotData['featured'] as bool?;
    _volumeMl = castToType<int>(snapshotData['volume_ml']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  String? brand,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? stock,
  String? imageUrl,
  bool? isActive,
  ProductCategory? category,
  bool? featured,
  int? volumeMl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'brand': brand,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'stock': stock,
      'image_url': imageUrl,
      'is_active': isActive,
      'category': category,
      'featured': featured,
      'volume_ml': volumeMl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.brand == e2?.brand &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.stock == e2?.stock &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.isActive == e2?.isActive &&
        e1?.category == e2?.category &&
        e1?.featured == e2?.featured &&
        e1?.volumeMl == e2?.volumeMl;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.brand,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.stock,
        e?.imageUrl,
        e?.isActive,
        e?.category,
        e?.featured,
        e?.volumeMl
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
