void main() {
  // List of item prices in the cart
  List<double> cart = [15.0, 25.0, 5.0, 50.0, 8.0,];

  // Filter out items below $10 using an anonymous function
  List<double> filteredCart = cart.where((price) => price >= 10.0).toList();

  // Apply a 10% discount to all items in the cart
  List<double> discountedCart = applyDiscount(filteredCart, (price) => price * 0.90);

  // Calculate the total price after discount
  double totalPrice = calculateTotal(discountedCart, taxRate: 0.07);

  // Calculate the factorial discount based on the number of items
  int itemCount = discountedCart.length;
  double factorialDiscount = calculateFactorialDiscount(itemCount) / 100.0;

  // Apply the factorial discount to the total price
  double finalPrice = totalPrice * (1 - factorialDiscount);

  // Print the results
  print("Filtered Cart: $filteredCart");
  print("Discounted Cart: $discountedCart");
  print("Total Price (after tax): \$${totalPrice.toStringAsFixed(2)}");
  print("Factorial Discount: ${factorialDiscount * 100}%");
  print("Final Price: \$${finalPrice.toStringAsFixed(2)}");
}

// Function to calculate the total price with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0.0, (sum, price) => sum + price);
  return subtotal * (1 + taxRate);
}

// Higher-order function to apply a discount to all items
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

// Recursive function to calculate the factorial discount
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}