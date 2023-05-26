// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kid_starter/app/controllers/alphabet_bn_controller.dart';
import 'package:kid_starter/app/screens/bangla_borno_screen.dart';

import '../widgets/category_card.dart';
import 'alphabet_en_screen.dart';
import 'color_screen.dart';
import 'numeric_en_screen.dart';
import 'shape_screen.dart';
import 'story_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> categories = [
      CategoryCard(
        isBangla: true,
        title: 'অ আ ই',
        primaryColor: Colors.purpleAccent,
        secondaryColor: Colors.purple,
        screen: BanglaBornoScreen(
          title: 'অ আ ই',
          primaryColor: Colors.purpleAccent,
          seconderyColor: Colors.purple,
          bornoList: sorbornoList,
        ),
      ),
      CategoryCard(
          isBangla: true,
          title: 'ক খ গ',
          primaryColor: Color(0xC102DAFF),
          secondaryColor: Color(0xC1024F60),
          screen: BanglaBornoScreen(
            title: 'ক খ গ',
            primaryColor: Colors.purpleAccent,
            seconderyColor: Colors.purple,
            bornoList: benjonBornoList,
          )),
      CategoryCard(
        isBangla: true,
        title: '১ ২ ৩',
        primaryColor: Colors.lightGreenAccent,
        secondaryColor: Colors.lightGreen,
        screen: BanglaBornoScreen(
          title: '১ ২ ৩',
          primaryColor: Colors.lightGreenAccent,
          seconderyColor: Colors.lightGreen,
          bornoList: bnNumberList,
        ),
      ),
      CategoryCard(
        title: 'Colors',
        primaryColor: Colors.orangeAccent[100]!,
        secondaryColor: Colors.orange,
        screen: ColorScreen(
          title: 'Colors',
          primaryColor: Colors.orangeAccent[100]!,
          secondaryColor: Colors.orange,
        ),
      ),
      CategoryCard(
        title: '123',
        primaryColor: Colors.greenAccent[100]!,
        secondaryColor: Colors.green,
        screen: NumericEnScreen(
          title: '123',
          primaryColor: Colors.greenAccent[100]!,
          secondaryColor: Colors.green,
        ),
      ),
      CategoryCard(
        title: 'ABC',
        primaryColor: Colors.purpleAccent[100]!,
        secondaryColor: Colors.purple,
        screen: AlphabetEnScreen(
          title: 'ABC',
          primaryColor: Colors.purpleAccent[100]!,
          secondaryColor: Colors.purple,
        ),
      ),
      CategoryCard(
        title: 'Stories',
        primaryColor: Color(0xFF3383CD),
        secondaryColor: Color(0xFF11249F),
        screen: StoriesScreen(
          title: 'Stories',
          primaryColor: Color(0xFF3383CD),
          secondaryColor: Color(0xFF11249F),
        ),
      ),
      CategoryCard(
        title: 'Shapes',
        primaryColor: Colors.redAccent[100]!,
        secondaryColor: Colors.red,
        screen: ShapesScreen(
          title: 'Shapes',
          primaryColor: Colors.redAccent[100]!,
          secondaryColor: Colors.red,
        ),
      ),
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          image: const DecorationImage(
            image:
                AssetImage('assets/images/app_images/monni_starter_bottom.png'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 188.0,
              backgroundColor: Colors.grey[50],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/app_images/tasnia_starter_top.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(categories),
            ),
          ],
        ),
      ),
    );
  }
}
