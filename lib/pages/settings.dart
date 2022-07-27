import 'package:alwasfa_app/widget/widget.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    //final top = coverHeight - profileHeight / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            const SizedBox(height: 80),
            buildContent(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Mode', style: TextStyle(
                  color: Colors.white,
                ),),
                ChangeThemeButtonWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        foregroundImage: const AssetImage('assets/al.jpeg'),
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage('assets/CA.png'),
      );

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/al.jpeg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;

    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        buildCoverImage(),
        Positioned(
          top: top,
          width: 300,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildContent() => Column(
    children: const [
      SizedBox(
        height: 8.0,
      ),
      Text('Hussein zomar',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  );
}
