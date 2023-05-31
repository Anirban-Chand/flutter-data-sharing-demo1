import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String msg;

  const SecondScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination Screen'),
      ),
      body: Center(
        child: Text(msg),
      ),
    );
  }
}
