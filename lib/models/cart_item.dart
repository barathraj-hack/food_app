import 'package:food_app/models/food.dart';

class CartItem {
  Food food;
  List<AddOn> selectedAddons;

  int quantity;

  CartItem({
    required this.food,
    this.quantity = 1,
    required this.selectedAddons,
  });

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, AddOn) => sum + AddOn.price);
    return (food.price + addonsPrice) * quantity;
  }
}
