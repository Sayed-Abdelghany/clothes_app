
import 'package:clothes_app/widget/CustomButton.dart';
import 'package:clothes_app/widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ForgetPassScreen extends StatefulWidget {
  static String id = 'ForgetPassScreen';
  @override
  _ForgetPassScreenState createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/s14.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: ListView(
          children: [
            SizedBox(height: 120.sp,),
            Icon(FontAwesomeIcons.stumbleuponCircle,size: 70.sp,color: Colors.red,),
            SizedBox(height: 300.sp,),
            CustomTextField(hint: 'Enter Your Mail',iconData: Icons.mail,secure: false,),
            SizedBox(height: 25.sp,),
            CustomButton(name: 'Reset Password',hight:.06.sh ,color:Colors.red ,),
          ],
        ),
      ),
    );
  }
}
