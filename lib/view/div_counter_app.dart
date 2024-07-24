import 'package:flutter/material.dart';

class DivCounterApp extends StatefulWidget {
  const DivCounterApp({super.key});

  @override
  State<DivCounterApp> createState() => _DivCounterAppState();
}

class _DivCounterAppState extends State<DivCounterApp> {
  int count = 0;

  divCounterAppMethod() {
    for (int i = 5; i <= 20; i++) {
      if (i % 5 == 0) {
        setState(() {
          count = i;
        });
      }
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Div Counter "), Text("${count}")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          divCounterAppMethod();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
