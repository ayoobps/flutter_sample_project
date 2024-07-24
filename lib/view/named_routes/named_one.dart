import 'package:flutter/material.dart';

class NamedOne extends StatelessWidget {
  const NamedOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named One'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second'); // Use pushNamed here
            },
            child: Text('Go to Named Two')
        ),
      ),
    );
  }
}