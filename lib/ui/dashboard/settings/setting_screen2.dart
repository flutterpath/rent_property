import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SettingScreen2 extends StatefulWidget {
  @override
  _SettingScreen2State createState() => _SettingScreen2State();
}

class _SettingScreen2State extends State<SettingScreen2> {
  bool valueEmail = false;
  bool valueMessage = false;

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
          child: SingleChildScrollView(
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
                  text: Strings.settingTxt,
                  color: MyColors.black,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height * 0.072),

                Container(
                  height: height*0.32,
                  width: width,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: CustomText(
                            text: "PERSONAL",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize12,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 5),
                          child: CustomText(
                            text: "NAME",
                            color: MyColors.mediumGrey,
                            fontSize: FontSizes.textSize12,
                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CustomText(
                            text: "JOHN",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize12,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Divider(thickness: 1, color: MyColors.lightGrey,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 5),
                          child: CustomText(
                            text: "Surname",
                            color: MyColors.mediumGrey,
                            fontSize: FontSizes.textSize12,
                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CustomText(
                            text: "Doe",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize12,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Divider(thickness: 1, color: MyColors.lightGrey,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 5),
                          child: CustomText(
                            text: "E-mail",
                            color: MyColors.mediumGrey,
                            fontSize: FontSizes.textSize12,
                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CustomText(
                            text: "johndoe@mail.com",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ]
                  ),
                  child: RaisedButton(
                      color: MyColors.white,
                      child: CustomText(
                        text: Strings.changPasswordBtn,
                        color: MyColors.blue,
                        fontSize: FontSizes.textSize12,
                        fontWeight: CustomWeights.fontWeight("Bold"),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: (){}
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  height: height*0.12,
                  width: width,
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: Strings.socialMediaTxt,
                        color: MyColors.black,
                        fontSize: FontSizes.textSize12,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Links",
                              color: MyColors.black,
                              fontSize: FontSizes.textSize14,
                            ),

                            Icon(Icons.arrow_forward_ios, size: 20, color: MyColors.darkGrey8383,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  height: height*0.22,
                  width: width,
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: Strings.emailMesageTxt,
                        color: MyColors.black,
                        fontSize: FontSizes.textSize12,
                      ),

                      CheckboxListTile(
                        title: CustomText(
                          text: Strings.emailCheckTxt,
                          color: MyColors.mediumGrey,
                          fontSize: FontSizes.textSize14,
                        ),
                        value: this.valueEmail,
                        onChanged: (bool value) {
                          setState(() {
                            this.valueEmail = value;
                          });
                        },
                      ),

                      CheckboxListTile(
                        title: CustomText(
                          text: Strings.emailCheckTxt,
                          color: MyColors.mediumGrey,
                          fontSize: FontSizes.textSize14,
                        ),
                        value: this.valueMessage,
                        onChanged: (bool value) {
                          setState(() {
                            this.valueMessage = value;
                          });
                        },
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
