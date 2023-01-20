import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_in_flutter/home_screen.dart';
import 'package:provider_in_flutter/provider/count_provider.dart';
import 'package:provider_in_flutter/screen/count_example.dart';
import 'package:provider_in_flutter/stateful_widget.dart';
import 'package:provider_in_flutter/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CountExample(),
      ),
    );
  }
}
