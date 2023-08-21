import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import '../../widgets/ImageCarouselWithIndicators.dart';
import '../../widgets/customTextCategory.dart';
import '../../widgets/custom_baseCategory.dart';
import '../../widgets/search_boxCustom.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

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
              ))
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: ColorManager.borderColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextCategory(),
            const SizedBox(
              height: 18,
            ),
            const SearchBox(),
            const SizedBox(
              height: 44,
            ),
            ImageCarouselWithIndicators(),
            const SizedBox(
              height: 44,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/LivingRoom.jpg',
              namecategory: 'Living Rooms',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Sabi Bedroom.jpg',
              namecategory: 'Bedrooms',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Local Manufactures',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/kitchen.jpg',
              namecategory: 'Kitchen',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Gardens',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Balcon.jpg',
              namecategory: 'Balconies',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/sign.jpg',
              namecategory: 'Accessories',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Sofa',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Chairs',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Doors',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Local Manufactures',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Local Manufactures',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Local Manufactures',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Local Manufactures',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomBaseCategory(
              imageUrl: 'assets/Charis.jpg',
              namecategory: 'Local Manufactures',
            ),
          ],
        ),
      ),
    );
  }
}

