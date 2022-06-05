import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx/model.dart';
import 'package:getx/product.dart';

class CartController extends GetxController {
  // var quantity = 1.obs;
  List<Product> selectedProducts = <Product>[].obs;
  // List<quantity> count = <quantity>[].obs;

  void addProductToCart(Product product) {
    selectedProducts.add(product);
  }

  void removeProductsFromCart(Product product) {
    selectedProducts.remove(product);
  }

  void increaseQuantityofProduct(index) {
    selectedProducts[index].quantity++;
    selectedProducts[index].qunatityprice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  void decreaseeQuantityProduct(index) {
    selectedProducts[index].quantity--;
    selectedProducts[index].qunatityprice =
        selectedProducts[index].price * selectedProducts[index].quantity;
    update();
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProduct) => total + selectedProduct.qunatityprice);
}
