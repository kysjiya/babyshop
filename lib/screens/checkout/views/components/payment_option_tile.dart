// Payment Option Tile
import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';
import 'package:shop/screens/checkout/views/components/payment_info.dart';

class PaymentOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const PaymentOptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 32, color: primaryColor),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.pushNamed(context, paymentMethodInforoute);
      },
    );
  }
}
