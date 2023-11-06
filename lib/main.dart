import 'package:diseno_1/screens/primer_diseno.dart';
import 'package:diseno_1/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'primer_diseno': ( _ ) => const PrimerDisenoScreen(),
        'scroll_screen': ( _ ) => const ScrollScreen()
      },
    );
  }
}