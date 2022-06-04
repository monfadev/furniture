import 'package:flutter/material.dart';
import 'package:furniture/ui/screens/main_screen.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      home: MainScreen(),
    );
  }
}
