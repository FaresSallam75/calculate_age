import 'package:calculate_age/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: "/",
       getPages: [
        GetPage(name: "/", page: ()=> const HomePage() )
       ],
    );

  }
}