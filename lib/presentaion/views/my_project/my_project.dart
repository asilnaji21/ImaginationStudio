import 'package:flutter/material.dart';

class MyProjecstView extends StatefulWidget {
  const MyProjecstView({super.key});

  @override
  State<MyProjecstView> createState() => _MyProjecstView();
}

class _MyProjecstView extends State<MyProjecstView> {
  var designer = Constant.serviceProvider[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: designer.projects.length,
              itemBuilder: (context, index) => CustomDesignerProject(
                designer: designer,
                index: index,
              ),
            ),
          ),
          CustomElevatedButton(
            color: ColorManager.primaryMainColor,
            text: "Upload project",
            colortext: Colors.white,
            onPressed: () =>
                Navigator.of(context).pushNamed(RouteConstants.uploadProject),
          ),
        ],
      ),
    );
  }
}
