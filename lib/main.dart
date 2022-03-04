
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome flutter'),
        ),
        body: const Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}
