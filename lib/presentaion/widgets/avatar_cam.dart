import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class AvatarCamera extends StatelessWidget {
  const AvatarCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 64,
          backgroundImage: AssetImage('assets/photo-camera.png'),
          backgroundColor: ColorManager.primaryMainEnableColor,
        ),
        Positioned(
            bottom: -14,
            left: 94,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo),
            ))
      ],
    );
  }
}
