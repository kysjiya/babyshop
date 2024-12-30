// import 'package:flutter/material.dart';

// const primaryColor = Colors.blue; // Example primary color

// class CheckoutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Checkout')),
//       body: Column(
//         children: [
//           // Your content above (e.g., products list or other info)
//           const Spacer(), // Push everything up to allow space for the bottom section
//         ],
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             const Divider(),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                       Text('Subtotal', style: TextStyle(fontSize: 14)),
//                       Text('Rs. 264', style: TextStyle(fontSize: 14)),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                       Text('Total Amount',
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.bold)),
//                       Text('Rs. 264',
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                   SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         padding: const EdgeInsets.symmetric(vertical: 20),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       onPressed: () {
//                         // Handle pay button press
//                       },
//                       child: const Text(
//                         'Pay',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CheckoutPage(),
//   ));
// }
