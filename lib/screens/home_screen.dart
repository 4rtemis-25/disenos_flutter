import 'package:diseno_1/widgets/background.dart';
import 'package:diseno_1/widgets/card_table.dart';
import 'package:diseno_1/widgets/custom_bar.dart';
import 'package:diseno_1/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Scaffold(
          body: const Stack(
            children: [
              Background(),
    
              _HomeBody()        ],
          ),
          bottomNavigationBar: CustomBar(),
        ),
      ],
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}