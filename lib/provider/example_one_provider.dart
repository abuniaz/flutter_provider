import 'package:flutter/material.dart';

class FirstExampleProvider extends StatefulWidget {
  const FirstExampleProvider({super.key});

  @override
  State<FirstExampleProvider> createState() => _FirstExampleProviderState();
}

class _FirstExampleProviderState extends State<FirstExampleProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Privider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
