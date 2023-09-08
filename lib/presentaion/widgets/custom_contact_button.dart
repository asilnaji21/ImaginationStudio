import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../resources/color_manager.dart';

class CustomContactButton extends StatelessWidget {
  String phone;
  CustomContactButton({
    required this.phone,
    super.key,
  });
// دالة لفتح تطبيق الهاتف والاتصال برقم معين
  void _launchPhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("errrrrrrrrrror");
    }
  }

  void _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'cs-reply@amazon.com',
      // استبدل بهذا البريد الإلكتروني الذي تريد الارتباط به
      queryParameters: {'subject': 'الموضوع هنا', 'body': 'الرسالة هنا'},
    );
    final String _emailLaunchUriString = _emailLaunchUri.toString();
    if (await canLaunch(_emailLaunchUriString)) {
      await launch(_emailLaunchUriString);
    } else {
      // يمكنك تنفيذ ما تريده هنا في حالة فشل فتح التطبيق البريدي
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
              _launchEmail(); // دعوة الدالة لفتح التطبيق البريدي
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
                _launchPhoneCall(
                    phone); // استبدل 'رقم الهاتف هنا' بالرقم الذي تريد الاتصال به
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
