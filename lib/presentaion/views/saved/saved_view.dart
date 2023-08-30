import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../app_provider.dart';
import '../../widgets/CustomSavedPage.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: favorite.isEmpty
            ? const Center(
                child: Text(
                  "No Item Found",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              )
            : ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
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
