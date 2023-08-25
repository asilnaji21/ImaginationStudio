import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../views/category_products/category_products.dart';
import '../views/main/domain/model/categories_model.dart';

class CustomBaseCategory extends StatelessWidget {
  final CategoryModel categoryModel;
  const CustomBaseCategory({
    required this.categoryModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                CategoryProducts(categoryName: categoryModel.name),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: 428,
        height: 110,
        decoration: const BoxDecoration(
          color: ColorManager.textColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 18),
              child: Text(
                categoryModel.name,
                style: const TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: ClipRect(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(
                        categoryModel.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
