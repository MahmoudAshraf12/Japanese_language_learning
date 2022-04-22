import 'package:flutter/material.dart';
import 'package:toku/modules/colors_screen.dart';
import 'package:toku/modules/family_members_screen.dart';
import 'package:toku/modules/numbers_screen.dart';
import 'package:toku/modules/phrases_screen.dart';
import 'package:toku/shared_components/components.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Toku'),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Column(children: [
          Categories(
            text: 'Numbers',
            OnTap: () {
              navicateTo(context, NumbersScreen());
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          Categories(
              text: 'Family Members',
              OnTap: () {
                navicateTo(context, FamilyMembersScreen());
              }),
          SizedBox(
            height: 15.0,
          ),
          Categories(
              text: 'Colors',
              OnTap: () {
                navicateTo(context, ColorsScreen());
              }),
          SizedBox(
            height: 15.0,
          ),
          Categories(
            text: 'Phrases',
            OnTap: () {
              navicateTo(context, PhrasesScreen());
            },
          ),
        ]));
  }
}

class Categories extends StatelessWidget {
  Categories({Key? key, this.text, this.OnTap}) : super(key: key);
  String? text;
  Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: GestureDetector(
        onTap: OnTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white38,
          ),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                )),
          ]),
        ),
      ),
    ));
  }
}
