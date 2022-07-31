import 'package:alwasfa_app/widget/item_homepage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 3.2;
    return Scaffold(
      body: 
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  CustomHeader(
                    height: height  ,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: const Alignment(1, -0.2),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 8.0,
                                ),
                                CircleAvatar(
                                  radius: 144 / 2,
                                  backgroundColor: Colors.white,
                                  child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                ),
          ),
    );
  }
  
}
