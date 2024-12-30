
// Payment Option Tile
import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class PaymentOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onSelect;

  const PaymentOptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onSelect, 
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 32, color: primaryColor),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Radio<String>(
        activeColor: primaryColor,
        value: title,
        groupValue: selected ? title : null,
        onChanged: (value) => onSelect(),
      ),
      onTap: onSelect,
    );
  }
}
