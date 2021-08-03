
import 'package:clothes_app/constants/Theme.dart';
import 'package:clothes_app/providers/ThemeProvider.dart';
import 'package:clothes_app/screens/AdminScreen.dart';
import 'package:clothes_app/screens/CategoryScreen.dart';
import 'package:clothes_app/screens/ForgetPassScreen.dart';
import 'package:clothes_app/screens/HomeScreen.dart';
import 'package:clothes_app/screens/OnBoardingScreen.dart';
import 'package:clothes_app/screens/ProductDetails.dart';
import 'package:clothes_app/screens/SignInScreen.dart';
import 'package:clothes_app/screens/SignUpScreen.dart';
import 'package:clothes_app/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context)=>ThemeProvider()),
          ],
          child: MyApp())
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        theme: Provider.of<ThemeProvider>(context).isLight == true?lightMode:darkMode,
        initialRoute: OnBoardingScreen.id,
        debugShowCheckedModeBanner: false,
        routes: {
          SignInScreen.id:(context)=>SignInScreen(),
          ForgetPassScreen.id:(context)=>ForgetPassScreen(),
          SignUpScreen.id:(context)=>SignUpScreen(),
          SplashScreen.id:(context)=>SplashScreen(),
          OnBoardingScreen.id:(context)=>OnBoardingScreen(),
          HomeScreen.id:(context)=>HomeScreen(),
          AdminScreen.id:(context)=>AdminScreen(),
          CategoryScreen.id:(context)=>CategoryScreen(),
          ProductDetails.id:(context)=>ProductDetails(),

        },
      ),
    );
  }
}

