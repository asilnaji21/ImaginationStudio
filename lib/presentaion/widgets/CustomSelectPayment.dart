import 'package:flutter/material.dart';

class CustomSelectPayment extends StatefulWidget {
  @override
  _CustomSelectPaymentState createState() => _CustomSelectPaymentState();
}

class _CustomSelectPaymentState extends State<CustomSelectPayment> {
  String selectedPaymentMethod = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: const Text(
            'Cash ',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          value: 'Cash',
          groupValue: selectedPaymentMethod,
          onChanged: (String? value) {
            setState(() {
              selectedPaymentMethod = value!;
            });
          },
        ),
        RadioListTile(
          title: const Text(
            'Card ',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          value: 'Card',
          groupValue: selectedPaymentMethod,
          onChanged: (value) {
            setState(() {
              selectedPaymentMethod = value!;
            });
          },
        ),
      ],
    );
  }
}
