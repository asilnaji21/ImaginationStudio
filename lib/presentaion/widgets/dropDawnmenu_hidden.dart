import 'package:flutter/material.dart';

class CustomDropDawnButton extends StatelessWidget {
  const CustomDropDawnButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: DropdownButtonHideUnderline(
        // Wrap the DropdownButton with DropdownButtonHideUnderline
        child: DropdownButton<String>(
          isExpanded: true,
          value: 'living rooms',
          onChanged: (String? newValue) {
            // Handle the selection here
            print(newValue);
          },
          items: <String>[
            'living rooms',
            'bedroom furniture',
            'Dining room furniture',
            'Garden and balcony furniture'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(value),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
