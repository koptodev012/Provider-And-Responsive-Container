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
        backgroundColor: Colors.amber,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
                "assets/images/pexels-felix-mittermeier-1039083.jpg"),
            opacity: 0.3,
            isAntiAlias: true,
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (val) {
                  textFieldController.setName1(val);
                },
                decoration: const InputDecoration(
                  hintText: "Enter name",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Consumer<Textfield_Controller>(builder: (context, value, child) {
                return Text(
                  "Your text is: ${value.getName1}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                );
              }),
              TextFormField(
                controller: textFieldController.usernameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Enter name",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Consumer<Textfield_Controller>(builder: (context, value, child) {
                return Text(
                  "Your text is: ${value.usernameController.text}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
