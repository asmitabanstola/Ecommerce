import 'package:flutter/material.dart';
import '../../models/products.dart';
import 'package:provider/provider.dart';
import '../../models/cart.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPdt.name),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(loadedPdt.image),
            ),
          ),
          Text(
            'Price: \$${loadedPdt.price}',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '${loadedPdt.description}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cart.addItem(productId, loadedPdt.name, loadedPdt.price);
        },
        child: Icon(
          Icons.shopping_cart,
          size: 30,
        ),
      ),
    );
  }
}
