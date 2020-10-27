import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class PropertyDetail2 extends StatefulWidget {
  @override
  _PropertyDetail2State createState() => _PropertyDetail2State();
}

class _PropertyDetail2State extends State<PropertyDetail2> {
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
            image: AssetImage("assets/images/slider1.png"),
            fit: BoxFit.fill,
          )),
          child: Column(
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
              ),
              SizedBox(height: height * 0.54),
              Expanded(
                child: Container(
                  width: width,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: MyColors.white.withOpacity(0.70),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: CustomText(
                          text: "\$ 1.400.000",
                          color: MyColors.black,
                          fontSize: FontSizes.textSize22,
                          fontWeight: CustomWeights.fontWeight("Bold"),
                        ),
                      ),

                      SizedBox(height: height*0.01,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "m2",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize14,
                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                          ),
                          CustomText(
                            text: "215",
                            color: MyColors.black,
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
                            color: MyColors.black,
                            fontSize: FontSizes.textSize14,
                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                          ),
                          CustomText(
                            text: "4+1",
                            color: MyColors.black,
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
                            color: MyColors.black,
                            fontSize: FontSizes.textSize14,
                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                          ),
                          CustomText(
                            text: "Toronto",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize14,
                            // fontWeight: CustomWeights.fontWeight("Bold"),
                          ),
                        ],
                      ),

                      SizedBox(height: height*0.03,),

                      Container(
                        height: 50,
                        width: width,
                        child: RaisedButton(
                            color: MyColors.blue,
                            textColor: MyColors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: CustomText(
                              text: "Details",
                              fontWeight: CustomWeights.fontWeight("Bold"),
                              color: MyColors.white,
                              fontSize: FontSizes.textSize12,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/propertyDetail3');
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
