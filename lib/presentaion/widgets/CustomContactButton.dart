import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomContactButton extends StatelessWidget {
  const CustomContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 102,
            height: 36,
            decoration: BoxDecoration(
              color: ColorManager.primaryButtonColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  'Message',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 37,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
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
      ),
    );
  }
}
