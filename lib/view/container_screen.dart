import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("Screen Height: $height");
    print("Screen Width: $width");
// ----------------------------------------
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: height * 0.15,
              width: width * 0.64,
              color: Colors.orange,
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: height * 0.23,
              width: width * 0.64,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * 0.15,
                    width: width * 0.32,
                    color: Colors.red,
                  ),
                  Container(
                    height: height * 0.15,
                    width: width * 0.32,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.15,
              width: width * 0.64,
              color: Colors.grey,
            ),
          ],
        ),
      )),
    );
  }
}
