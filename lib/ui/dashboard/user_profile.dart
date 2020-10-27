import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.lightBackground,
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: height*0.36,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.darkGrey8383.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    )
                  ]
                ),
                padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
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
                              color: MyColors.lightGreyText,
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(
                              Icons.settings,
                              size: 25,
                              color: MyColors.lightGreyText,
                            ),
                            onPressed: () {}),
                      ],
                    ),

                    SizedBox(height: height * 0.01),
                    CustomText(
                      text: "User",
                      color: MyColors.black,
                      fontSize: FontSizes.textSize28,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    SizedBox(height: height * 0.07),

                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/images/Mask.png")
                            )
                          ),
                        ),

                        SizedBox(width: 20),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "John DOE",
                              fontSize: FontSizes.textSize14,
                              color: MyColors.black,
                              fontWeight: CustomWeights.fontWeight("SemiBold"),
                            ),

                            SizedBox(height: 10,),

                            CustomText(
                              text: "Toronto",
                              fontSize: FontSizes.textSize12,
                              color: MyColors.black,
                            ),
                            SizedBox(height: 10,),

                            Row(
                              children: [
                                Image.asset("assets/images/usertwitter.png", height: 18,),
                                SizedBox(width: 10,),

                                Image.asset("assets/images/userinsta.png", height: 18,),
                                SizedBox(width: 10,),

                                Image.asset("assets/images/userfb.png", height: 18,),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: height * 0.05),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Last Viewed",
                      fontSize: FontSizes.textSize16,
                      color: MyColors.black,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    CustomText(
                      text: "SEE All",
                      fontSize: FontSizes.textSize10,
                      color: MyColors.mediumGrey,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.01,),

              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: height*0.1,
                  maxHeight: height*0.2,
                  minWidth: width,
                ),
                // height: height*0.15,
                child: Container(child: _lastView()),
              ),

              SizedBox(height: height*0.01),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "My Favorited",
                      fontSize: FontSizes.textSize16,
                      color: MyColors.black,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    CustomText(
                      text: "SEE All",
                      fontSize: FontSizes.textSize10,
                      color: MyColors.mediumGrey,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height*0.01,),

              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: height*0.1,
                  maxHeight: height*0.2,
                  minWidth: width,
                ),
                // height: height*0.15,
                child: Container(child: _lastView()),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget _lastView(){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/property.png")
                      )
                  ),
                ),

                CustomText(
                  text: "\$ 360.000",
                  fontSize: FontSizes.textSize12,
                  color: MyColors.black,
                  fontWeight: CustomWeights.fontWeight("SemiBold"),
                ),

                Row(
                  children: [
                    CustomText(
                      text: "3 bed",
                      fontSize: FontSizes.textSize10,
                      color: MyColors.blue,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    SizedBox(width: 20),

                    CustomText(
                      text: "2 bath",
                      fontSize: FontSizes.textSize10,
                      color: MyColors.blue,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                )
              ],
            ),
          );
        }
    );
  }
}
