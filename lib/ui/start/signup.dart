import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SignUpWelcome extends StatefulWidget {
  @override
  _SignUpWelcomeState createState() => _SignUpWelcomeState();
}

class _SignUpWelcomeState extends State<SignUpWelcome> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*0.17),

            Image.asset("assets/images/first.png", height: height*0.45, width: width*0.9, fit: BoxFit.fill,),

            SizedBox(height: height*0.04),

            CustomText(
              text: Strings.perspiciatis,
              color: MyColors.lightGreyText,
              fontSize: FontSizes.textSize14,
              fontWeight: CustomWeights.fontWeight("Regular"),
              align: CustomAlignment.fontAlign("center"),
            ),

            SizedBox(height: height*0.11),

            Container(
              height: 50,
              width: width,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                textColor: MyColors.white,
                color: MyColors.blue,
                child: CustomText(text: Strings.emailButton, fontSize: FontSizes.textSize12, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),
                onPressed: (){
                  Navigator.pushNamed(context, '/signUpWith');
                }
              ),
            ),

            SizedBox(height: height*0.05),

            CustomText(
              text: Strings.facebook,
              fontSize: FontSizes.textSize12,
              fontWeight: CustomWeights.fontWeight("Bold"),
            )
          ],
        ),
      ),
    );
  }
}
