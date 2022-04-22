import 'package:flutter/material.dart';
import 'package:toku/shared_components/components.dart';

import '../models/app_model.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);
  final List<AppModel> numbers = const [
    AppModel(
        sound: 'number_one_sound.mp3',
        Image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi'),
    AppModel(
        sound: 'number_two_sound.mp3',
        Image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Ni'),
    AppModel(
        sound: 'number_three_sound.mp3',
        Image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'San'),
    AppModel(
        sound: 'number_four_sound.mp3',
        Image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi'),
    AppModel(
        sound: 'number_five_sound.mp3',
        Image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go'),
    AppModel(
        sound: 'number_six_sound.mp3',
        Image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku'),
    AppModel(
        sound: 'number_seven_sound.mp3',
        Image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun'),
    AppModel(
        sound: 'number_eight_sound.mp3',
        Image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi'),
    AppModel(
        sound: 'number_nine_sound.mp3',
        Image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyu'),
    AppModel(
        sound: 'number_ten_sound.mp3',
        Image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Ju')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Numbers'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => MyDevider(),
        itemBuilder: (context, index) => Item(
          number: numbers[index],
          itemType: 'numbers',
        ),
        itemCount: numbers.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
