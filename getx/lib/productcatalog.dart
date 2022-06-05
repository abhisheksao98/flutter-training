import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/cart.dart';
import 'package:getx/shopping.dart';
import 'package:getx/usercart.dart';

class ProductsCatalog extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final userCartController = Get.put(CartController());
  ProductsCatalog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products Catalog'),
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 6.0),
                child: Badge(
                  toAnimate: false,
                  child: const Icon(Icons.shopping_cart),
                  badgeContent: GetX<CartController>(
                    builder: ((controller) {
                      return Text(
                        controller.selectedProducts.length.toString(),
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14.0),
                      );
                    }),
                  ),
                ),
              ),
              onTap: () {
                Get.to(const UserCartScreen());
              },
            )
          ],
        ),
        body: GetX<ShoppingController>(
          builder: ((controller) {
            return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(controller.products[index].imageUrl),
                    title: Text(controller.products[index].productName),
                    subtitle: Text(controller.products[index].price.toString()),
                    trailing: ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        userCartController
                            .addProductToCart(controller.products[index]);
                      },
                    ),
                  );
                });
          }),
        ));
  }
}
