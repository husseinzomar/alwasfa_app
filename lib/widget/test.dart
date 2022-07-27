import 'dart:ui';

import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/order.dart';
import '../pages/search.dart';
import '../pages/settings.dart';

class CustomHeader extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Color shadowColor;
  final Color splashColor;
  final double height;
  final Widget? child;

  const CustomHeader({
    Key? key,
    required this.height,
   
    this.child,
    this.backgroundColor = const Color.fromRGBO(133, 39, 71, 0),
    this.splashColor = const Color(0xFFCCFFCC),
    this.borderColor = Colors.white,
    this.shadowColor = Colors.black26,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // The shadow effect
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: ClipPath(
              clipper: CustomHeaderClipper(
                  startHeight: height * 0.75,
                  endHeight: height * 0.18
              ),
              child: Container(
                width: width,
                height: height * 0.76,
                // color: shadowColor
              ),
            ),
          ),
        ),

        // The white border
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: ClipPath(
            clipper: CustomHeaderClipper(
                startHeight: height * 0.75,
                endHeight: height * 0.18
            ),
            child: Container(
                width: width,
                height: height * 0.75,
                color: borderColor,
            ),
          ),
        ),

        // The red shape
        ClipPath(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          clipper: CustomHeaderClipper(
              startHeight: height * 0.68,
              endHeight: height * 0.2
          ),
          child: Material(
            color: backgroundColor,
            child: InkWell(
              splashColor: splashColor,
              child: SizedBox(
                  width: width,
                  height: height * 0.8,
                  child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class CustomHeaderClipper extends CustomClipper<Path> {
  final double startHeight;
  final double endHeight;

  const CustomHeaderClipper({
    required this.startHeight,
    required this.endHeight
  });

  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    return Path()
      ..moveTo(0, 0)
      ..lineTo(0, startHeight)
      ..cubicTo(width * 0.35, height, width * 0.5, height * 0.4, width, endHeight)
      ..lineTo(width, 0)
      ..lineTo(0, 0)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


class CustomHeaderBackgroundScreen extends StatelessWidget {
  const CustomHeaderBackgroundScreen({Key? key}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 2.2;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: CustomHeader(
          height: height,
          
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            
          ),
        ),
      ),
      
    );
  }
}

// // class CustomHeaderBack extends StatefulWidget {
// //   const CustomHeaderBack({Key? key}) : super(key: key);

// //   @override
// //   State<CustomHeaderBack> createState() => _CustomHeaderBackState();
// // }

// // class _CustomHeaderBackState extends State<CustomHeaderBack> {

// //   static const List<Widget> _pages = <Widget>[
// //   Home(),
// //   Order(),
// //   Search(),
// //   Settings(),
// // ];
// //   int currentIndex = 0;

// //   void onTapItem(int index) {
// //   setState(() {
// //     currentIndex = index;
// //   });
// // }
  
// //   @override
// //   Widget build(BuildContext context) {
// //     final height = MediaQuery.of(context).size.height / 2;
// //     return Scaffold(
// //       body: SafeArea(
// //         child: CustomHeader(
// //           height: height,
// //           onTap: () {},
// //           child: const Padding(
// //             padding: EdgeInsets.all(8.0),
// //             child: Center(
// //               child: Text('CustomHeaderBack'),
// //             ),
// //           ),
// //         ),
// //       ),
// //       bottomNavigationBar:  Theme(
// //         data: ThemeData(
// //           canvasColor: const Color.fromRGBO(133, 39, 71, 0),
// //         ),
// //         child: BottomNavigationBar(
// //           items:  const [
// //             BottomNavigationBarItem(
// //                 icon: Icon(Icons.home),
// //                 label: 'الرئيسية',
// //                 ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.search),
// //               label: 'البحث',
// //             ),
            
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.local_mall_rounded),
// //               label: 'المتجر',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'الحساب',
// //             ),
// //           ],
// //           // type: BottomNavigationBarType.shifting,
// //           currentIndex: currentIndex,
// //           selectedFontSize: 20,
// //           selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
// //           onTap: onTapItem,
// //           showSelectedLabels: false,
// //         ),
// //       ),
// //     );
//   }
// }