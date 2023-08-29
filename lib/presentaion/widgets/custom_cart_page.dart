import 'package:flutter/material.dart';
import 'package:project_app/app_provider.dart';
import 'package:project_app/presentaion/views/main/domain/model/product_model.dart';
import 'package:provider/provider.dart';

class CustomMycart extends StatelessWidget {
  final ProductModel model;
  final void Function()? onPressed;
  const CustomMycart({required this.model, Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network(
            model.productImage,
            width: 85.0,
            height: 84.07,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  model.productTitle, maxLines: 1, // ضمان عرض النص في سطر واحد
                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "${model.productPrice}\$",
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: onPressed,
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add_circle_outline,
                ),
                onPressed: () {
                  provider.increase(model.productId);
                },
              ),
              Text(
                "${Provider.of<AppProvider>(context).counter}",
                style: const TextStyle(fontSize: 25),
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove_circle_outline,
                ),
                onPressed: () {
                  provider.desrease(model.productId);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
