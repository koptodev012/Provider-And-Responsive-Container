import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_design_flutter/controller/textfield_controller.dart';

class TextFieldFlutter extends StatelessWidget {
  const TextFieldFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    // -----------------------------
    final textFieldController =
        Provider.of<Textfield_Controller>(context, listen: false);
    // =============================
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (val) {
                textFieldController.setName1(val);
              },
              decoration: const InputDecoration(hintText: "Enter name"),
            ),
            Consumer<Textfield_Controller>(builder: (context, value, child) {
              return Text("Your text is: ${value.getName1}");
            }),
            TextFormField(
              controller: textFieldController.usernameController,
              decoration: const InputDecoration(hintText: "Enter name"),
            ),
            Consumer<Textfield_Controller>(builder: (context, value, child) {
              return Text("Your text is: ${value.usernameController.text}");
            }),
          ],
        ),
      ),
    );
  }
}
