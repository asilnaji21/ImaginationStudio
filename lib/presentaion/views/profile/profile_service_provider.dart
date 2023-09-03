
import 'package:flutter/material.dart';

import '../../../app/routes/route_constants.dart';

import '../../widgets/custom_profile_button.dart';

class ProfileServiceProviderView extends StatelessWidget {
  const ProfileServiceProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "My profile",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/man.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Khaled Ali",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w200),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.edit_note_sharp,
                onPressed: () {},
                title: "Edit information"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.production_quantity_limits,
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.myCartRoute);
                },
                title: "My Project"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.info_rounded,
                onPressed: () {},
                title: "About the app"),
            const SizedBox(
              height: 30,
            ),
            customProfileButton(
                icon: Icons.logout, onPressed: () {}, title: "Log out"),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
