import 'package:flutter/material.dart';

class NamedTwo extends StatelessWidget {
  const NamedTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Two'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Go Back')),
      ),
    );
  }
}
