double calculateTotal(List<double> prices) {
  // Use the fold method to sum up all the prices in the list
  return prices.fold(0.0, (total, currentPrice) => total + currentPrice);
}

void main() {
  List<double> itemPrices = [19.99, 5.49, 3.75, 88.67];
  double totalPrice = calculateTotal(itemPrices);
  print(totalPrice); 

//2 anonymous function


  List<double> itemPrice = [19.99, 5.49, 3.75, 12.00, 8.50];
  double threshold = 10.0;

  // Use the where method with an anonymous function to filter out items below the threshold
  List<double> filteredPrices = itemPrices.where((price) => price >= threshold).toList();

  print(filteredPrices); // Output: [19.99, 12.0]



//3 Function that applies a discount to each price in the list
List<double> applyDiscount(List<double> prices, double Function(double) discount) {
  return prices.map((price) => discount(price)).toList();
}


  // Sample list of prices
  List<double> prices = [100.0, 200.0, 300.0, 400.0];

  // Discount function that reduces the price by 20%
  double discountFunction(double price) {
    double discountPercentage = 20.0;
    return price - (price * (discountPercentage / 100));
  }

  // Applying the discount to the prices
  List<double> discountedPrices = applyDiscount(prices, discountFunction);

  // Printing the discounted prices
  print(discountedPrices); 



  
//4. Recursive function to calculate the factorial of a number
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

// Function to calculate the total price after applying the factorial discount
double calculateFactorialDiscount(List<double> prices) {
  // Calculate the total price of the items
  double totalPrice = prices.fold(0, (sum, price) => sum + price);

  // Calculate the factorial discount percentage based on the number of items
  int numberOfItems = prices.length;
  int discountPercentage = factorial(numberOfItems);

  // Ensure that the discount does not exceed 100%
  discountPercentage = discountPercentage > 100 ? 100 : discountPercentage;

  // Calculate the discount amount
  double discountAmount = totalPrice * (discountPercentage / 100);

  // Return the total price after applying the discount
  return totalPrice - discountAmount;
}


}

