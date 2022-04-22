import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../shared_components/components.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({Key? key}) : super(key: key);
  final List<AppModel> familyMempers = const [
    AppModel(
        sound: 'daughter.wav',
        Image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'Musume'),
    AppModel(
        sound: 'father.wav',
        Image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'Chichioya'),
    AppModel(
        sound: 'grand father.wav',
        Image: 'assets/images/family_members/family_grandfather.png',
        enName: 'father',
        jpName: 'Ojisan'),
    AppModel(
        sound: 'grand mother.wav',
        Image: 'assets/images/family_members/family_grandmother.png',
        enName: 'grand mother',
        jpName: 'Sobo'),
    AppModel(
        sound: 'mother.wav',
        Image: 'assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'Hahaoya'),
    AppModel(
        sound: 'older bother.wav',
        Image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older bother',
        jpName: 'Nisan'),
    AppModel(
        sound: 'older sister.wav',
        Image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older sister',
        jpName: 'Ane'),
    AppModel(
        sound: 'son.wav',
        Image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'Musuko'),
    AppModel(
        sound: 'younger brohter.wav',
        Image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'Ototo'),
    AppModel(
        sound: 'younger sister.wav',
        Image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'Imoto')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Family Members'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => MyDevider(),
        itemBuilder: (context, index) => Item(
          number: familyMempers[index],
          itemType: 'family_members',
        ),
        itemCount: familyMempers.length,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
