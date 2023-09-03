
import 'package:flutter/material.dart';

import 'package:project_app/presentaion/views/main/domain/model/product_model.dart';

class AppProvider extends ChangeNotifier {
  List<ProductModel> favoriteList = [];
  List<ProductModel> cartList = [];
  bool isFavorite = false;
  bool isInCart = false;
  int counter = 1;
  // double totalCartPrice = 0.0;

  increase(id) {
    counter++;
    notifyListeners();
  }

  desrease(id) {
    counter--;
    notifyListeners();
  }

  addToCart(ProductModel item) {
    for (ProductModel cartItem in cartList) {
      if (cartItem.productId == item.productId) {
        isInCart = true;
        return; // العنصر موجود بالفعل في السلة، لذا لا تضيفه مرة أخرى
      }
    }

    // العنصر غير موجود في السلة، لذا أضفه
    isInCart = true;
    cartList.add(item);
    //totalCartPrice += double.parse(item.productPrice);
    // print('Total cart price: $totalCartPrice');

    notifyListeners();
  }

  removeFromCart(ProductModel item) {
    cartList.removeWhere((cartItem) => cartItem.productId == item.productId);
    notifyListeners();
  }

  addOrRemoveFavorite(ProductModel item) {
    if (favoriteList.any((product) => product.productId == item.productId)) {
      favoriteList
          .removeWhere((product) => product.productId == item.productId);
      isFavorite = false;
    } else {
      favoriteList.add(item);
      isFavorite = true;
    }
    notifyListeners();
  }
}