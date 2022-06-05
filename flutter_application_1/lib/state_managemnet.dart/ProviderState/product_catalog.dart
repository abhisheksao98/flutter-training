import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screen/product.dart';
import 'package:flutter_application_1/services/productservice_provider.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/user_cart.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/user_cart_mixin.dart';
import 'package:provider/provider.dart';

import '../../product.dart';

class ProductCatalog extends StatefulWidget {
  const ProductCatalog({Key? key}) : super(key: key);

  @override
  State<ProductCatalog> createState() => _ProductCatalogState();
}

class _ProductCatalogState extends State<ProductCatalog> {
  List<Product> products = ProductService().getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Catalog'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 4),
              child: Badge(
                toAnimate: false,
                badgeContent: Text(
                  '${context.watch<UserCart>().products.length}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                child: Icon(Icons.shopping_cart),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => UserCartScreen())));
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(products[index].imageUrl),
              title: Text(products[index].productName),
              subtitle: Text(products[index].price.toString()),
              trailing: _AddItemButton(product: products[index]),
            );
          }),
    );
  }
}

class _AddItemButton extends StatefulWidget {
  final Product product;
  const _AddItemButton({Key? key, required this.product}) : super(key: key);

  @override
  State<_AddItemButton> createState() => __AddItemButtonState();
}

class __AddItemButtonState extends State<_AddItemButton> {
  @override
  Widget build(BuildContext context) {
    var isProductExistsInCart = context.select<UserCart, bool>(
        (usercart) => usercart.products.contains(widget.product));
    return isProductExistsInCart
        ? const Icon(Icons.check)
        : ElevatedButton(
            onPressed: () {
              context.read<UserCart>().addProductTocart(widget.product);
            },
            child: const Text('Add'));
  }
}
