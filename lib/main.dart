import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_design_flutter/controller/textfield_controller.dart';
import 'package:responsive_design_flutter/view/textfield_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // ---------------------------------------------------------------------
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Textfield_Controller()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TextFieldFlutter(),
      ),
    );
    // =====================================================================
  }
}
