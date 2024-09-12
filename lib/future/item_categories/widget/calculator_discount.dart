double calculateDiscountPercentage(num originalPrice, num? discountedPrice) {
  if (originalPrice <= 0) {
    throw ArgumentError('Original price must be greater than zero.');
  }

  //? Ensure discountedPrice is not null; if it is, default to the original price (no discount)
  num finalDiscountedPrice = discountedPrice ?? originalPrice;

  if (finalDiscountedPrice > originalPrice) {
    return originalPrice.toDouble();
  }

  double discount =
      ((originalPrice - finalDiscountedPrice) / originalPrice) * 100;

  //? Return the discount percentage as an integer
  return discount;
}
