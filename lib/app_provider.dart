import 'package:flutter/material.dart';

import 'package:project_app/presentaion/views/main/domain/model/product_model.dart';

class AppProvider extends ChangeNotifier {
  List<ProductModel> favoriteList = [];
  bool isFavorite = false;
  bool isInCart = false;
  int counter = 1;

  List<ProductModel> cartList = [];

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
    notifyListeners();
  }

  double calculateTotalCost(List<ProductModel> cartList) {
    double totalCost = 0.0;
    for (ProductModel item in cartList) {
      // تحويل قيمة السعر إلى رقم وجمعها
      totalCost += item.priceTotal;
    }
    notifyListeners();

    return totalCost;
  }

  void increaseQuantity(String productId) {
    for (ProductModel item in cartList) {
      if (item.productId == productId) {
        item.quantity++;
        item.priceTotal = item.quantity * double.parse(item.productPrice);
        notifyListeners();
        break; // توقف بمجرد العثور على العنصر المناسب
      }
    }
  }

  void decreaseQuantity(String productId) {
    for (ProductModel item in cartList) {
      if (item.productId == productId) {
        if (item.quantity > 0) {
          item.quantity--;
          item.priceTotal = item.quantity * double.parse(item.productPrice);
          notifyListeners();
        }
        break; // توقف بمجرد العثور على العنصر المناسب
      }
    }
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
