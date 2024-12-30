import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

import 'components/payment_option_tile.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String? _selectedPaymentMethod;

  void _handlePaymentSelection(String method, BuildContext context) {
    setState(() {
      _selectedPaymentMethod = method;
    });

   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('$method selected'),
      duration: Duration(seconds: 2),
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading:const SizedBox(
                    width: 40,
                    child: BackButton(color: whiteColor,),
                  ),
        title: const Text(
          'Select Payment Method',
          style: TextStyle(color: whiteColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Divider(height: 1),
          Expanded(
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Payment methods',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        PaymentOptionTile(
          icon: Icons.credit_card,
          title: 'Credit/Debit Card',
          subtitle: 'Credit/Debit Card',
          selected: _selectedPaymentMethod == 'Credit/Debit Card',
          onSelect: () => _handlePaymentSelection('Credit/Debit Card', context),
        ),
        PaymentOptionTile(
          icon: Icons.money,
          title: 'Cash on Delivery',
          subtitle: 'Cash on Delivery',
          selected: _selectedPaymentMethod == 'Cash on Delivery',
          onSelect: () => _handlePaymentSelection('Cash on Delivery', context),
        ),
      ],
    ),
  ),
),

                const SizedBox(height: 16),
                 ] 
                 ),
  
    );
          
  }
}

