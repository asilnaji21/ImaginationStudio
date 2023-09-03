import 'package:flutter/material.dart';
import 'package:project_app/presentaion/views/service_provider_detailes/service_provider_detailes.dart';
import 'package:project_app/presentaion/views/serviceprovider/domain/model/service_provider_model.dart';
import 'package:project_app/presentaion/widgets/custom_contact_button.dart';

import '../resources/color_manager.dart';

class CustomImageStackContactServiceProvider extends StatelessWidget {
  final ServiceProviderModel model;
  const CustomImageStackContactServiceProvider({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AboutMeView(model: model),
        ));
      },
      child: Column(
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
                  bottom: 15,
                  left: 18,
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
                  bottom: 0,
                  left: 95,
                  child: Text(
                    model.name,
                    style: const TextStyle(
                      fontSize: 33,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -5,
                  left: 80,
                  child: Row(
                    children: [
                      const Icon(Icons.location_pin),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        model.address,
                        style: const TextStyle(
                            fontSize: 18, color: ColorManager.textColor2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const CustomContactButton(),
          /* Container(
            padding: const EdgeInsets.only(left: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameProvider,
                  style: const TextStyle(
                    fontSize: 33,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_pin),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      locatioProvider,
                      style: const TextStyle(
                          fontSize: 18, color: ColorManager.textColor2),
                    ),
                  ],
                )
              ],
            ),
          ),
        */
        ],
      ),
    );
  }
}
