import 'package:flutter/material.dart';

class PrimerDisenoScreen extends StatelessWidget {
   
  const PrimerDisenoScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/black-hole.jpg')),
          const _Title(),

          const _ButtonSection(),

          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
            child: const Text('Occaecat dolore adipisicing velit velit eu excepteur elit sunt cupidatat. Voluptate veniam aliquip magna cupidatat amet culpa elit. Elit ad et occaecat laboris quis mollit amet duis sint quis cupidatat est nisi quis. Non duis enim incididunt nulla ea sunt eu laborum ea esse veniam incididunt. Exercitation aliqua officia cupidatat elit anim nisi quis sit irure sunt.'),
          )
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(icon: Icons.call, text: 'Call',),
          _CustomButton(icon: Icons.location_on_sharp, text: 'Route',),
          _CustomButton(icon: Icons.share, text: 'Share',),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const _CustomButton({
    required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon , color: Colors.blue, size: 30,),
        Text(text, style: const TextStyle( color: Colors.blue ),)
      ],
    );
  }
}