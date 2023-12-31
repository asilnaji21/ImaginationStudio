import 'package:flutter/material.dart';

import '../../../app/routes/route_constants.dart';
import '../../../config/constant.dart';
import '../../resources/color_manager.dart';
import '../../widgets/Image_carousel_with_indicators.dart';
import '../../widgets/custom_text_category.dart';
import '../../widgets/custom_base_category.dart';
import '../../widgets/search_box_custom.dart';
import '../main/domain/model/categories_model.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  late List<CategoryModel>? categoryList;
  @override
  void initState() {
    super.initState();
    getCategory();
  }

  TextEditingController searchTextController = TextEditingController();

  List<CategoryModel> getCategory() {
    categoryList = Constant.categoriesList
        .where((element) => (element.name
            .toLowerCase()
            .contains(searchTextController.text.toLowerCase())))
        .toList();
    return categoryList!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 230, 186, 171),
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .pushNamed(RouteConstants.localManufacturesRoute);
        },
      ),
      appBar: AppBar(
        /* actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: ColorManager.borderColor,
              ))
        ],*/
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
            const CustomTextCategory(),
            const SizedBox(
              height: 18,
            ),
            SearchBox(
              controller: searchTextController,
              onChanged: (value) {
                setState(() {
                  getCategory();
                });
              },
              onSubmitted: (value) {
                setState(() {
                  getCategory();
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const ImageCarouselWithIndicators(),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: categoryList != null && categoryList!.isNotEmpty
                  ? ListView.separated(
                      itemBuilder: (context, index) => CustomBaseCategory(
                          categoryModel: categoryList![index]),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemCount: categoryList!.length)
                  : const Center(
                      child: Text(
                        "No Category Found",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
