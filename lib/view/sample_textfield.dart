import 'package:flutter/material.dart';

class SampleTextfield extends StatefulWidget {
  const SampleTextfield({super.key});

  @override
  State<SampleTextfield> createState() => _SampleTextfieldState();
}

class _SampleTextfieldState extends State<SampleTextfield> {
  @override
  Widget build(BuildContext context) {
    String value = "";

    TextEditingController controller = TextEditingController();
    bool isVisible = true;
    var emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Tutorial"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              onChanged: (text) {
                value = text;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                  controller: emailController,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Enter email",
                    border: OutlineInputBorder(),
                      suffixIcon: isVisible
                          ? IconButton(
                              onPressed: () {}, icon: Icon(Icons.visibility))
                          : IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_off)))),
            ),

            TextFormField(

            )
          ],
        ),
      ),
    );
  }
}
