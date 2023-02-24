import 'package:flutter/material.dart';

class NotifyListnerScreen extends StatelessWidget {
  NotifyListnerScreen({super.key});

  ValueNotifier<int> _center = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless to Statefull'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Stateless',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
