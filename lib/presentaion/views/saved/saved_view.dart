import 'package:flutter/material.dart';
import '../../widgets/CustomSavedPage.dart';
class SavedView extends StatelessWidget {
  const SavedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 43,
            ),
            const Text(
              "Saved",
              style: TextStyle(fontSize: 88),
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
            const SizedBox(
              height: 43,
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
            const SizedBox(
              height: 43,
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
            const SizedBox(
              height: 43,
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
            const SizedBox(
              height: 43,
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
            const SizedBox(
              height: 43,
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
            const SizedBox(
              height: 43,
            ),
            CustomSavedPage(
              imageUrl: 'assets/Gardens.jpg',
              namecategory: 'Mirror',
              price: '80\$',
            ),
          ],
        ),
      ),
    );
  }
}
