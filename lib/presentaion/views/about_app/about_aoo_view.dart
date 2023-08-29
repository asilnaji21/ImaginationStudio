import 'package:flutter/material.dart';
import 'package:project_app/presentaion/widgets/contact_button.dart';

class AbouteTheAppView extends StatelessWidget {
  const AbouteTheAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About the App",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w300, fontSize: 35),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              """
we are a fully integrated manufacturer Established out of a desire to bring a unique customer-oriented approach to the contract marketplace, we design durable, elegant furniture that excels at meeting all core requirements. Combined with a huge array of options, choices, price points, and scales, our customers can specify the best possible solution.""",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 21),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              """ We are recognized as a market leader in the quality, design, and engineering of contract furniture products, focusing on a wide range of markets and designs. Thousands of product installations backed by an industry- leading warranty and a dedication to outstanding customer service.
""",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 21),
            ),
            const SizedBox(
              height: 30,
            ),
            ContactButton(
              icon: Icons.email_outlined,
              onPressed: () {},
              title: "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            ContactButton(
              icon: Icons.tab,
              onPressed: () {},
              title: "Whatsapp",
            )
          ],
        ),
      ),
    );
  }
}
