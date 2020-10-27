import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class PropertyDetail3 extends StatefulWidget {
  @override
  _PropertyDetail3State createState() => _PropertyDetail3State();
}

class _PropertyDetail3State extends State<PropertyDetail3> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/property_detail.png"),
                fit: BoxFit.fill,
              )),
          child: Padding(
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
                          color: MyColors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          size: 25,
                          color: MyColors.white,
                        ),
                        onPressed: () {}),
                  ],
                ),

                SizedBox(height: height * 0.01),
                CustomText(
                  text: "Detail",
                  color: MyColors.white,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height * 0.6),

                CustomText(
                  text: "\$ 1.400.000",
                  color: MyColors.white,
                  fontSize: FontSizes.textSize32,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.01,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "m2",
                      color: MyColors.white,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("SemiBold"),
                    ),
                    CustomText(
                      text: "215",
                      color: MyColors.white,
                      fontSize: FontSizes.textSize14,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: Strings.numberOfRoomsTxt,
                      color: MyColors.white,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("SemiBold"),
                    ),
                    CustomText(
                      text: "4+1",
                      color: MyColors.white,
                      fontSize: FontSizes.textSize14,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: Strings.districtTxt,
                      color: MyColors.white,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("SemiBold"),
                    ),
                    CustomText(
                      text: "Toronto",
                      color: MyColors.white,
                      fontSize: FontSizes.textSize14,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
