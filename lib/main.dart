import 'package:data_sharing_demo1/second_screen.dart';
import 'package:data_sharing_demo1/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Sharing Using Constructor Parameters Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SourceScreen(),
    );
  }
}

class SourceScreen extends StatefulWidget {
  const SourceScreen({super.key});

  @override
  State<SourceScreen> createState() => _SourceScreenState();
}

class _SourceScreenState extends State<SourceScreen> {
  final TextEditingController _controller1 =
      TextEditingController(text: 'Default Message for Second Screen');

  final TextEditingController _controller2 =
      TextEditingController(text: 'Default Message for Third Screen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: _controller1,
          ),
          ElevatedButton(
            child: const Text('Go To Second Screen'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SecondScreen(msg: _controller1.text),
                ),
              );
            },
          ),
          TextField(
            controller: _controller2,
          ),
          ElevatedButton(
            child: const Text('Go To Third Screen'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ThirdScreen(data: _controller2.text),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
