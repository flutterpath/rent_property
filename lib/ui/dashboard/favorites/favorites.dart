import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.04),

              IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 18, color: MyColors.black,),
                  onPressed: (){}
              ),

              SizedBox(height: height*0.01),

              CustomText(
                text: "Favorites",
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),

              SizedBox(height: height*0.07),

              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index){
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            height: MediaQuery.of(context).size.height*0.24,
                            width: width,
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
                                    Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: MyColors.white.withOpacity(0.20),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: Icon(Icons.favorite, size: 20, color: MyColors.redColor,)
                                    )
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
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "m2",
                                  color: MyColors.black,
                                  fontSize: FontSizes.textSize14,
                                  // fontWeight: CustomWeights.fontWeight("Regular"),
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
                            padding: const EdgeInsets.only(top: 10),
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
                            padding: const EdgeInsets.only(top: 10),
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

                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Divider(thickness: 1,),
                          )
                        ],
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
