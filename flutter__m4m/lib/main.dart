import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter__m4m/provider/cart_provider.dart';
import 'package:flutter__m4m/provider/product_provider.dart';
import 'package:flutter__m4m/vendor/views/auth/vendor_auth.dart';
import 'package:flutter__m4m/vendor/views/auth/vendor_register_screen.dart';
import 'package:flutter__m4m/vendor/views/screens/main_vendor_screen.dart';

import 'package:flutter__m4m/views/buyers/auth/register_screen.dart';
import 'package:flutter__m4m/views/buyers/main_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyARhMDY2KkqC0kmtICrL7A6Fsuf_jLEWjg",
      appId: "1:745707625175:android:9615b137c721ddebe42e92",
      messagingSenderId: "745707625175",
      projectId: "m4m-app-2b73d",
      storageBucket: "m4m-app-2b73d.appspot.com",
    ),
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) {
      return ProductProvider();
    }),
    ChangeNotifierProvider(create: (_) {
      return CartProvider();
    })
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Brand-Bold',
      ),
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}

