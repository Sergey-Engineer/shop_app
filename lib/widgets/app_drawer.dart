import 'package:flutter/material.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Hello, Friend!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Shop'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Orders'),
            onTap: () {
              Navigator.pushReplacementNamed(context, OrdersScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, UserProductsScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
