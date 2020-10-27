import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SocialMediaScreen extends StatefulWidget {
  @override
  _SocialMediaScreenState createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
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
                text: Strings.socialMedia,
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),

              SizedBox(height: height * 0.072),

              mediaTiles(imgPath: "assets/images/ic_fb.png", title: "Facebook", trailingImgPath: "assets/images/ic_link.png"),

              SizedBox(height: 10,),

              mediaTiles(imgPath: "assets/images/ic_twitter.png", title: "Twitter", trailingImgPath: "assets/images/ic_link.png"),

              SizedBox(height: 10),

              mediaTiles(imgPath: "assets/images/ic_pinterest.png", title: "Pinterest", trailingImgPath: "assets/images/ic_link.png"),

              SizedBox(height: 10,),

              mediaTiles(imgPath: "assets/images/ic_insta.png", title: "Instagram", trailingImgPath: "assets/images/ic_link.png")

            ],
          ),
        ),
      ),
    );
  }

  Widget mediaTiles({String imgPath, String title, String trailingImgPath}){
    return Container(
        padding: EdgeInsets.all(12),
        height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.width,
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
            Image.asset(imgPath, height: 42, width: 42,),

            SizedBox(width: 15),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: title,
                  color: MyColors.black,
                  fontSize: FontSizes.textSize14,
                ),
              ],
            ),

            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(trailingImgPath, height: 18, width: 18,),
                  ],
                )
            )
          ],
        )
      // ListTile(
      //   leading: Image.asset("assets/images/ic_fb.png", height: 30, width: 30,),
      //   title: CustomText(
      //     text: Strings.facebook,
      //   ),
      //   trailing: Image.asset("assets/images/ic_link.png"),
      // ),
    );
  }
}
