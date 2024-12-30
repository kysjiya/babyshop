import 'package:flutter/material.dart';
import 'package:shop/components/card_info.dart';
import 'package:shop/entry_point.dart';
import 'package:shop/route/route_constants.dart';
import 'package:shop/route/router.dart' as router;
import 'package:shop/route/screen_export.dart';
import 'package:shop/screens/checkout/views/cartscreen_2.dart';
import 'package:shop/screens/checkout/views/payment_methods.dart';
import 'package:shop/screens/checkout/views/components/extra.dart';
import 'package:shop/screens/product/views/components/product_desc_card.dart';
// import 'package:shop/screens/onbording/views/onbording_screnn.dart';
import 'package:shop/theme/app_theme.dart';



void main() {
  runApp(const MyApp());
}

// Thanks for using our template. You are using the free version of the template.
// 🔗 Full template: https://theflutterway.gumroad.com/l/fluttershop

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baby Shop Hub',
      theme: AppTheme.lightTheme(context),
      // Dark theme is inclided in the Full template
      themeMode: ThemeMode.light,
      onGenerateRoute: router.generateRoute,
      home: EntryPoint(),
    );
  }
}
