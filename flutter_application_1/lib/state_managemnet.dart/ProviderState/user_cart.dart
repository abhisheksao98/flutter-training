import 'package:flutter/material.dart';

import 'package:flutter_application_1/state_managemnet.dart/ProviderState/user_cart_mixin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

// enum Actions { Increment, dcrement }

// int counterReducer(int count, dynamic action) {
//   if (action == Actions.Increment) return count + 1;
//   if (action == Actions.dcrement) return count - 1;
//   return count;
// }

class UserCartScreen extends StatefulWidget {
  const UserCartScreen({Key? key}) : super(key: key);

  @override
  State<UserCartScreen> createState() => _UserCartScreenState();
}

class _UserCartScreenState extends State<UserCartScreen> {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<UserCart>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Products'),
      ),
      body: Column(children: [
        _CartItems(cart: cart),
        const SizedBox(height: 20.0),
        Text(
          'Total Price of the Cart : \nRs. ${cart.totalPrice} /-',
          style: const TextStyle(fontSize: 24.0, color: Colors.purple),
        ),
      ]),
    );
  }
}

class _CartItems extends StatelessWidget {
  final UserCart cart;
  final int count = 1;
  const _CartItems({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cart.products.length,
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
                    cart.products[index].imageUrl,
                    height: 50,
                    width: 50,
                  ),
                ),
                Expanded(child: Text(cart.products[index].productName)),
                Expanded(child: Text('${cart.products[index].price}')),
                IconButton(
                    onPressed: () {
                      context
                          .watch<UserCart>()
                          .AddCounter(cart.products[index]);
                      context.read<UserCart>().increment();
                    },
                    icon: Icon(FontAwesomeIcons.plus)),
                IconButton(
                    onPressed: () {
                      cart.SubCounter(cart.products[index]);
                      // context.read<UserCart>().decrement();
                    },
                    icon: Icon(FontAwesomeIcons.minus)),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        cart.removeProductfromCart(cart.products[index]);
                      },
                      icon: Icon(Icons.remove_shopping_cart)),
                ),
                Text(
                  '${context.watch<UserCart>().count}',
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ));
        // ListTile(
        //     leading: Image.network(cart.products[index].imageUrl),
        //     title: Text(cart.products[index].productName),
        //     subtitle: Text(cart.products[index].price.toString()),
        //     trailing: ElevatedButton(
        //         child: Icon(Icons.garage),
        //         onPressed: () {
        //           cart.removeProductfromCart(cart.products[index]);

        //   Expanded(
        //     child: ElevatedButton(
        //         onPressed: () {}, child: const Icon(Icons.add)),
        //   ),
        //   Expanded(
        //     child: Text('${count}'),
        //   ),
        //   Expanded(
        //       child: ElevatedButton(
        //           onPressed: () {},
        //           child: const Icon(Icons.remove)))
        // ]),
      },
    );
  }
}
