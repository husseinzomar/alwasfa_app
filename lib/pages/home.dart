import 'package:alwasfa_app/widget/test.dart';
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
      // (
      //     child: CustomHeaderBackgroundScreen(),
      //   Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // children: <Widget>[
      // LayoutBuilder(
      //   builder: ((context, constraints) {
      //     final width = constraints.maxWidth;
      //     return SizedBox(
      //       width: width,
      //       height: 250,
      //       child: Stack(
      //         children: [
      //           Positioned(
      //             top: -100,
      //             left: -20,
      //             bottom: 1,
      //             right: -200,
      //             child: Container(
      //               decoration: ShapeDecoration(
      //                 shape: CircleBorder(
      //                     side: BorderSide(
      //                   color: HexColor('#F5F5F5'),
      //                   width: 10,
      //                 )),
      //               ),
      //             ),
      //           ),
      //           Align(
      //             alignment: const Alignment(10 ,-0.2),
      //             child: Row(
      //               children: [
      //                 SizedBox(
      //                   width: 200.0,
      //                 ),
      //                 CircleAvatar(
      //                   radius: 144 / 2,
      //                   backgroundColor: HexColor('#F5F5F5'),
      //                   child: Image.asset('assets/al.jpeg'),
      //                 )
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     );
      //   }),
      // )
    );
  }
}
