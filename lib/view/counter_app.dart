import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  incrementMethod(){
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed this button this many times"),
            Text("${count}")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        incrementMethod();
      },
      child: Icon(Icons.add),),
    );
  }
}
