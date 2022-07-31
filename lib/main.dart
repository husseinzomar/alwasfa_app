import 'package:alwasfa_app/pages/bottomNavbar.dart';
import 'package:alwasfa_app/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyTheme.lightTheme,
            darkTheme: MyTheme.darkTheme,
            // home: BottomNavBar(),
            home: AnimatedSplashScreen(
              splashIconSize: 200.0,
              curve: Curves.fastOutSlowIn,
              splash: Image.asset('assets/logo.png', fit: BoxFit.fill,),
              duration: 2000,
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: HexColor('#46244C'),
              nextScreen: const BottomNavBar(),
            ),
            
          );
        },
      );
}
