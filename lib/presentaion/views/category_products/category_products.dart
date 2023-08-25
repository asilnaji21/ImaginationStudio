import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../widgets/product_item.dart';
import '../../widgets/search_boxCustom.dart';
import '../main/domain/model/product_model.dart';
import '../product/product_view.dart';

class CategoryProducts extends StatefulWidget {
  final String categoryName;
  const CategoryProducts({super.key, required this.categoryName});

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  late List<ProductModel>? productList;
  @override
  void initState() {
    super.initState();
    getProduct();
  }

  TextEditingController searchTextController = TextEditingController();

  List<ProductModel> getProduct() {
    productList = Constant.furniture
        .where((element) =>
            element.productCategory
                .toLowerCase()
                .contains(widget.categoryName.toLowerCase()) &&
            (element.productTitle
                .toLowerCase()
                .contains(searchTextController.text.toLowerCase())))
        .toList();
    return productList!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 30,
          right: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(
              controller: searchTextController,
              onChanged: (value) {
                setState(() {
                  getProduct();
                });
              },
              onSubmitted: (value) {
                setState(() {
                  getProduct();
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.categoryName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: "Arial"),
            ),
            Expanded(
              //  height: 200,
              child: productList != null && productList!.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // عدد الأعمدة في الشبكة
                        mainAxisSpacing: 15.0, // المسافة الرأسية بين العناصر
                        crossAxisSpacing: 15.0, // المسافة الأفقية بين العناصر
                        childAspectRatio: 1, // تحديد نسبة العرض إلى الارتفاع
                      ),
                      itemCount: productList!.length, // عدد العناصر في الشبكة
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {},
                          child: MyGridItem(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductView(
                                    productModel: productList![index]),
                              ));
                            },
                            index: index,
                            productModel: productList![index],
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        "No Product Found",
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
