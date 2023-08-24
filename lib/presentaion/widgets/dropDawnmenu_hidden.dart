import 'package:flutter/material.dart';

class CustomDropDawnButton extends StatefulWidget {
  const CustomDropDawnButton({
    super.key,
  });

  @override
  State<CustomDropDawnButton> createState() => _CustomDropDawnButtonState();
}

class _CustomDropDawnButtonState extends State<CustomDropDawnButton> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: const Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              "Select category",
              style: TextStyle(fontSize: 20, fontFamily: "Aldhabi"),
            ),
          ),
          isExpanded: true,
          value: _selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue;
              print(newValue);
            });
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
                child: Text(value, style: const TextStyle(fontSize: 20)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
