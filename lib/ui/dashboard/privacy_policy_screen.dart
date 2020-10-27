import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.lightBackground,
        resizeToAvoidBottomPadding: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: MyColors.black,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 25,
                        color: MyColors.black,
                      ),
                      onPressed: () {}),
                ],
              ),

              SizedBox(height: height * 0.01),

              CustomText(
                text: Strings.privacyPolicyTxt,
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),

              SizedBox(height: height * 0.05),

              CustomText(
                text: Strings.firstTxt,
                color: MyColors.darkGrey8383,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("Regular"),
              ),


              // CustomText(
              //   text: "Aregentine Peso",
              //   color: MyColors.lightGreyText,
              //   fontSize: FontSizes.textSize12,
              //   fontWeight: CustomWeights.fontWeight("SemiBold"),
              // ),
              //
              // CustomText(
              //   text: "ARS",
              //   color: MyColors.darkGreyText,
              //   fontSize: FontSizes.textSize14,
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
