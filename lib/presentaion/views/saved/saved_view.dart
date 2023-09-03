import 'package:flutter/material.dart';
import 'package:project_app/app_provider.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_saved_page.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});
  @override
  Widget build(BuildContext context) {
    var favorite = Provider.of<AppProvider>(context).favoriteList;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Saved",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 35),
        ),
      ),
      body: favorite.isEmpty
          ? const Center(
              child: Text(
                "No Item Found",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: favorite.length,
                  itemBuilder: (context, index) {
                    final product = favorite[index];
                    return CustomSavedPage(
                      productModel: product,
                    );
                  }),
            ),
    );
  }
}
