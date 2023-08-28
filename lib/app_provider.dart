import 'package:flutter/cupertino.dart';
import 'package:movies_app/presentaion/views/main/domain/model/product_model.dart';

class AppProvider extends ChangeNotifier {
  List<ProductModel> favoriteList = [];

  bool isFavorite = false;

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
