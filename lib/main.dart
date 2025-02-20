import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahul_test_getx/views/first_page.dart';
import 'package:rahul_test_getx/views/home_page.dart';
import 'package:rahul_test_getx/views/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      getPages: [
        GetPage(name: "/", page: ()=> HomePage()),
        GetPage(name: "/first_page", page: ()=> FirstPage()),
        GetPage(name: "/second_page", page: ()=> SecondPage()),
      ],
    );
  }
}