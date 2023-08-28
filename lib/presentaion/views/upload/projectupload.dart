import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class UpLoadProjectView extends StatefulWidget {
  @override
  State<UpLoadProjectView> createState() => _UpLoadProjectViewState();
}

class _UpLoadProjectViewState extends State<UpLoadProjectView> {
  bool isInfoVisible = false;

  void toggleInfo() {
    setState(() {
      isInfoVisible = !isInfoVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const SizedBox(
        height: 22,
      ),
      Container(
        width: 428,
        height: 237,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/project.jpg'),
          fit: BoxFit.cover,
        )),
      ),
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: const Text(
                'Sweet Home Project',
                style: TextStyle(
                  fontSize: 49,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.blue,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/woman.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Kayan Ali',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
                width: 300,
                height: 88,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.textColor2,
                    width: 2.0, // سمك الحدود
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Info",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: toggleInfo,
                        child: Icon(
                          isInfoVisible
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 40,
                        ),
                      ),
                    ),
                    if (isInfoVisible)
                      Container(
                        padding: EdgeInsets.all(16.0),
                        color: Colors.black,
                        child: Text(
                          "I will help you choose the best furniture for your home, and I will be available for any consultation.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                  ],
                ))
          ],
        ),
      )
    ]));
  }
}
