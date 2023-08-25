import 'package:flutter/material.dart';

import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class LocalManufacturesRoute extends StatefulWidget {
  const LocalManufacturesRoute({super.key});

  @override
  State<LocalManufacturesRoute> createState() => _LocalManufacturesRoute();
}

class _LocalManufacturesRoute extends State<LocalManufacturesRoute> {
  Color selectedColor = Colors.transparent;
  TextEditingController textEditingController = TextEditingController();
  void changeColor(Color color) {
    setState(() {
      selectedColor = color;
      textEditingController.text = color.toString();
    });
  }

  void openColorPickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Choose a color',
            style: TextStyle(fontSize: 28),
          ),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: changeColor,
              showLabel: true,
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: ColorManager.borderColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Local Manufacture",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              CustomText(text: "Name"),
              CustomTextFormField(
                icon: Icons.person_outline,
                nameText: "Enter name",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Phone"),
              CustomTextFormField(
                keyboardType: TextInputType.phone,
                icon: Icons.phone,
                nameText: "+972-1234-56789",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Wood Type"),
              const CustomWoodTypeDropDawnButton(),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  CustomText(text: "Length"),
                  const SizedBox(
                    width: 130,
                  ),
                  CustomText(text: "Width"),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      keyboardType: TextInputType.number,
                      nameText: "Enter length",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      keyboardType: TextInputType.number,
                      nameText: "Enter width",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Color"),
              CustomTextFormField(
                controller: textEditingController,
                onPressed: openColorPickerDialog,
                readOnly: true,
                icon: Icons.palette,
                iconColor: Colors.purple,
                nameText: "Enter color",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Upload image"),
              CustomTextFormField(
                icon: Icons.drive_folder_upload,
                nameText: "",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Upload gallery"),
              CustomTextFormField(
                icon: Icons.drive_folder_upload,
                nameText: "",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    child: CustomElevatedButton(
                        height: 8,
                        width: 90,
                        onPressed: () {},
                        color: ColorManager.primaryMainColor,
                        text: "OK",
                        fontSize: 20,
                        colortext: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
