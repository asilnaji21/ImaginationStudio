import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../resources/color_manager.dart';

class CustomContactButton extends StatelessWidget {
  String phone;
  String email;

  CustomContactButton({
    required this.phone,
    required this.email,
    super.key,
  });
// دالة لفتح تطبيق الهاتف والاتصال برقم معين
  Future<void> makePhoneCall(String phoneNumber, context) async {
    if (await canLaunchUrl(
      Uri.parse(phoneNumber),
    )) {
      await launchUrl(Uri.parse(phoneNumber));
    } else {
      showCustomDialog(context, 'Something went wrong.');
    }
  }
// دالة لفتح تطبيق البريد وارسال رسالة

  Future<void> sendAnEmail(String url, context) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              sendAnEmail(
                  "mailto:$email", context); // دعوة الدالة لفتح التطبيق البريدي
            },
            child: Container(
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
              onPressed: () {
                makePhoneCall("tel:$phone", context);
              },
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

void showCustomDialog(context, text) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error'),
        content: Text(text),
        actions: <Widget>[
          MaterialButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
