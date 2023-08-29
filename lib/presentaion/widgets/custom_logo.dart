import 'package:flutter/widgets.dart';
import 'package:project_app/presentaion/resources/image_assets.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 150),
      alignment: Alignment.topCenter,
      child: Image.asset(
        ImagePath.logo,
        //s   fit: BoxFit.cover,
        width: 300,
        height: 100,
      ),
    );
  }
}
