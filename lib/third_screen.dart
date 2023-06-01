import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  final String data;
  const ThirdScreen({super.key, required this.data});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Destination Screen'),
      ),
      body: Center(child: Text(widget.data)),
    );
  }
}
