import 'package:flutter/material.dart';
import 'Pages/dashboard.dart';

void main() {
  runApp(ByteBankApp());
}

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ByteBank app',
      home: HomePage(title: 'ByteBank'),
    );
  }
}
