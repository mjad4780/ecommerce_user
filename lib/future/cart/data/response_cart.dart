class Datacart {
  final int cartId;
  final int itemId;
  final String userId;
  final String cartColor;
  final String cartSize;
  final int cartQuantity;
  final String itemName;
  final String itemNameAr;
  final String itemDesc;
  final String itemDescAr;
  final String itemImage;
  final double itemPrice;
  final double itemDiscount;
  final double itemTotalPrice;
  final double itemOriginalTotal;

  Datacart({
    required this.cartId,
    required this.itemId,
    required this.userId,
    required this.cartColor,
    required this.cartSize,
    required this.cartQuantity,
    required this.itemName,
    required this.itemNameAr,
    required this.itemDesc,
    required this.itemDescAr,
    required this.itemImage,
    required this.itemPrice,
    required this.itemDiscount,
    required this.itemTotalPrice,
    required this.itemOriginalTotal,
  });

  factory Datacart.fromJson(Map<String, dynamic> json) {
    return Datacart(
      cartId: json['cart_id'] ?? 0,
      itemId: json['item_id'] ?? 0,
      userId: json['cart_userid'] ?? '',
      cartColor: json['cart_color'] ?? '',
      cartSize: json['cart_size'] ?? '',
      cartQuantity: json['cart_quantity'] ?? 0,
      itemName: json['item_name'] ?? '',
      itemNameAr: json['item_name_ar'] ?? '',
      itemDesc: json['item_decs'] ?? '',
      itemDescAr: json['item_decs_ar'] ?? '',
      itemImage: json['item_image'] ?? '',
      itemPrice: (json['item_price'] ?? 0).toDouble(),
      itemDiscount: (json['item_discount'] ?? 0).toDouble(),
      itemTotalPrice: (json['item_total_price'] ?? 0).toDouble(),
      itemOriginalTotal: (json['item_original_total'] ?? 0).toDouble(),
    );
  }

  // دالة لنسخ العنصر مع تحديث الكمية
  Datacart copyWith({
    int? cartQuantity,
    double? itemTotalPrice,
    double? itemOriginalTotal,
  }) {
    return Datacart(
      cartId: cartId,
      itemId: itemId,
      userId: userId,
      cartColor: cartColor,
      cartSize: cartSize,
      cartQuantity: cartQuantity ?? this.cartQuantity,
      itemName: itemName,
      itemNameAr: itemNameAr,
      itemDesc: itemDesc,
      itemDescAr: itemDescAr,
      itemImage: itemImage,
      itemPrice: itemPrice,
      itemDiscount: itemDiscount,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemOriginalTotal: itemOriginalTotal ?? this.itemOriginalTotal,
    );
  }
}

class ResponseCart {
  final List<Datacart> datacart;
  final double totalPriceOffers;
  final double totalPrice;
  final int totalCount;

  ResponseCart({
    required this.datacart,
    required this.totalPriceOffers,
    required this.totalPrice,
    required this.totalCount,
  });

  factory ResponseCart.fromJson(Map<String, dynamic> json) {
    final items = (json['cartItems'] as List)
        .map((item) => Datacart.fromJson(item))
        .toList();

    return ResponseCart(
      datacart: items,
      totalPriceOffers: (json['totalPriceOffers'] ?? 0).toDouble(),
      totalPrice: (json['totalPrice'] ?? 0).toDouble(),
      totalCount: json['totalCount'] ?? 0,
    );
  }

  ResponseCart copyWith({
    List<Datacart>? cartItems,
    double? totalPriceOffers,
    double? totalPrice,
    int? totalCount,
  }) {
    return ResponseCart(
      datacart: cartItems ?? datacart,
      totalPriceOffers: totalPriceOffers ?? this.totalPriceOffers,
      totalPrice: totalPrice ?? this.totalPrice,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}
