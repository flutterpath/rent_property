import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class FavoritesEmpty extends StatefulWidget {
  @override
  _FavoritesEmptyState createState() => _FavoritesEmptyState();
}

class _FavoritesEmptyState extends State<FavoritesEmpty> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.lightBackground,
        body: Padding(
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
                        icon: Icon(Icons.arrow_back_ios, size: 18, color: MyColors.black,),
                        onPressed: (){}
                    ),

                    IconButton(
                        icon: Icon(Icons.more_vert, size: 25, color: MyColors.black,),
                        onPressed: (){}
                    ),
                  ],
                ),

                SizedBox(height: height*0.01),

                CustomText(
                  text: Strings.favoriteTxt,
                  color: MyColors.black,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.43),

                CustomText(
                  text: Strings.letsAddTxt,
                  color: MyColors.blue,
                  fontSize: FontSizes.textSize32,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.042),

                CustomText(
                  text: Strings.pressTxt,
                  color: MyColors.greycolor989898,
                  fontSize: FontSizes.textSize14,
                  // fontWeight: CustomWeights.fontWeight("Bold"),
                ),

                SizedBox(height: height*0.042),

                Container(
                  height: 50,
                  width: width,
                  child: RaisedButton(
                      color: MyColors.blue,
                      textColor: MyColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: CustomText(text: Strings.searchBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                      onPressed: (){}
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
