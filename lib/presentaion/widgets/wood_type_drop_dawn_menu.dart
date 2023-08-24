import 'package:flutter/material.dart';

class CustomWoodTypeDropDawnButton extends StatefulWidget {
  const CustomWoodTypeDropDawnButton({
    super.key,
  });

  @override
  State<CustomWoodTypeDropDawnButton> createState() =>
      _CustomWoodTypeDropDawnButton();
}

class _CustomWoodTypeDropDawnButton
    extends State<CustomWoodTypeDropDawnButton> {
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
              "Choose",
              style: TextStyle(fontSize: 20, fontFamily: "Aldhabi"),
            ),
          ),
          isExpanded: true,
          value: _selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue;
            });
          },
          items: <String>[
            " خشب الموسكى (Pine wood)",
            "خشب الزان ( Beech)",
            "خشب البلوط (الأرو) (Oak)",
            "الصنوبر (Pine)",
            "خشب الساج ( Teak )",
            "خشب الجوز ( Walnut)",
            "خشب الساندويش (sandwich)"
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(value,
                    style: const TextStyle(fontSize: 14, fontFamily: "Arial")),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
