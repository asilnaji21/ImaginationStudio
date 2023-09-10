import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import 'package:project_app/presentaion/widgets/elevated_button_custom.dart';
import 'package:project_app/presentaion/widgets/textformfiled_custom.dart';

class GetInTouch extends StatefulWidget {
  const GetInTouch({super.key});

  @override
  State<GetInTouch> createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        centerTitle: true,
        title: const Text(
          "Get in touch",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 35),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            CustomTextFormField(
              controller: nameController,
              nameText: "Name",
              icon: Icons.person_outline,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              controller: emailController,
              nameText: "Email",
              icon: Icons.email_outlined,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              controller: messageController,
              maxLines: 5,
              nameText: "Message",
              icon: Icons.message_outlined,
            ),
            const SizedBox(
              height: 18,
            ),
            CustomElevatedButton(
              height: 30,
              width: 220,
              color: ColorManager.primaryButtonColor,
              text: "Confirm",
              colortext: Colors.black,
              onPressed: () {
                if (nameController.text.isEmpty ||
                    nameController.text.isEmpty ||
                    emailController.text.isEmpty ||
                    messageController.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          "Error",
                          style: TextStyle(color: Colors.red, fontSize: 25),
                        ),
                        content: const Text(
                          "Please fill in all input fields.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 28),
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
            )
          ],
        ),
      ),
    );
  }
}
