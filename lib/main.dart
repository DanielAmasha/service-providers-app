import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(ServiceProviderApp());
}

class ServiceProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

