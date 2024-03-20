import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      description: 'A juicy chicken burger',
      imagePath: 'lib/images/burgers/b1.jpg',
      name: 'Classic Cheese Burger',
      price: 150.00,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(
          name: 'Extra Cheese',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Sauce',
          price: 10.00,
        ),
        AddOn(
          name: 'Bacon',
          price: 15.00,
        ),
      ],
    ),
    Food(
      description: 'A juicy veg burger',
      imagePath: 'lib/images/burgers/b2.jpg',
      name: 'Classic Veg Burger',
      price: 120.00,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(
          name: 'Extra Cheese',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Sauce',
          price: 10.00,
        ),
        AddOn(
          name: 'Bacon',
          price: 15.00,
        ),
      ],
    ),
    Food(
      description: 'A juicy mutton burger',
      imagePath: 'lib/images/burgers/b3.jpg',
      name: 'Mutton Cheese Burger',
      price: 200.00,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(
          name: 'Extra Cheese',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Sauce',
          price: 10.00,
        ),
        AddOn(
          name: 'Bacon',
          price: 15.00,
        ),
      ],
    ),
    Food(
      description: 'A juicy beef burger',
      imagePath: 'lib/images/burgers/b4.jpg',
      name: 'Beef Cheese Burger',
      price: 140.00,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(
          name: 'Extra Cheese',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Sauce',
          price: 10.00,
        ),
        AddOn(
          name: 'Bacon',
          price: 15.00,
        ),
      ],
    ),
    Food(
      description: 'A juicy burger',
      imagePath: 'lib/images/burgers/b5.jpg',
      name: 'Classic Burger',
      price: 50.00,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(
          name: 'Extra Cheese',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Sauce',
          price: 10.00,
        ),
        AddOn(
          name: 'Bacon',
          price: 15.00,
        ),
      ],
    ),

    // desserts
    Food(
      description: 'Tasty Dessert',
      imagePath: 'lib/images/desserts/d1.jpg',
      name: 'Ice Cream',
      price: 140.00,
      category: FoodCategory.desserts,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Tasty Dessert',
      imagePath: 'lib/images/desserts/d2.jpg',
      name: 'Milk Shake',
      price: 140.00,
      category: FoodCategory.desserts,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Tasty Dessert',
      imagePath: 'lib/images/desserts/d3.jpg',
      name: 'Patty',
      price: 140.00,
      category: FoodCategory.desserts,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Tasty Dessert',
      imagePath: 'lib/images/desserts/d4.jpg',
      name: 'Sandwich Icecream',
      price: 140.00,
      category: FoodCategory.desserts,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Tasty Dessert',
      imagePath: 'lib/images/desserts/d5.jpg',
      name: 'Honey Cake',
      price: 140.00,
      category: FoodCategory.desserts,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Chocolate',
          price: 10.00,
        ),
      ],
    ),

    // drinks
    Food(
      description: 'Spicy Drinks',
      imagePath: 'lib/images/drinks/dr1.jpg',
      name: 'Coke',
      price: 140.00,
      category: FoodCategory.drinks,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Spicy Drinks',
      imagePath: 'lib/images/drinks/dr2.jpg',
      name: 'Orange',
      price: 140.00,
      category: FoodCategory.drinks,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Spicy Drinks',
      imagePath: 'lib/images/drinks/dr3.jpg',
      name: 'Lemon',
      price: 140.00,
      category: FoodCategory.drinks,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Spicy Drinks',
      imagePath: 'lib/images/drinks/dr4.jpg',
      name: 'Lemon Soda',
      price: 140.00,
      category: FoodCategory.drinks,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
    Food(
      description: 'Spicy Drinks',
      imagePath: 'lib/images/drinks/dr5.jpg',
      name: 'Soda Drink',
      price: 140.00,
      category: FoodCategory.drinks,
      availableAddons: [
        AddOn(
          name: 'Extra Sugar',
          price: 20.00,
        ),
        AddOn(
          name: 'Extra Ice',
          price: 10.00,
        ),
      ],
    ),
  ];

  /*

  G E T T E R S
  
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T I O N S
  
  */

  // user car
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<AddOn> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check of the selected add ons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if the item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.remove(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (AddOn addOn in cartItem.selectedAddons) {
        itemTotal += addOn.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S
  
  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(
        cartItem.food.price,
      )}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<AddOn> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
