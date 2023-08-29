import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import 'package:project_app/presentaion/views/serviceprovider/domain/model/service_provider_model.dart';

class CustomDesignerDetailes extends StatelessWidget {
  final ServiceProviderModel model;
  const CustomDesignerDetailes({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 428,
          height: 270,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.network(
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
                model.projects[0].image,
                width: 428,
                height: 220,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 18,
                left: 170,
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.blue,
                  ),
                  child: Center(
                    child: Image.network(
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                      model.image,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -25,
                left: 110,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    model.name,
                    style: const TextStyle(
                      fontSize: 33,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
