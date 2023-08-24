import 'package:flutter/material.dart';

import '../views/main/domain/model/product_model.dart';

class MyGridItem extends StatefulWidget {
  final int index;
  final ProductModel productModel;

  final void Function()? onTap;
  const MyGridItem(
      {super.key, required this.index, required this.productModel, this.onTap});

  @override
  State<MyGridItem> createState() => _MyGridItemState();
}

class _MyGridItemState extends State<MyGridItem> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  widget.productModel.productImage,
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                    favorite = !favorite;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                widget.productModel.productTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontSize: 12, fontFamily: "Arial"),
              ),
            ),
            Text("${widget.productModel.productPrice} \$",
                style: const TextStyle(fontSize: 12, fontFamily: "Arial"))
          ],
        )
      ],
    );
  }
}
