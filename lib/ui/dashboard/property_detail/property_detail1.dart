import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class PropertyDetail1 extends StatefulWidget {
  @override
  _PropertyDetail1State createState() => _PropertyDetail1State();
}

class _PropertyDetail1State extends State<PropertyDetail1> {
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
                image: AssetImage("assets/images/property_bg.png"),
                fit: BoxFit.fill,
              )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.04),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.04),

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

                  SizedBox(height: height*0.54),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    height: height*0.2,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.30),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: CustomText(
                            text: "\$ 1.400.000",
                            color: MyColors.white,
                            fontSize: FontSizes.textSize22,
                            fontWeight: CustomWeights.fontWeight("Bold"),
                          ),
                        ),

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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Toronto",
                              color: MyColors.white,
                              fontSize: FontSizes.textSize10,
                              // fontWeight: CustomWeights.fontWeight("Bold"),
                            ),
                            
                            Icon(Icons.keyboard_arrow_down, color: MyColors.white, size: 28,)
                          ],
                        )

                      ],
                    ),
                  ),

                  SizedBox(height: height*0.025),

                  Container(
                    height: 50,
                    width: width,
                    child: RaisedButton(
                        color: MyColors.blue,
                        textColor: MyColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: CustomText(text: "Call Now", fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                        onPressed: (){
                          Navigator.pushNamed(context, '/propertyDetail2');
                        }
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
