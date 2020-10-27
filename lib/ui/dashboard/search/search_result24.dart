import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SearchResultList24 extends StatefulWidget {
  @override
  _SearchResultList24State createState() => _SearchResultList24State();
}

class _SearchResultList24State extends State<SearchResultList24> {
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
                text: "List",
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
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/searchResult25');
                          },
                          child: Row(
                            children: [
                              Container(
                                height: height*0.15,
                                width: width*0.38,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/listImg.png"),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "\$ 1.400.000",
                                      color: MyColors.black,
                                      fontSize: FontSizes.textSize22,
                                      fontWeight: CustomWeights.fontWeight("Bold"),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text: "m2",
                                            color: MyColors.black,
                                            fontSize: FontSizes.textSize12,
                                            // fontWeight: CustomWeights.fontWeight("Regular"),
                                          ),

                                          CustomText(
                                            text: "215",
                                            color: MyColors.darkGrey8383,
                                            fontSize: FontSizes.textSize12,
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
                                            fontSize: FontSizes.textSize12,
                                            fontWeight: CustomWeights.fontWeight("Regular"),
                                          ),

                                          CustomText(
                                            text: "4+1",
                                            color: MyColors.darkGrey8383,
                                            fontSize: FontSizes.textSize12,
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
                                            fontSize: FontSizes.textSize12,
                                            fontWeight: CustomWeights.fontWeight("Regular"),
                                          ),

                                          CustomText(
                                            text: "toronto",
                                            color: MyColors.darkGrey8383,
                                            fontSize: FontSizes.textSize12,
                                            // fontWeight: CustomWeights.fontWeight("Bold"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
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
