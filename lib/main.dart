// import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_app1/product_listing_screen.dart';
import 'package:sample_app1/profile_screen.dart';
// import 'package:sample_app1/homepage.dart';
// import 'package:sample_app1/product_listing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "Open Fashion",
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: IndexedStack(index: currentIndex,
            children: [ProductListingScreen(), ProfileScreen()]),
            bottomNavigationBar: BottomNavigationBar(
              
              currentIndex: currentIndex,
              onTap: (value){
                
                setState(() {
                  currentIndex =value;
                });
                
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
