import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomContactButton extends StatelessWidget {
  const CustomContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 102,
          height: 36,
          decoration: BoxDecoration(
            color: ColorManager.primaryButtonColor,
        
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                color: Colors.black,
              ),
              SizedBox(width: 8),
              Text(
                'Message',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      const   SizedBox(width: 10),
        Container(
          width: 37,
          height: 36,
          decoration:const  BoxDecoration(
            color: ColorManager.primaryButtonColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}