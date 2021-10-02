import 'package:flutter/material.dart';
import 'package:hw/widgets/user_card.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "User",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: "Gemunu"),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Colors.purple.shade800,
              Colors.purple.shade200,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.purple.shade800,
              child: Image.asset(
                "assets/photo.jpg",
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),
            UserCard(
              leadingIcons: Icons.person_add,
              trailingIcons: Icons.verified_user,
              title: "Adham Mheeb AlAshi",
              subTitle: "Full Name",
            ),
            UserCard(
              leadingIcons: Icons.school,
              trailingIcons: Icons.pending_actions_sharp,
              title: "Flutter e-Lancer",
              subTitle: "Cours Name",
            ),
            UserCard(
              leadingIcons: Icons.email,
              trailingIcons: Icons.send,
              title: "adham@adham.com",
              subTitle: "Email ",
            ),
            UserCard(
              leadingIcons: Icons.phone,
              trailingIcons: Icons.mobile_friendly,
              title: "0599999999",
              subTitle: "Mobile",
            ),
            Spacer(),
            Text(
              "Design Adham Alashi",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: "Gemunu",fontSize: 20),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
