import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final IconData leadingIcons, trailingIcons;
  final String title, subTitle;

  UserCard(
      {required this.leadingIcons,
      required this.trailingIcons,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(leadingIcons),
        title: Text(title,style: TextStyle( fontFamily: "Gemunu",fontWeight: FontWeight.bold),),
        subtitle: Text(subTitle,style: TextStyle( fontFamily: "Gemunu",fontWeight: FontWeight.bold),),
        trailing: Icon(trailingIcons),
      ),
    );
  }
}
