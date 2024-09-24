class ApiConstants {
  static const String baseUrl = "http://10.0.2.2/e-ecommerse";

//ده خاص باالاميلوتر لانه غير مرفوع علي استضافه
  static String test = "$baseUrl/test.php";
///////Auth
  static const String signUp = "$baseUrl/auth/sign_up.php";
  static const String linklogin = "$baseUrl/auth/login.php";
  static const String verfycode = "$baseUrl/auth/verfycode.php";
  static const String sendverfycode = "$baseUrl/auth/sendverfycode.php";

///////forget_password////////////
  static const String checkEmail = "$baseUrl/forget_password/check_email.php";
  static const String verfyCodeForget =
      "$baseUrl/forget_password/verfycode_forget_password.php";
  static const String repassword = "$baseUrl/forget_password/Repassword.php";

  /// ////////home////////////////////
  static const String categories = "$baseUrl/items/categories_item.php";
  static const String offers = "$baseUrl/items/offers.php";

  static const String home = "$baseUrl/home.php";

//////////////favorite//////////////
  static const String removefavorite = "$baseUrl/favorite/removefavorite.php";
  static const String addfavorite = "$baseUrl/favorite/addfavorite.php";
  static const String getfavorite = "$baseUrl/favorite/get_favorite.php";
///////////cart////////////////
  static const String getCurrentCart = "$baseUrl/cart/get_count_cart.php";
  static const String addCart = "$baseUrl/cart/add_cart.php";
  static const String deleteCart = "$baseUrl/cart/delete_cart.php";
  static const String getcart = "$baseUrl/cart/getcart.php";

/////////////////image///////////////
  static const String imageCat = '$baseUrl/upload/categories';
  static const String imageItem = '$baseUrl/upload/item';
  static const String imagePoster = '$baseUrl/upload/poster';

  //////////////////searchitem
  static const String search = '$baseUrl/items/search.php';
  ////////////////adress/////////////
  static const String adressGet = '$baseUrl/adress/get_adress.php';
  static const String adressAdd = '$baseUrl/adress/add_adress.php';
  static const String adressEdit = '$baseUrl/adress/edit_adress.php';
  static const String adressDelete = '$baseUrl/adress/delete_adress.php';
  /////////////////////////////////Coupon
  static const String checkCoupon = '$baseUrl/coupon/checkCoupon.php';
  /////////////////order
  static const String checkout = '$baseUrl/orders/checkout.php';
  static const String getorder = '$baseUrl/orders/get_order.php';
  static const String details = '$baseUrl/orders/details.php';
  static const String pending = '$baseUrl/orders/pending.php';
  static const String archive = '$baseUrl/orders/archive.php';
  static const String delete = '$baseUrl/orders/delete.php';
  static const String rating = '$baseUrl/orders/Rating.php';

  ////////////////admin////////////
  static const String getnotification = '$baseUrl/get_notification.php';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}

const List<String> itemStep = [
  'pending',
  'been approved',
  'prepare',
  'shipped',
  'done',
];

const List<String> contentOrders = [
  'there is a order awaiting approval',
  'the order Has been Approved',
  'this order is under preparation',
  'Your order  is on the way',
  'the order has been delivery to the custemrs',
];
