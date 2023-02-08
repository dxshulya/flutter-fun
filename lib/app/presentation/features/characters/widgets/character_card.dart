import 'package:flutter/material.dart';
import 'package:pocket_morty/app/constants.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppStyle.placeHolderPath),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Title'),
                Text('Description'),
              ],
            ),
          ],
        ));
  }
}
