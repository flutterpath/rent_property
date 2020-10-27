import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class LoginScreen1 extends StatefulWidget {
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
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
                  text: Strings.login,
                  color: MyColors.black,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.42),

                CustomText(
                  text: Strings.loginWith,
                  color: MyColors.mediumGrey,
                  fontSize: FontSizes.textSize10,
                ),

                SizedBox(height: height*0.035),

                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _emailController,
                    autofocus: false,
                    maxLines: 1,
                    style: TextStyle(fontSize: FontSizes.textSize14),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(20),
                      // ignore: deprecated_member_use
                      // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
                    keyboardType: TextInputType.emailAddress,
                    decoration: textInputDecoration.copyWith(hintText: 'Email'),
                    // obscureText: true,
                    // onSaved: (val) {
                    //   setState(() => _confirmPasswordController.text = val.trim());
                    // },
                  ),
                ),

                SizedBox(height: 10,),

                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _passwordController,
                    style: TextStyle(fontSize: FontSizes.textSize14),
                    autofocus: false,
                    maxLines: 1,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(20),
                      // ignore: deprecated_member_use
                      // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
                    keyboardType: TextInputType.emailAddress,
                    decoration: textInputDecoration.copyWith(hintText: 'Password'),
                    // obscureText: true,
                    // onSaved: (val) {
                    //   setState(() => _confirmPasswordController.text = val.trim());
                    // },
                  ),
                ),

                SizedBox(height: height*0.035),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: width*0.6,
                      child: RaisedButton(
                          color: MyColors.blue,
                          textColor: MyColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: CustomText(text: Strings.login, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                          onPressed: (){
                            Navigator.pushNamed(context, '/loginScreen2');
                          }
                      ),
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: MyColors.bluefbBtn,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset("assets/images/fbSign.png", height: 20, width: 20,),
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: MyColors.bluetwiterBtn,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset("assets/images/twitterSign.png", height: 5, width: 5, fit: BoxFit.none,),
                    )
                  ],
                ),

                SizedBox(height: height*0.035),

                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/signUpScreen');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'need an account?', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.mediumGrey)),
                        WidgetSpan(
                            child: SizedBox(width: 15)
                        ),
                        TextSpan(text: 'Sign up', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.darkGreyText)),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15),

                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/forgotPassword');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'forgot your password?', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.mediumGrey)),
                        WidgetSpan(
                            child: SizedBox(width: 15)
                        ),
                        TextSpan(text: 'Retrive', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.darkGreyText, fontWeight: CustomWeights.fontWeight("Bold"))),
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
