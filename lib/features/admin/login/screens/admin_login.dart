import 'package:flutter/material.dart';

class ALoginScn extends StatelessWidget {
  const ALoginScn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Buddy'),
      ),
      body: const Column(
        children: [
          Center(
            child: Text('Admin'),
          )
        ],
      ),
    );
  }
}