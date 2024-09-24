String? selectedTypeOrders;
String? selectedOrderPayment;
String? selectedOrderStatus;

typeOrders(int type) {
  if (type == 0) {
    selectedTypeOrders = 'delivery';
  } else {
    selectedTypeOrders = 'recive';
  }
}

paymentOrders(int payment) {
  if (payment == 0) {
    selectedOrderPayment = 'cache';
  } else {
    selectedOrderPayment = 'payment card';
  }
}

orderStatus(int status) {
  if (status == 0) {
    selectedOrderStatus = 'pending';
  } else if (status == 1) {
    selectedOrderStatus = 'been approved';
  } else if (status == 2) {
    selectedOrderStatus = 'prepare';
  } else if (status == 3) {
    selectedOrderStatus = 'shipped';
  } else if (status == 4) {
    selectedOrderStatus = 'done';
  } else {
    selectedOrderStatus = 'Cancelled';
  }
}
