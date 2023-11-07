import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Inventario De Productos', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),),
            SizedBox( height: 10, ),
            Text('Elija Una Categoria de Productos', style: TextStyle( fontSize: 16, color: Colors.white ),),
          ],
        ),
      )
    );
  }
}