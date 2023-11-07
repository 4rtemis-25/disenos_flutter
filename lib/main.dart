import 'package:diseno_1/screens/home_screen.dart';
import 'package:diseno_1/screens/primer_diseno.dart';
import 'package:diseno_1/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'primer_diseno': ( _ ) => const PrimerDisenoScreen(),
        'scroll_screen': ( _ ) => const ScrollScreen(),
        'home_screen': ( _ ) => const HomeScreen(),
      },
    );
  }
}