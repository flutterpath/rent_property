import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SignUpWith extends StatefulWidget {
  @override
  _SignUpWithState createState() => _SignUpWithState();
}

class _SignUpWithState extends State<SignUpWith> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.04),

                IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 18, color: MyColors.black,),
                    onPressed: (){}
                ),

                SizedBox(height: height*0.01),

                CustomText(
                  text: Strings.signup,
                  color: MyColors.black,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.42),

                CustomText(text: "SIGN UP WITH", color: MyColors.mediumGrey, fontSize: FontSizes.textSize10,),

                SizedBox(height: height*0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: width*0.35,
                      child: RaisedButton(
                          color: MyColors.bluefbBtn,
                          textColor: MyColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: CustomText(text: Strings.facebookBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                          onPressed: (){}
                      ),
                    ),

                    Container(
                      height: 50,
                      width: width*0.35,
                      child: RaisedButton(
                          color: MyColors.bluetwiterBtn,
                          textColor: MyColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: CustomText(text: Strings.twitterBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                          onPressed: (){}
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height*0.03),

                CustomText(
                  text: "OR",
                  color: MyColors.mediumGrey,
                  fontSize: FontSizes.textSize10,
                ),

                SizedBox(height: height*0.03),

                Container(
                  height: 50,
                  width: width,
                  child: RaisedButton(
                      color: MyColors.blue,
                      textColor: MyColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: CustomText(text: "Email", fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                      onPressed: (){
                        Navigator.pushNamed(context, '/signUpScreen');
                      }
                  ),
                ),

                SizedBox(height: height*0.035),

                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/loginScreen1');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'already member?', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.mediumGrey)),
                        WidgetSpan(
                            child: SizedBox(width: 15)
                        ),
                        TextSpan(text: 'Login', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.darkGreyText, fontWeight: CustomWeights.fontWeight("Bold"))),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
