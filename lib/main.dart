import 'package:flutter/material.dart';
import 'package:provider_in_flutter/home_screen.dart';
import 'package:provider_in_flutter/stateful_widget.dart';
import 'package:provider_in_flutter/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WhyProvider(),
    );
  }
}
