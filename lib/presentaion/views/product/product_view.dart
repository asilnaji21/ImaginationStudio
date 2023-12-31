import 'package:flutter/material.dart';
import 'package:project_app/app/routes/route_constants.dart';
import 'package:project_app/app_provider.dart';
import 'package:provider/provider.dart';

import '../../resources/color_manager.dart';
import '../../widgets/colored_circle.dart';
import '../../widgets/custom_box_text_filed_comment.dart';
import '../../widgets/my_image_carousel.dart';
import '../main/domain/model/product_model.dart';

class ProductView extends StatefulWidget {
  final ProductModel productModel;
  const ProductView({Key? key, required this.productModel}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    var favorite = Provider.of<AppProvider>(context)
        .favoriteList
        .contains(widget.productModel);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteConstants.myCartRoute);
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: ColorManager.borderColor,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: ColorManager.borderColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyImageCarousel(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "${widget.productModel.productPrice}\$ ",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontSize: 44, color: ColorManager.textColor2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "${widget.productModel.productTitle} \n /Dark green",
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 30, fontFamily: 'Aldhabi'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Color",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 40, fontFamily: 'Aldhabi'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                children: [
                  ColoredCircle(color: ColorManager.circleColorGreen),
                  SizedBox(
                    width: 9,
                  ),
                  ColoredCircle(color: ColorManager.circleColorGrid),
                  SizedBox(
                    width: 9,
                  ),
                  ColoredCircle(color: ColorManager.circleColorBinkh),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Write Comment",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Aldhabi',
                        color: ColorManager.textColor2),
                  ),
                ),
                Icon(Icons.comment_outlined)
              ],
            ),
            const CustomBoxTextFiledComment(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: OutlinedButton.icon(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Provider.of<AppProvider>(context, listen: false)
                            .addOrRemoveFavorite(widget.productModel);
                      },
                      icon: favorite
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 40.0,
                            )
                          : const Icon(
                              Icons.favorite_border,
                              size: 40.0,
                              color: ColorManager.primaryMainColor,
                            ),
                      label: const Text(
                        "Save",
                        style: TextStyle(
                            color: ColorManager.textColor2, fontSize: 30),
                      )),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    var appProvider =
                        Provider.of<AppProvider>(context, listen: false);
                    appProvider.addToCart(widget.productModel);
                    appProvider.isInCart = !appProvider.isInCart;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.primaryMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(114, 47),
                  ),
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.primaryMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(84, 47),
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                const SizedBox(
                  height: 99,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
