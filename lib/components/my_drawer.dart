import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer_tile.dart';
import 'package:food_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_rounded,
              size: 70,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          MyDrawerTile(
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
            text: 'H O M E',
          ),

          // settings tile
          MyDrawerTile(
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            text: 'S E T T I N G S',
          ),

          const Spacer(),

          // logout list tile
          MyDrawerTile(
            icon: Icons.logout,
            onTap: () {},
            text: 'L O G O U T',
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
