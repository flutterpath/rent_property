import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _codeController = TextEditingController();

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
                  text: Strings.confirmationHead,
                  color: MyColors.black,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.17),

                CustomText(
                  text: Strings.pleaseEnterTxt,
                  fontSize: FontSizes.textSize14,
                  color: MyColors.mediumGrey,

                ),

                SizedBox(height: 15),

                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _codeController,
                    style: TextStyle(fontSize: FontSizes.textSize14),
                    autofocus: false,
                    maxLines: 1,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(20),
                      // ignore: deprecated_member_use
                      // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
                    keyboardType: TextInputType.emailAddress,
                    decoration: textInputDecoration.copyWith(hintText: 'Code'),
                    // obscureText: true,
                    // onSaved: (val) {
                    //   setState(() => _confirmPasswordController.text = val.trim());
                    // },
                  ),
                ),

                SizedBox(height: height*0.035),

                Container(
                  height: 50,
                  width: width,
                  child: RaisedButton(
                      color: MyColors.blue,
                      textColor: MyColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: CustomText(text: Strings.confirmBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                      onPressed: (){}
                  ),
                ),

                SizedBox(height: height*0.030),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'don\'t get it?', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.mediumGrey)),
                      WidgetSpan(
                          child: SizedBox(width: 15)
                      ),
                      TextSpan(text: 'Resend code', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.darkGreyText)),
                    ],
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
