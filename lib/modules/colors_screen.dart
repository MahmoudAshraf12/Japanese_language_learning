import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../shared_components/components.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);
  final List<AppModel> colors = const [
    AppModel(
        sound: 'black.wav',
        Image: 'assets/images/colors/color_black.png',
        enName: 'black',
        jpName: 'Borakku'),
    AppModel(
        sound: 'brown.wav',
        Image: 'assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo'),
    AppModel(
        sound: 'dusty yellow.wav',
        Image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty yellow',
        jpName: 'Hokori ppoi kiiro'),
    AppModel(
        sound: 'gray.wav',
        Image: 'assets/images/colors/color_gray.png',
        enName: 'gray',
        jpName: 'Gure'),
    AppModel(
        sound: 'green.wav',
        Image: 'assets/images/colors/color_green.png',
        enName: 'green',
        jpName: 'Midori'),
    AppModel(
        sound: 'red.wav',
        Image: 'assets/images/colors/color_red.png',
        enName: 'red',
        jpName: 'Aka'),
    AppModel(
        sound: 'white.wav',
        Image: 'assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Sheroi'),
    AppModel(
        sound: 'yellow.wav',
        Image: 'assets/images/colors/yellow.png',
        enName: 'yellow',
        jpName: 'Kero'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Colors'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => MyDevider(),
        itemBuilder: (context, index) => Item(
          number: colors[index],
          itemType: 'colors',
        ),
        itemCount: colors.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
