import 'package:flutter/material.dart';

class MyOrderView extends StatefulWidget {
  const MyOrderView({Key? key}) : super(key: key);

  @override
  _MyOrderViewState createState() => _MyOrderViewState();
}

class _MyOrderViewState extends State<MyOrderView> {
  String selectedValue = "Orders by date"; // القيمة المحددة ابتدائيًا

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 77, horizontal: 33),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 374.0,
              height: 48.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontFamily: "Aldhabi",
                    fontSize: 25),
                value: selectedValue,
                items: <String>[
                  'Orders by date',
                  ' Placed Orders',
                  ' Orders in process',
                  'Failed to charge',
                  'Shipped Orders',
                  'Canceled Orders'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
