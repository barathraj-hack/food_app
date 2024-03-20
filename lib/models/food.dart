class Food {
  final String name; // cheese burger
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/example.jpg
  final double price; // ₹150.00
  final FoodCategory category; // burger
  List<AddOn> availableAddons; // [ extra cheese, sauce, extra patty]

  Food({
    required this.description,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.availableAddons,
    required this.category,
  });
}

// food categories
enum FoodCategory {
  burgers,

  desserts,
  drinks,
}

// add on's
class AddOn {
  String name;
  double price;

  AddOn({
    required this.name,
    required this.price,
  });
}
