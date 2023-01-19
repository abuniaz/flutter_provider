import 'package:flutter/material.dart';
import 'dart:async';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
