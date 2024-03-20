import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // initialize selected addon to false
    for (AddOn addOn in food.availableAddons) {
      selectedAddons[addOn] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add to cart
  void addToCart(Food food, Map<AddOn, bool> selectedAddons) {
    // close the current food page to go back to menu
    Navigator.pop(context);

    // format the selected addons
    List<AddOn> currentlySelectedAddons = [];
    for (AddOn addOn in widget.food.availableAddons) {
      if (widget.selectedAddons[addOn] == true) {
        currentlySelectedAddons.add(addOn);
      }
    }

    // add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold ui
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image
                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        widget.food.name,
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),

                      // food price
                      Text(
                        '\₹' + ' ' + widget.food.price.toString(),
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // food description
                      Text(
                        widget.food.description,
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Divider(
                        thickness: 0.5,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),

                      // food description
                      Text(
                        'Add-ons',
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),

                      const SizedBox(height: 15),

                      // add ons
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // get individual add on
                            AddOn addOn = widget.food.availableAddons[index];

                            // check box ui
                            return CheckboxListTile(
                              title: Text(
                                addOn.name,
                                style: GoogleFonts.outfit(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                              subtitle: Text(
                                '\₹' + ' ' + addOn.price.toString(),
                                style: GoogleFonts.outfit(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addOn],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addOn] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 25),

                      // button -> add to cart
                      MyButton(
                        onTap: () =>
                            addToCart(widget.food, widget.selectedAddons),
                        text: 'Add To Cart',
                      ),

                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              margin: EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
