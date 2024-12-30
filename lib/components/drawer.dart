import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/components/mydrawerheader.dart';

class MyDrawer extends StatelessWidget {
  final List<Map<String, dynamic>> screensList;
  const MyDrawer({
    super.key,
    required this.screensList,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const MyDrawerHeader(
            profileImage:
                "https://images.pexels.com/photos/10542445/pexels-photo-10542445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            profileName: "Arif Alvi",
            email: "arif@gmail.com",
            textColor: Colors.white,
            drawerHeaderBackground: Color.fromARGB(255, 132, 132, 255),
          ),
          ...screensList.map((e) {
            return ListTile(
              leading: FaIcon(e["icon"]),
              title: Text(e["title"]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => e["screens"]));
              },
            );
          })
        ],
      ),
    );
  }
}