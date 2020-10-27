import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                text: Strings.notificationHeadingTxt,
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),

              SizedBox(height: height * 0.072),

              Container(
                padding: EdgeInsets.all(20),
                height: height*0.22,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: Strings.newPropertyTxt,
                          color: MyColors.black,
                          fontSize: FontSizes.textSize14,
                        ),

                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.mail_outline_outlined, color: MyColors.darkGrey8383, size: 22,),
                              ),

                              WidgetSpan(
                                child: SizedBox(width: 20,),
                              ),

                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(Icons.notifications_none_outlined, color: MyColors.darkGrey8383, size: 22,),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    Divider(thickness: 1,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: Strings.priceDropTxt,
                          color: MyColors.black,
                          fontSize: FontSizes.textSize14,
                        ),

                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.mail_outline_outlined, color: MyColors.darkGrey8383, size: 22,),
                              ),

                              WidgetSpan(
                                child: SizedBox(width: 20,),
                              ),

                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(Icons.notifications_none_outlined, color: MyColors.darkGrey8383, size: 22,),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    Divider(thickness: 1,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: Strings.newsFromTxt,
                          color: MyColors.black,
                          fontSize: FontSizes.textSize14,
                        ),

                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.mail_outline_outlined, color: MyColors.darkGrey8383, size: 22,),
                              ),

                              WidgetSpan(
                                child: SizedBox(width: 20,),
                              ),

                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(Icons.notifications_none_outlined, color: MyColors.darkGrey8383, size: 22,),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
                    child: CustomText(text: Strings.saveBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
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
