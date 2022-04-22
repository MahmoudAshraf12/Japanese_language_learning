import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../shared_components/components.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<AppModel> phrases = const [
    AppModel(
      sound: 'are_you_coming.wav',
      enName: 'are you coming ',
      jpName: 'Kimaska',
    ),
    AppModel(
        sound: 'dont_forget_to_subscribe.wav',
        enName: 'dont forget to subscribe',
        jpName: 'Kodoku suru koto o wasurenaide kudasai'),
    AppModel(
        sound: 'how_are_you_feeling.wav',
        enName: 'how are you feeling',
        jpName: 'Go kibun wa ikagadesu'),
    AppModel(
      sound: 'i_love_anime.wav',
      enName: 'i love anime',
      jpName: 'Watasci wa anime ga daisukidesu ',
    ),
    AppModel(
      sound: 'i_love_programming.wav',
      enName: 'i love programming',
      jpName: 'Watashi wa puroguraimingu daisukidesu',
    ),
    AppModel(
      sound: 'programming_is_easy.wav',
      enName: 'programming is easy',
      jpName: 'puroguraimingu wa kantandesu',
    ),
    AppModel(
      sound: 'what_is_your_name.wav',
      enName: 'what is your name',
      jpName: 'Namae wa nandesu ka',
    ),
    AppModel(
      sound: 'where_are_you_going.wav',
      enName: 'where are you going',
      jpName: 'Doko ni iku no',
    ),
    AppModel(
      sound: 'yes_im_coming.wav',
      enName: 'yes im coming',
      jpName: 'Hi watashi wa dimus',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Phrases'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => MyDevider(),
        itemBuilder: (context, index) => PhraseItem(
          number: phrases[index],
          itemType: 'phrase',
        ),
        itemCount: phrases.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
