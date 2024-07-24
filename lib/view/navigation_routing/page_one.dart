import 'package:flutter/material.dart';
import 'package:flutter_sample_project/view/navigation_routing/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageTwo())
              ); // Removed extra closing parenthesis here
            },
            child: Text("Go to Page Two")
        ),
      ),
    );
  }
}