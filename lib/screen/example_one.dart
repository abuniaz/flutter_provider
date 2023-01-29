import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_in_flutter/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Example"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1,
              value: provider.value,
              onChanged: (val) {
                value = val;
                setState(() {});
              }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(value)),
                  child: const Center(
                    child: Text("Container 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Colors.red.withOpacity(value)),
                  child: const Center(
                    child: Text("Container 2"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
