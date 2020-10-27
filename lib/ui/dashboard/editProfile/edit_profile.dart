import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
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
                text: Strings.editProfileTxt,
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),

              SizedBox(height: height * 0.072),

              Container(
                padding: EdgeInsets.all(15),
                height: height*0.15,
                width: width,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.darkGrey8383.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.mail_outline_rounded, color: MyColors.darkGrey8383, size: 22,),

                        SizedBox(width: 15),

                        CustomText(
                          text: Strings.changeEmailTxt,
                          color: MyColors.black,
                          fontSize: FontSizes.textSize14,
                        )
                      ],
                    ),

                    Divider(thickness: 1,),

                    Row(
                      children: [
                        Icon(Icons.share_outlined, color: MyColors.darkGrey8383, size: 22,),

                        SizedBox(width: 15),

                        CustomText(
                          text: Strings.socialMediaAccountTxt,
                          color: MyColors.black,
                          fontSize: FontSizes.textSize14,
                          fontWeight: CustomWeights.fontWeight("Regular"),
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: height * 0.030),

              Container(
                height: 50,
                width: width,
                child: RaisedButton(
                    color: MyColors.blue,
                    textColor: MyColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: CustomText(text: Strings.changPasswordBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                    onPressed: (){}
                ),
              ),

              SizedBox(height: height * 0.030),

              Container(
                padding: EdgeInsets.all(15),
                height: height*0.075,
                width: width,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.darkGrey8383.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Icon(Icons.notifications_none_outlined, color: MyColors.darkGrey8383, size: 22,),

                    SizedBox(width: 15),

                    CustomText(
                      text: Strings.notificationTxt,
                      color: MyColors.black,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("Regular"),
                    )
                  ],
                )
              ),

              SizedBox(height: height * 0.030),

              Container(
                height: 50,
                width: width,
                child: OutlineButton(
                    color: MyColors.blue,
                    textColor: MyColors.white,
                    borderSide: BorderSide(
                      color: MyColors.lightGrey, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 2.0, //width of the border
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CustomText(text: Strings.supportBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.darkGreyText, fontSize: FontSizes.textSize12,),
                    onPressed: (){}
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
