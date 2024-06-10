class OrdersModel {
  int? ordersId;
  int? ordersUsersid;
  int? ordersAddress;
  int? ordersType;
  int? ordersPricedelivery;
  int? ordersPrice;
  int? ordersTotalprice;
  int? ordersCoupon;
  int? ordersPaymentmethod;
  int? ordersStatus;
  String? ordersDatetime;
  int? addressId;
  int? addressUsersid;
  String? addressName;
  String? addressCity;
  String? addressStreet;
  String? addressLat;
  String? addressLong;
  int? orderrating;
  String? orderratingComment;

  OrdersModel(
      {this.ordersId,
      this.ordersUsersid,
      this.ordersAddress,
      this.ordersType,
      this.ordersPricedelivery,
      this.ordersPrice,
      this.ordersTotalprice,
      this.ordersCoupon,
      this.ordersPaymentmethod,
      this.ordersStatus,
      this.ordersDatetime,
      this.addressId,
      this.addressUsersid,
      this.addressName,
      this.addressCity,
      this.addressStreet,
      this.addressLat,
      this.addressLong,
      this.orderrating,
      this.orderratingComment});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersAddress = json['orders_address'];
    ordersType = json['orders_type'];
    ordersPricedelivery = json['orders_pricedelivery'];
    ordersPrice = json['orders_price'];
    ordersTotalprice = json['order_Toatalprice'];
    orderrating = json['orders_rating'];
    orderratingComment = json['orders_rating_commint'];

    ordersCoupon = json['orders_coupon'];
    ordersPaymentmethod = json['orders_paymentmets'];
    ordersStatus = json['orders_status'];
    ordersDatetime = json['orders_datetime'];
    addressId = json['adress_id'] ?? 10;
    addressUsersid = json['adress_userid'];
    addressName = json['adress_name'];
    addressCity = json['adress_city'];
    addressStreet = json['adress_street'];
    addressLat = json['adress_lat'];
    addressLong = json['adress_long'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['orders_id'] = ordersId;
  //   data['orders_usersid'] = ordersUsersid;
  //   data['orders_address'] = ordersAddress;
  //   data['orders_type'] = ordersType;
  //   data['orders_pricedelivery'] = ordersPricedelivery;
  //   data['orders_price'] = ordersPrice;
  //   data['orders_totalprice'] = ordersTotalprice;
  //   data['orders_coupon'] = ordersCoupon;
  //   data['orders_paymentmethod'] = ordersPaymentmethod;
  //   data['orders_status'] = ordersStatus;
  //   data['orders_datetime'] = ordersDatetime;
  //   data['address_id'] = addressId;
  //   data['address_usersid'] = addressUsersid;
  //   data['address_name'] = addressName;
  //   data['address_city'] = addressCity;
  //   data['address_street'] = addressStreet;
  //   data['address_lat'] = addressLat;
  //   data['address_long'] = addressLong;
  //   return data;
  // }
}
