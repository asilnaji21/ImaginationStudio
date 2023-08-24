import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../widgets/ColoredCircle.dart';
import '../../widgets/CustomBoxTextFiledComment.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/MyImageCarousel.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: ColorManager.borderColor,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: ColorManager.borderColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyImageCarousel(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 47),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "500\$ ",
                  textAlign: TextAlign.right,
                  style:
                      TextStyle(fontSize: 44, color: ColorManager.textColor2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Container(
                width: double.infinity,
                child: const Text(
                  "Modern Velvet 3 Seater Sofa \n /Dark green",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontFamily: 'Aldhabi'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Container(
                width: double.infinity,
                child: const Text(
                  "Color",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 40, fontFamily: 'Aldhabi'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                children: [
                  ColoredCircle(color: ColorManager.circleColorGreen),
                  const SizedBox(
                    width: 9,
                  ),
                  ColoredCircle(color: ColorManager.circleColorGrid),
                  const SizedBox(
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
                      onPressed: () {},
                      icon: const Icon(Icons.save_alt_rounded),
                      label: const Text(
                        "save",
                        style: TextStyle(
                            color: ColorManager.textColor2, fontSize: 30),
                      )),
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
                    minimumSize: Size(84, 47),
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
