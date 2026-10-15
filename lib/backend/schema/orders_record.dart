import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "order_number" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "items" field.
  List<OrderItemStruct>? _items;
  List<OrderItemStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "delivery_fee" field.
  double? _deliveryFee;
  double get deliveryFee => _deliveryFee ?? 0.0;
  bool hasDeliveryFee() => _deliveryFee != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "status" field.
  OrderStatus? _status;
  OrderStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "payment_method" field.
  PaymentMethod? _paymentMethod;
  PaymentMethod? get paymentMethod => _paymentMethod;
  bool hasPaymentMethod() => _paymentMethod != null;

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _orderNumber = snapshotData['order_number'] as String?;
    _items = getStructList(
      snapshotData['items'],
      OrderItemStruct.fromMap,
    );
    _total = castToType<double>(snapshotData['total']);
    _deliveryFee = castToType<double>(snapshotData['delivery_fee']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _status = snapshotData['status'] is OrderStatus
        ? snapshotData['status']
        : deserializeEnum<OrderStatus>(snapshotData['status']);
    _paymentMethod = snapshotData['payment_method'] is PaymentMethod
        ? snapshotData['payment_method']
        : deserializeEnum<PaymentMethod>(snapshotData['payment_method']);
    _customerName = snapshotData['customer_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _region = snapshotData['region'] as String?;
    _city = snapshotData['city'] as String?;
    _postalCode = snapshotData['postal_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? userRef,
  String? orderNumber,
  double? total,
  double? deliveryFee,
  double? subtotal,
  OrderStatus? status,
  PaymentMethod? paymentMethod,
  String? customerName,
  String? phoneNumber,
  DateTime? createdAt,
  String? region,
  String? city,
  String? postalCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'order_number': orderNumber,
      'total': total,
      'delivery_fee': deliveryFee,
      'subtotal': subtotal,
      'status': status,
      'payment_method': paymentMethod,
      'customer_name': customerName,
      'phone_number': phoneNumber,
      'created_at': createdAt,
      'region': region,
      'city': city,
      'postal_code': postalCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.orderNumber == e2?.orderNumber &&
        listEquality.equals(e1?.items, e2?.items) &&
        e1?.total == e2?.total &&
        e1?.deliveryFee == e2?.deliveryFee &&
        e1?.subtotal == e2?.subtotal &&
        e1?.status == e2?.status &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.customerName == e2?.customerName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdAt == e2?.createdAt &&
        e1?.region == e2?.region &&
        e1?.city == e2?.city &&
        e1?.postalCode == e2?.postalCode;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.orderNumber,
        const ListEquality().hash(e?.items),
        e?.total,
        e?.deliveryFee,
        e?.subtotal,
        e?.status,
        e?.paymentMethod,
        e?.customerName,
        e?.phoneNumber,
        e?.createdAt,
        e?.region,
        e?.city,
        e?.postalCode
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
