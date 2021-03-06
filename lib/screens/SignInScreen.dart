import 'package:clothes_app/screens/AdminScreen.dart';
import 'package:clothes_app/screens/ForgetPassScreen.dart';
import 'package:clothes_app/screens/SignUpScreen.dart';
import 'package:clothes_app/widget/CustomButton.dart';
import 'package:clothes_app/widget/CustomTextField.dart';
import 'package:clothes_app/widget/SocialButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignInScreen extends StatefulWidget {
  static String id = 'SignInScreen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var signInKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/s7.jpg'),
                fit: BoxFit.cover,
              )
          ),
        child: ListView(
          children: [
            SizedBox(height: 70.sp,),
            Icon(FontAwesomeIcons.stumbleuponCircle,size: 70.sp,color: Colors.red,),
            SizedBox(height: 20.sp,),
            Center(child: Text('User Login',style: TextStyle(
                fontSize: 20.sp,color: Colors.purple,fontWeight: FontWeight.bold),)),
            Form(
              key: signInKey,
              child: Column(
                children: [
                  CustomTextField(hint: 'Enter Email',iconData: Icons.email,secure: false,),
                  CustomTextField( hint: 'Enter Password',iconData: Icons.lock,secure: true,),
                ],
              ),
            ),
            SizedBox(height: 10.sp,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, ForgetPassScreen.id);
                    },
                    child: Text('Forget Password ?',style: TextStyle(
                        color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20.sp),),
                  )),
            ),

            SizedBox(height: 15.sp,),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AdminScreen.id);
                },
                child: CustomButton(name: 'SIGN IN',hight: .06.sh,color: Colors.red,)),
            SizedBox(height: 15.sp,),

            Center(child: Text('-OR-',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.purple),)),
            SocialButton(icon: FontAwesomeIcons.facebook,colorIcon: Colors.blue,name:'SIGN IN WITH Facebook' ,colorName: Colors.blue,color: Colors.white,),
            SizedBox(height: 15.sp,),
            SocialButton(icon: FontAwesomeIcons.google,colorIcon: Colors.red,name:'SIGN IN WITH Google' ,colorName: Colors.red,color: Colors.white,),
            SizedBox(height: 15.sp,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have account ?',style: TextStyle(fontSize:25.sp,color: Colors.purple)),
                TextButton(
                    child: Text('SIGN UP',style: TextStyle(
                        color: Colors.grey,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.pushNamed(context, SignUpScreen.id);
                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
