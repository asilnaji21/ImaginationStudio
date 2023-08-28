import 'package:flutter/material.dart';

class MyOrderView extends StatefulWidget {
  MyOrderView({Key? key}) : super(key: key);

  @override
  _MyOrderViewState createState() => _MyOrderViewState();
}

class _MyOrderViewState extends State<MyOrderView> {
  String selectedValue = "Orders by date";
  bool showRadioButtons = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 77, horizontal: 33),
        child: Column(
          children: <Widget>[
            Container(
              width: 374.0,
              height: 48.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                value: selectedValue,
                items: <String>[
                  'Orders by date',
                  ' Placed Orders',
                  ' Orders in process',
                  'Failed to charge',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                
                    showRadioButtons = true;
                  });
                },
              ),
            ),
            if (showRadioButtons) 
              Column(
                children: <Widget>[
                  RadioListTile<String>(
                    title: Text(
                      'خيار 1',
                      style: TextStyle(fontSize: 36),
                    ),
                    value: 'خيار 1',
                    groupValue: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'خيار 2',
                      style: TextStyle(fontSize: 36),
                    ),
                    value: 'Placed Orders',
                    groupValue: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'خيار 3',
                      style: TextStyle(fontSize: 36),
                    ),
                    value: 'Orders in process',
                    groupValue: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'خيار 4',
                      style: TextStyle(fontSize: 36),
                    ),
                    value: 'Failed to charge',
                    groupValue: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}


