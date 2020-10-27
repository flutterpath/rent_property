import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class CityDetailResult extends StatefulWidget {
  @override
  _CityDetailResultState createState() => _CityDetailResultState();
}

class _CityDetailResultState extends State<CityDetailResult> {
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
                image: AssetImage("assets/images/bali.png"),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.04),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.04),
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

              SizedBox(height: height*0.02),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.04),
                child: CustomText(
                  text: "Bali",
                  color: MyColors.white,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),
              ),

              SizedBox(height: height*0.15),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: MyColors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios, color: MyColors.blue, size: 18,),

                          CustomText(
                            text: "Back to Search",
                            color: MyColors.black,
                            fontSize: FontSizes.textSize14,
                          ),
                        ],
                      ),

                      SizedBox(height: height*0.03),

                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Sales",
                              color: MyColors.black,
                              fontSize: FontSizes.textSize16,
                              fontWeight: CustomWeights.fontWeight("Bold"),
                            ),

                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/searchResultList24');
                              },
                              child: CustomText(
                                text: "SEE ALL",
                                color: MyColors.mediumGrey,
                                fontSize: FontSizes.textSize10,
                                fontWeight: CustomWeights.fontWeight("SemiBold"),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height*0.032),

                      Container(
                        height: height*0.28,
                        child: salesList(),
                      ),

                      SizedBox(height: height*0.032),

                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Popular properties",
                              color: MyColors.black,
                              fontSize: FontSizes.textSize16,
                              fontWeight: CustomWeights.fontWeight("Bold"),
                            ),

                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/searchResultList24');
                              },
                              child: CustomText(
                                text: "SEE ALL",
                                color: MyColors.mediumGrey,
                                fontSize: FontSizes.textSize10,
                                fontWeight: CustomWeights.fontWeight("SemiBold"),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height*0.02),

                      Expanded(
                        child: Container(
                          child: popularPropertyList(),
                        ),
                      ),

                    ],
                  ),
                )
              )


              /*Container(
                height: 50,
                width: width,
                child: RaisedButton(
                    color: MyColors.blue,
                    textColor: MyColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: CustomText(text: Strings.sendBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                    onPressed: (){}
                ),
              ),*/

            ],
          ),
        ),
      ),
    );
  }

  Widget salesList(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height*0.19,
                width: MediaQuery.of(context).size.width*0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/sales_img.png"),
                    fit: BoxFit.fill
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border, size: 20,)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "\$ 1.400.00",
                          color: MyColors.white,
                          fontSize: FontSizes.textSize22,
                          fontWeight: CustomWeights.fontWeight("Bold"),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "m2",
                      color: MyColors.black,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("Regular"),
                    ),

                    CustomText(
                      text: "215",
                      color: MyColors.darkGrey8383,
                      fontSize: FontSizes.textSize14,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Number of Rooms",
                      color: MyColors.black,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("Regular"),
                    ),

                    CustomText(
                      text: "4+1",
                      color: MyColors.darkGrey8383,
                      fontSize: FontSizes.textSize14,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "District",
                      color: MyColors.black,
                      fontSize: FontSizes.textSize14,
                      fontWeight: CustomWeights.fontWeight("Regular"),
                    ),

                    CustomText(
                      text: "toronto",
                      color: MyColors.darkGrey8383,
                      fontSize: FontSizes.textSize14,
                      // fontWeight: CustomWeights.fontWeight("Bold"),
                    ),
                  ],
                ),
              ),

            ],
          ),
        );
      }
    );
  }

  Widget popularPropertyList(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height*0.12,
                width: MediaQuery.of(context).size.width*0.34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/property.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: CustomText(
                  text: "\$ 360.000",
                  color: MyColors.black,
                  fontSize: FontSizes.textSize12,
                  fontWeight: CustomWeights.fontWeight("SemiBold"),
                ),
              ),

              CustomText(
                text: "3 bed     2 bath",
                color: MyColors.blue,
                fontSize: FontSizes.textSize10,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

            ],
          ),
        );
      }
    );
  }
}
