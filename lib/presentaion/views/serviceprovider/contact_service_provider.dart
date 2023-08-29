import 'package:flutter/material.dart';
import 'package:project_app/config/constant.dart';
import 'package:project_app/presentaion/views/serviceprovider/domain/model/service_provider_model.dart';

import '../../widgets/custom_image_stack_contact_service_provider.dart';
import '../../widgets/search_box_custom.dart';

class ServiceProvider extends StatefulWidget {
  const ServiceProvider({super.key});

  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  late List<ServiceProviderModel>? servicesProviderList;
  @override
  void initState() {
    super.initState();
    getServicesProvider();
  }

  TextEditingController searchTextController = TextEditingController();

  List<ServiceProviderModel> getServicesProvider() {
    servicesProviderList = Constant.serviceProvider
        .where((element) => element.name
            .toLowerCase()
            .contains(searchTextController.text.toLowerCase()))
        .toList();
    return servicesProviderList!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBox(
            controller: searchTextController,
            onSubmitted: (p0) {
              setState(() {
                getServicesProvider();
              });
            },
            onChanged: (p0) {
              setState(() {
                getServicesProvider();
              });
            },
          ),
          Expanded(
            child: servicesProviderList != null &&
                    servicesProviderList!.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return CustomImageStackContactServiceProvider(
                          model: servicesProviderList![index],
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: servicesProviderList!.length,
                    ),
                  )
                : const Center(
                    child: Text(
                      "No Designer Found",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
