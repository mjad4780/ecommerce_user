class ResponseHome {
  final String? status;
  final SettingResponse? setting;
  final CategoriesResponse? categories;
  final Item1view? item1view;

  ResponseHome({
    this.status,
    this.setting,
    this.categories,
    this.item1view,
  });

  factory ResponseHome.fromJson(Map<String, dynamic> json) {
    return ResponseHome(
      status: json['status'],
      setting: json['setting'] != null
          ? SettingResponse.fromJson(json['setting'])
          : null,
      categories: json['categories'] != null
          ? CategoriesResponse.fromJson(json['categories'])
          : null,
      item1view: json['item1view'] != null
          ? Item1view.fromJson(json['item1view'])
          : null,
    );
  }
}

class SettingResponse {
  final String? status;
  final String? messege;
  final List<Setting>? data;

  SettingResponse({this.status, this.messege, this.data});

  factory SettingResponse.fromJson(Map<String, dynamic> json) {
    return SettingResponse(
      status: json['status'],
      messege: json['messege'],
      data: json['data'] != null
          ? (json['data'] as List<dynamic>)
              .map((e) => Setting.fromJson(e))
              .toList()
          : null,
    );
  }
}

class Setting {
  final int? settingId;
  final String? settingTitle;
  final String? settingBody;
  final int? settingDatedelvery;
  final String? settingImage;

  Setting({
    this.settingId,
    this.settingTitle,
    this.settingBody,
    this.settingDatedelvery,
    this.settingImage,
  });

  factory Setting.fromJson(Map<String, dynamic> json) {
    return Setting(
      settingId: json['setting_id'],
      settingTitle: json['setting_title'],
      settingBody: json['setting_body'],
      settingDatedelvery: json['setting_datedelvery'],
      settingImage: json['setting_image'],
    );
  }
}

class CategoriesResponse {
  final String? status;
  final String? messege;
  final List<Category>? data;

  CategoriesResponse({this.status, this.messege, this.data});

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) {
    return CategoriesResponse(
      status: json['status'],
      messege: json['messege'],
      data: json['data'] != null
          ? (json['data'] as List<dynamic>)
              .map((e) => Category.fromJson(e))
              .toList()
          : null,
    );
  }
}

class Category {
  final int? categoriesId;
  final String? categoriesName;
  final String? categoriesNameAr;
  final String? categoriesImage;
  final String? categoriesData;

  Category({
    this.categoriesId,
    this.categoriesName,
    this.categoriesNameAr,
    this.categoriesImage,
    this.categoriesData,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      categoriesId: json['categories_id'],
      categoriesName: json['categories_name'],
      categoriesNameAr: json['categories_name_ar'],
      categoriesImage: json['categories_image'],
      categoriesData: json['categories_data'],
    );
  }
}

class Item1view {
  final List<Item>? data;

  Item1view({this.data});

  factory Item1view.fromJson(dynamic json) {
    // هنا بنشيك لو json عبارة عن List
    if (json is List) {
      return Item1view(
        data: json.map((e) => Item.fromJson(e)).toList(),
      );
    } else {
      return Item1view(
        data: json['data'] != null
            ? (json['data'] as List<dynamic>)
                .map((e) => Item.fromJson(e))
                .toList()
            : null,
      );
    }
  }
}

class Item {
  int? itemId;
  String? itemName;
  String? itemNameAr;
  String? itemDecs;
  String? itemDecsAr;
  String? itemImage;
  int? itemCount;
  bool? itemActive;
  int? itemPrice;
  int? itemDiscount;
  String? itemData;
  int? itemCategories;
  bool? favorite;
  bool? notFavorite;

  int? categoriesId;
  String? categoriesName;
  int? itempriceDiscount;
  List<String>? images;
  List<Size>? size;

  Item({
    this.notFavorite,
    this.itemId,
    this.itemName,
    this.itemNameAr,
    this.itemDecs,
    this.itemDecsAr,
    this.itemImage,
    this.itemCount,
    this.itemActive,
    this.itemPrice,
    this.itemDiscount,
    this.itemData,
    this.itemCategories,
    this.favorite,
    this.categoriesId,
    this.categoriesName,
    this.itempriceDiscount,
    this.images,
    this.size,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      itemId: json['item_id'],
      itemName: json['item_name'],
      itemNameAr: json['item_name_ar'],
      itemDecs: json['item_decs'],
      itemDecsAr: json['item_decs_ar'],
      itemImage: json['item_image'],
      itemCount: json['item_count'],
      itemPrice: json['item_price'],
      itemDiscount: json['item_discount'],
      itemData: json['item_data'],
      itemCategories: json['item_categories'],
      favorite: json['favorite'],
      notFavorite: json['not_favorite'],
      categoriesId: json['categories_id'],
      categoriesName: json['categories_name'],
      itempriceDiscount: json['itemprice_discount'],
      images: json['images'] != null
          ? (json['images'] as List<dynamic>).map((e) => e.toString()).toList()
          : null,
      size: json['size'] != null
          ? (json['size'] as List<dynamic>)
              .map((e) => Size.fromJson(e))
              .toList()
          : null,
    );
  }
}

class Size {
  final int? id;
  final String? size;
  final int? quantity;
  final String? color;

  Size({
    this.id,
    this.size,
    this.quantity,
    this.color,
  });

  factory Size.fromJson(Map<String, dynamic> json) {
    return Size(
      id: json['id'],
      size: json['size'],
      quantity: json['quantity'],
      color: json['color'],
    );
  }
}
