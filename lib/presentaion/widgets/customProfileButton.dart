import 'package:flutter/material.dart';

ElevatedButton customProfileButton({onPressed, icon, title}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.black.withOpacity(.5),
        ),
      ),
    ),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(title,
            style: const TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w300))
      ],
    ),
  );
}
