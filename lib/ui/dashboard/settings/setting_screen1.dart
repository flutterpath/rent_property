import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SettingScreen1 extends StatefulWidget {
  @override
  _SettingScreen1State createState() => _SettingScreen1State();
}

class _SettingScreen1State extends State<SettingScreen1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.lightBackground,
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
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
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: CustomText(
                text: Strings.settingTxt,
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),
            ),
            SizedBox(height: height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: MyColors.lightGrey,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ],
            ),
            SizedBox(height: height * 0.035),
            Expanded(
                child: Container(
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: MyColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: height*0.04, left: width*0.04, right: width*0.04),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        rowData("Name", "John DOE"),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Divider(thickness: 1, color: MyColors.darkGrey8383,),
                        ),

                        rowData("Country", "Canada"),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Divider(thickness: 1, color: MyColors.darkGrey8383,),
                        ),

                        rowData("Currency", "CAD"),

                        SizedBox(height: height*0.048),

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
                                text: Strings.privacyPolicyTxt,
                                color: MyColors.black,
                                fontSize: FontSizes.textSize12,
                                fontWeight: CustomWeights.fontWeight("Bold"),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              onPressed: (){}
                          ),
                        ),

                        SizedBox(height: 10),

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
                              text: Strings.supportFaqTxt,
                              color: MyColors.black,
                              fontSize: FontSizes.textSize12,
                              fontWeight: CustomWeights.fontWeight("Bold"),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: (){}
                          ),
                        ),

                        SizedBox(height: 10),

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

                        SizedBox(height: height*0.048),

                        CustomText(
                          text: Strings.deleteAccountTxt,
                          color: MyColors.redColor,
                          fontSize: FontSizes.textSize12,
                          fontWeight: CustomWeights.fontWeight("SemiBold"),
                        ),

                        SizedBox(height: 20),

                      ],
                    ),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget rowData(String label, String data){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: label,
          color: MyColors.black,
          fontSize: FontSizes.textSize12,
          fontWeight: CustomWeights.fontWeight("SemiBold"),
        ),

        CustomText(
          text: data,
          color: MyColors.darkGrey8383,
          fontSize: FontSizes.textSize14,
        )
      ],
    );
  }
}
