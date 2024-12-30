import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class AddressPage extends StatelessWidget {
  final List<Map<String, dynamic>> addresses = [
    {
      "icon": Icons.home,
      "name": "My home",
      "address": "Sophi Nowakowska, Zabiniec 12/222, 31-215 Cracow, Poland",
      "phone": "+79 123 456 789",
      "default": true,
      "mapPinColor": primaryColor,
    },
    {
      "icon": Icons.work,
      "name": "Office",
      "address": "Rio Nowakowska, Zabiniec 12/222, 31-215 Cracow, Poland",
      "phone": "+79 123 456 789",
      "default": false,
      "mapPinColor": primaryColor,
    },
    {
      "icon": Icons.family_restroom,
      "name": "Grandmother’s home",
      "address": "Rio Nowakowska, Zabiniec 12/222, 31-215 Cracow, Poland",
      "phone": "+79 123 456 789",
      "default": false,
      "mapPinColor": primaryColor,
    },
  ];

  // void _editAddress(BuildContext context, String name) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(content: Text('Edit Address: $name')),
  //   );
  // }

  void _deleteAddress(BuildContext context, String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Delete Address: $name')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address', style: TextStyle(color: whiteColor, fontSize: 18)),
        backgroundColor: primaryColor,
        elevation: 0,
        leading:  SizedBox(
                    width: 40,
                    child: BackButton(color: whiteColor,),
                  ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Add New Address Button
            OutlinedButton.icon(
              icon: const Icon(Icons.add_location_alt, color: primaryColor),
              label: const Text('Add new address', style: TextStyle(color: primaryColor)),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            // Address List
            Expanded(
              child: ListView.builder(
                itemCount: addresses.length,
                itemBuilder: (context, index) {
                  final address = addresses[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: address['default']
                          ? const BorderSide(color: primaryColor)
                          : BorderSide.none,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: address['default']
                            ? primaryColor.withOpacity(0.1)
                            : primaryColor.withOpacity(0.1),
                        child: Icon(
                          address['icon'],
                          color: address['default'] ? primaryColor : primaryColor,
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            address['name'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          if (address['default'])
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Chip(
                                label: Text('Default',
                                    style: TextStyle(color: Colors.white)),
                                backgroundColor: primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: 6),
                              ),
                            ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(address['address']),
                          const SizedBox(height: 4),
                          Text(address['phone']),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () =>
                               (context, address['name']),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () =>
                                _deleteAddress(context, address['name']),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
