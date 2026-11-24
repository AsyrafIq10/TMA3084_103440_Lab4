double orderTotal(double unitPrice, int quantity) {
  if (quantity < 0) {
    throw ArgumentError.value(quantity, 'quantity', 'must not be negative');
  }
  return unitPrice * quantity;
}