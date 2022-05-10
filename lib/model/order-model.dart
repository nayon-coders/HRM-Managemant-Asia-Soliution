class OrderDetails {
  OrderDetails({
    required this.data,
  });

  Data data;
}

class Data {
  Data({
    required this.id,
    required this.orderNumber,
    required this.orderProducts,
    required this.userId,
    required this.name,
    required this.email,
    required this.phone,
    required this.amount,
    required this.shipping,
    this.discount,
    required this.address,
    required this.division,
    required this.district,
    required this.upazila,
    required this.zip,
    required this.status,
    required this.date,
    required this.paymentStatus,
  });

  int id;
  String orderNumber;
  List<OrderProducts> orderProducts;
  String userId;
  String name;
  String email;
  String phone;
  String amount;
  String shipping;
  dynamic discount;
  String address;
  Division division;
  District district;
  Upazila upazila;
  String zip;
  String status;
  DateTime date;
  String paymentStatus;
}

class District {
  District({
    required this.id,
    required this.name,
    required this.divisionId,
  });

  int id;
  String name;
  String divisionId;
}

class Division {
  Division({
    required this.id,
    required this.name,
  });

  int id;
  String name;
}

class OrderProducts {
  OrderProducts({
    required this.id,
    required this.orderId,
    required this.productId,
    this.shopId,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.total,
    required this.point,
    required this.status,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String orderId;
  String productId;
  dynamic shopId;
  String productName;
  String price;
  String quantity;
  String total;
  String point;
  String status;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;
}

class Upazila {
  Upazila({
    required this.id,
    required this.name,
    required this.districtId,
  });

  int id;
  String name;
  String districtId;
}
