import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/widgets/products_grid.dart';

import '../providers/cart.dart';
import '../providers/products.dart';
import 'package:shop_app/widgets/badge.dart';

enum FilterOptions { favorites, all }

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: [
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: FilterOptions.favorites,
                    child: Text('Only Favorites'),
                  ),
                  const PopupMenuItem(
                    value: FilterOptions.all,
                    child: Text('Show All'),
                  )
                ];
              }),
          Consumer<Cart>(
            builder: (context, cart, childIcon) => BadgeWidget(
              value: cart.itemCount.toString(),
              child: childIcon!,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                )),
          ),
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
