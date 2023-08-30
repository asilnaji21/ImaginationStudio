import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';

import '../../resources/color_manager.dart';
import '../../widgets/elevated_button_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';
import '../../widgets/wood_type_drop_dawn_menu.dart';

class LocalManufacturesRoute extends StatefulWidget {
  const LocalManufacturesRoute({super.key});

  @override
  State<LocalManufacturesRoute> createState() => _LocalManufacturesRoute();
}

class _LocalManufacturesRoute extends State<LocalManufacturesRoute> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();
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
              //  showLabel: true,
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

  String? imagePath = "";
  String? imagePath2 = "";

  List<String> projectPhotoURLs = [];

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath = pickedFile.path;

      setState(() {
        if (pickedFile != null) {
          imagePath = pickedFile.path;
        } else {
          debugPrint('No image selected.');
        }
        projectPhotoURLs.add(imagePath!);
      });
    } else {}
  }

  Future<void> _pickGalleryImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath2 = pickedFile.path;

      setState(() {
        if (pickedFile != null) {
          imagePath2 = pickedFile.path;
        } else {
          debugPrint('No image selected.');
        }
        projectPhotoURLs.add(imagePath2!);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
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
              const CustomText(text: "Name"),
              CustomTextFormField(
                controller: nameController,
                icon: Icons.person_outline,
                nameText: "Enter name",
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Phone"),
              CustomTextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                icon: Icons.phone,
                nameText: "+972-1234-56789",
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Wood Type"),
              const CustomWoodTypeDropDawnButton(),
              const SizedBox(
                height: 18,
              ),
              const Row(
                children: [
                  CustomText(text: "Length"),
                  SizedBox(
                    width: 130,
                  ),
                  CustomText(text: "Width"),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: lengthController,
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
                      controller: widthController,
                      keyboardType: TextInputType.number,
                      nameText: "Enter width",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Color"),
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
              const CustomText(text: "Upload image"),
              OutlinedButton(
                onPressed: _pickImage,
                style: OutlinedButton.styleFrom(
                  maximumSize: const Size(300, 55),
                  padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                  side: const BorderSide(
                      color: ColorManager.borderColor), // تخصيص لون الحدود
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "        ",
                      style: TextStyle(
                          fontSize: 29,
                          fontFamily: "Aldhabi",
                          color: ColorManager.blackColor,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.drive_folder_upload,
                      color: ColorManager.textColor2,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Upload gallery"),
              OutlinedButton(
                onPressed: _pickGalleryImage,
                style: OutlinedButton.styleFrom(
                  maximumSize: const Size(300, 55),
                  padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                  side: const BorderSide(
                      color: ColorManager.borderColor), // تخصيص لون الحدود
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "        ",
                      style: TextStyle(
                          fontSize: 29,
                          fontFamily: "Aldhabi",
                          color: ColorManager.blackColor,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.drive_folder_upload,
                      color: ColorManager.textColor2,
                    )
                  ],
                ),
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
                        onPressed: () {
                          if (nameController.text.isEmpty ||
                              phoneController.text.isEmpty ||
                              lengthController.text.isEmpty ||
                              widthController.text.isEmpty ||
                              textEditingController.text.isEmpty ||
                              imagePath == "" ||
                              imagePath2 == "" ||
                              projectPhotoURLs.isEmpty) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text(
                                    "Error",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 25),
                                  ),
                                  content: const Text(
                                    "Please fill in all input fields.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 28),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        "OK",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            setState(() {});
                            Navigator.pop(context);
                          }
                        },
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
