class EndPoint {
  static const String baseUrl = "http://10.0.2.2/e-ecommerse";

//ده خاص باالاميلوتر لانه غير مرفوع علي استضافه
  static String test = "$baseUrl/test.php";

///////Auth
  static String sugin_up = "$baseUrl/auth/sign_up.php";
  static const String linklogin = "$baseUrl/auth/login.php";
  static String verfycode = "$baseUrl/auth/verfycode.php";
  static String sendverfycode = "$baseUrl/auth/sendverfycode.php";

///////forget_password////////////
  static String check_email = "$baseUrl/forget_password/check_email.php";
  static String verfycode_forget =
      "$baseUrl/forget_password/verfycode_forget_password.php";
  static String Repassword = "$baseUrl/forget_password/Repassword.php";

  /// ////////home////////////////////
  static String categories = "$baseUrl/items/categories_item.php";
  static String offers = "$baseUrl/items/offers.php";

  static const String home = "$baseUrl/home.php";

//////////////favorite//////////////
  static String removefavorite = "$baseUrl/favorite/removefavorite.php";
  static String addfavorite = "$baseUrl/favorite/addfavorite.php";
  static String getfavorite = "$baseUrl/favorite/get_favorite.php";
///////////cart////////////////
  static String getcurrent_cart = "$baseUrl/cart/get_count_cart.php";
  static String add_cart = "$baseUrl/cart/add_cart.php";
  static String delete_cart = "$baseUrl/cart/delete_cart.php";
  static String getcart = "$baseUrl/cart/getcart.php";

/////////////////image///////////////
  static String image_cat = '$baseUrl/upload/categories';
  static String image_item = '$baseUrl/upload/item';
  //////////////////searchitem
  static const String search = '$baseUrl/items/search.php';
  ////////////////adress/////////////
  static String adress_get = '$baseUrl/adress/get_adress.php';
  static String adress_add = '$baseUrl/adress/add_adress.php';
  static String adress_edit = '$baseUrl/adress/edit_adress.php';
  static String adress_delete = '$baseUrl/adress/delete_adress.php';
  /////////////////////////////////Coupon
  static String checkCoupon = '$baseUrl/coupon/checkCoupon.php';
  /////////////////order
  static String checkout = '$baseUrl/orders/checkout.php';
  static String getorder = '$baseUrl/orders/get_order.php';
  static String details = '$baseUrl/orders/details.php';
  static String pending = '$baseUrl/orders/pending.php';
  static String archive = '$baseUrl/orders/archive.php';
  static String delete = '$baseUrl/orders/delete.php';
  static String rating = '$baseUrl/orders/Rating.php';

  ////////////////admin////////////
  static String getnotification =
      '$baseUrl/admin/notification/get_notification.php';
}

class ApiKey {
  static String token = 'token';
  static String itemlocal = 'itemlocal';
  static String categorieslocal = 'categorieslocal';
}
