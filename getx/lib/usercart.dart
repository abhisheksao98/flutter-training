import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/cart.dart';
import 'package:getx/model.dart';
import 'package:getx/shopping.dart';

class UserCartScreen extends StatelessWidget {
  const UserCartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Cart'),
        ),
        body: GetX<CartController>(builder: ((controller) {
          // GetX<quantity>(builder: ((controller) {
          return Column(children: [
            SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: controller.selectedProducts.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Image.network(
                                  controller.selectedProducts[index].imageUrl,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Expanded(
                                  child: Text(controller
                                      .selectedProducts[index].productName)),
                              Expanded(
                                  child: Text(
                                      '${controller.selectedProducts[index].price}')),
                              IconButton(
                                  onPressed: () {
                                    controller.increaseQuantityofProduct(index);
                                  },
                                  icon: Icon(Icons.add)),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove),
                              ),
                              Text(controller.selectedProducts[index].quantity
                                  .toString()),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      controller.removeProductsFromCart(
                                          controller.selectedProducts[index]);
                                    },
                                    icon: Icon(Icons.remove_shopping_cart)),
                              ),
                              Text(controller.selectedProducts[index].quantity
                                  .toString())
                            ],
                          ),
                        ],
                      ));
                    })),
            Text(
              'Total Price : Rs. ${controller.totalCost}',
              style: const TextStyle(fontSize: 30.0),
            )
          ]);
        }))

        //}))
        );
  }
}
