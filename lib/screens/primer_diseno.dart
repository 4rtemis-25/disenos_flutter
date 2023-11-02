import 'package:flutter/material.dart';

class PrimerDisenoScreen extends StatelessWidget {
   
  const PrimerDisenoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/black-hole.jpg')),
          _Title(),

          _ButtonSection()
        ],
        //  child: Image(image: AssetImage('assets/black-hole.jpg'))
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Black Hole', style: TextStyle( fontWeight: FontWeight.bold ),),
              Text('Black Hole, Black Hole', style: TextStyle( color: Colors.black45 ),)
            ],
          ),

          Expanded(child: Container()),

          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Icon(Icons.call)
          ],
        ),
        Column(
          children: [
            Text('CALL')
          ],
        )
      ],
    );
  }
}