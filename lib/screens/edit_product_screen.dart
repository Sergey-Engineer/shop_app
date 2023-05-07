import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);
  static const routeName = '/edit-product';

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();

  @override
  void dispose() {
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: ListView(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(_priceFocusNode);
              },
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(_descriptionFocusNode);
              },
              focusNode: _priceFocusNode,
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            TextFormField(
              focusNode: _descriptionFocusNode,
              maxLines: 3,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            )
          ],
        )),
      ),
    );
  }
}
