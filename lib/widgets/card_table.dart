import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children:const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.stacked_line_chart_sharp, color: Colors.red, text: 'Más Vendidos',),
            _SingleCard(icon: Icons.restaurant_menu, color: Colors.pinkAccent, text: 'Cocina',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.local_laundry_service_rounded, color: Colors.deepPurpleAccent, text: 'Lavandería',),
            _SingleCard(icon: Icons.coffee_maker_outlined, color: Colors.greenAccent, text: 'Electrodomesticos',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.tv, color: Colors.indigo, text: 'TV´S',),
            _SingleCard(icon: Icons.border_all, color: Colors.orangeAccent, text: 'Otros',),
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(107, 68, 62, 0.694),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon( icon, size: 35, color: Colors.white, ),
                ),
                SizedBox( height: 10, ),
                Text(text , style: TextStyle( color: Colors.white, fontSize: 18 ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}