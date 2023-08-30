import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_provider.dart';
import '../resources/color_manager.dart';
import '../views/main/domain/model/product_model.dart';

class CustomSavedPage extends StatefulWidget {
  final ProductModel productModel;

  const CustomSavedPage({
    super.key,
    required this.productModel,
  });

  @override
  State<CustomSavedPage> createState() => _CustomSavedPageState();
}

class _CustomSavedPageState extends State<CustomSavedPage> {
  @override
  Widget build(BuildContext context) {
    var favorite = Provider.of<AppProvider>(context)
        .favoriteList
        .contains(widget.productModel);
    return Container(
      width: 428,
      height: 120,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                widget.productModel.productImage,
                height: 90,
                width: 150,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    widget.productModel.productTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                ),
                Text(
                  "${widget.productModel.productPrice}\$",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: IconButton(
              icon: favorite
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 40.0,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      size: 40.0,
                    ),
              onPressed: () {
                Provider.of<AppProvider>(context, listen: false)
                    .addOrRemoveFavorite(widget.productModel);
              },
            ),
          ),
        ],
      ),
    );
  }
}
