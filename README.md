# dart-week-2

## Online Shopping Cart System

### Features to Implement

1. **Standard Functions**  
    - Create a function `calculateTotal` that accepts a list of item prices and returns the total price.  
    - Implement optional parameters for tax calculation.

2. **Anonymous Functions**  
    - Use an anonymous function to filter out items with a price below a certain threshold (e.g., items under $10).

3. **Higher-Order Functions**  
    - Write a function `applyDiscount` that takes a list of prices and a discount function as parameters.  
    - The discount function should reduce the price by a percentage.

4. **Recursive Functions**  
    - Create a recursive function `calculateFactorialDiscount` that calculates a special discount based on the factorial of the number of items in the cart.  
      - Example: If there are 4 items, the discount is `4!` percent.

### Instructions

- Use the `applyDiscount` function to apply a discount to all items in the cart.  
- Calculate the final price after applying the discount and tax using the `calculateTotal` function.  
- Use the recursive function for an additional special discount and apply it to the final price.