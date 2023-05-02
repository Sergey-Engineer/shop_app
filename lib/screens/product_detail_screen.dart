import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  static const routeName = '/product-detail';

  // final String title;
  // final double price;
  //
  // const ProductDetailScreen(
  //     {Key? key, required this.title, required this.price})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
