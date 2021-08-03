import 'package:clothes_app/screens/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnBoardingScreen extends StatefulWidget {
  static String id = 'OnBoardingScreeen';
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  forFirstTime()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('firstTime', 'yes');
  }
  @override
  void initState(){
    super.initState();
    forFirstTime();
  }
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.black12,
      isBottomSafeArea: true,
      skip: Text('Skip'),
      done: Text('Done'),
      next: Icon(Icons.arrow_forward,),
      onDone: (){
        Navigator.pushNamed(context, SignInScreen.id);
      },
      showNextButton: true,
      showSkipButton: true,
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/c1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          titleWidget: Text('True style never dies',style: TextStyle(
              fontSize: 25.sp,fontWeight:FontWeight.bold ,color: Colors.blueAccent),),
          body: '',
        ),
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/c2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          titleWidget: Text('Explore your true style',style: TextStyle(
              fontSize: 25.sp,fontWeight:FontWeight.bold ,color: Colors.blueAccent),),
          body: '',
        ),PageViewModel(
        decoration: PageDecoration(
          boxDecoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/c3.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
          titleWidget: Text('Expect more from your clothes',style: TextStyle(
              fontSize: 20.sp,fontWeight:FontWeight.bold ,color: Colors.blueAccent),),
          body: '',
        ),
      ],
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
