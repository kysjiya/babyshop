import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: const SizedBox(
                    width: 40,
                    child: BackButton(),
                  ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Done',
              style: TextStyle(color: whiteColor, fontSize: 16),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with your image
            ),
            SizedBox(height: 10),
            Text(
              'Sepide Moqadasi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Sepide@piqo.design',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 30),
            ProfileInfoRow(title: 'Name', value: 'Sepide'),
            ProfileInfoRow(title: 'Date of birth', value: 'Oct 31, 1997'),
            ProfileInfoRow(title: 'Phone number', value: '+1–202–555–0162'),
            ProfileInfoRow(title: 'Gender', value: 'Female'),
            ProfileInfoRow(title: 'Email', value: 'Sepide@piqo.design'),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String title;
  final String value;

  ProfileInfoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
