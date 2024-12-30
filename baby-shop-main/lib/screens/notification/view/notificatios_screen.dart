import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {"icon": Icons.settings, "color": Colors.red, "text": "Molestie libero neque sem cras enim, amet.", "time": "2 min ago"},
    {"icon": Icons.store, "color": Colors.amber, "text": "Egestas nisl sapien amet lectus molestie id euismod.", "time": "6 hours ago"},
    {"icon": Icons.settings, "color": Colors.blue, "text": "Ullamcorper ac ornare ipsum ut sed integer turpis felis viverra…", "time": "4 days ago"},
    {"icon": Icons.place, "color": Colors.green, "text": "Facilisis in proin ultrices in tincidunt adipiscing turpis praesent non.", "time": "5 day ago"},
    {"icon": Icons.local_shipping, "color": Colors.orange, "text": "Pellentesque proin risus pellentesque odio a.", "time": "1 week ago"},
    {"icon": Icons.settings, "color": Colors.red, "text": "Enim, proin ac ut nullam nec.", "time": "1 week ago"},
    {"icon": Icons.settings, "color": Colors.red, "text": "Molestie libero neque sem cras enim, amet.", "time": "1 week ago"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: notification['color'].withOpacity(0.1),
                child: Icon(notification['icon'], color: notification['color']),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification['text'],
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 4),
                    Text(
                      notification['time'],
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => Divider(height: 32),
      ),
    );
  }
}
