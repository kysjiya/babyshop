import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class MyDrawerHeader extends StatelessWidget {
  final String? profileImage;
  final String? profileName;
  final String? email;
  final Color? drawerHeaderBackground;
  final Color? textColor;
  const MyDrawerHeader(
      {super.key,
      this.profileImage,
      this.profileName,
      this.email,
      this.drawerHeaderBackground,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: whiteColor),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(profileImage ??
                "https://images.pexels.com/photos/10542445/pexels-photo-10542445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            profileName ?? "",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textColor ?? const Color.fromARGB(246, 7, 7, 7),
            ),
          ),
          Text(
            email ?? "",
            style: TextStyle(
              color: textColor ?? const Color.fromARGB(246, 7, 7, 7),
            ),
          ),
        ],
      ),
    );
  }
}