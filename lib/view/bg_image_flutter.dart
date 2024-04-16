import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: null /* add child content here */,
      ),
    );
  }
}
