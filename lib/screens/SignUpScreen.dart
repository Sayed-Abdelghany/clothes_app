import 'package:clothes_app/screens/SignInScreen.dart';
import 'package:clothes_app/widget/CustomButton.dart';
import 'package:clothes_app/widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SignUpScreen extends StatefulWidget {
  static String id = 'SignUpScreen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/s5.jpg'),
                fit: BoxFit.cover,
              )
          ),
        child: ListView(
          children: [
            SizedBox(height: 80.sp,),
            Icon(FontAwesomeIcons.stumbleuponCircle,size: 70.sp,color: Colors.red,),
            SizedBox(height: 10.sp,),
            CustomTextField(hint: 'Choose your name',iconData: Icons.person,secure: false,),
            CustomTextField(hint: 'Enter your email',iconData: Icons.mail,secure: false,),
            CustomTextField(hint: 'Enter Password',iconData: Icons.lock,secure: true,),
            CustomTextField(hint: 'Confirm Password',iconData: Icons.lock,secure: true,),
            SizedBox(height: 15.sp,),
            CustomButton(name: 'SIGN UP',hight: .06.sh,color: Colors.red,),
            SizedBox(height: 15.sp,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account ?',style: TextStyle(
                      fontSize:20.sp,color: Colors.purple,)),
                  TextButton(
                      child: Text('SIGN IN',style: TextStyle(
                          color: Colors.grey,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      onPressed: (){
                        Navigator.pushNamed(context, SignInScreen.id);
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
