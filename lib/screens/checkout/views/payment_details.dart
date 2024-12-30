import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/checkout/views/components/payment_info.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(
                    width: 40,
                    child: BackButton(color: whiteColor,),
                  ),
        title: Text('Payment Details'),
      ),
      body: PaymentMethodPage(),
    bottomNavigationBar: ElevatedButton(onPressed: (){}, child: Text("Pay"),
    )
    );
  }
}
