import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class CountryScreen extends StatefulWidget {
  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
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
                text: Strings.countryTxt,
                color: MyColors.black,
                fontSize: FontSizes.textSize28,
                fontWeight: CustomWeights.fontWeight("Bold"),
              ),

              SizedBox(height: height * 0.05),

              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),

                              Container(
                                height: 25,
                                width: 35,
                                child: Image.asset("assets/images/CA.png", fit: BoxFit.fill,),
                              ),

                              SizedBox(width: 15,),

                              Column(
                                children: [
                                  CustomText(
                                    text: "Canada",
                                    color: MyColors.lightGreyText,
                                    fontSize: FontSizes.textSize12,
                                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                                  ),

                                  SizedBox(height: 5,),

                                  CustomText(
                                    text: "DOLLAR",
                                    color: MyColors.mediumGrey,
                                    fontSize: FontSizes.textSize10,
                                  )
                                ],
                              )
                            ],
                          ),

                          SizedBox(height: 15),

                          Divider(thickness: 1,)
                        ],
                      ),
                    );
                  }
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}
