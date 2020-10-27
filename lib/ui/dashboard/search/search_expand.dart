import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class SearchExpanded2 extends StatefulWidget {
  @override
  _SearchExpanded2State createState() => _SearchExpanded2State();
}

class _SearchExpanded2State extends State<SearchExpanded2> {
  TextEditingController _searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int i;

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
                height: height*0.35,
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
                      text: "Search",
                      color: MyColors.black,
                      fontSize: FontSizes.textSize28,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    SizedBox(height: height * 0.06),

                    CustomText(
                      text: "LOCATION",
                      fontSize: FontSizes.textSize10,
                      color: MyColors.greycolor989898,
                    ),

                    SizedBox(height: 10,),

                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        controller: _searchController,
                        autofocus: false,
                        maxLines: 1,
                        style: TextStyle(fontSize: FontSizes.textSize14),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                          // ignore: deprecated_member_use
                          // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                        ],
                        keyboardType: TextInputType.emailAddress,
                        decoration: textInputDecoration.copyWith(
                            prefixIcon: Icon(Icons.search),
                        // obscureText: true,
                        // onSaved: (val) {
                        //   setState(() => _confirmPasswordController.text = val.trim());
                        // },
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    InkWell(
                      onTap: (){
                        i=0;
                        showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return StatefulBuilder(builder: (context, StateSetter setState){

                              return Material(
                                type: MaterialType.transparency,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      // height: height*0.35,
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
                                            text: "Search",
                                            color: MyColors.black,
                                            fontSize: FontSizes.textSize28,
                                            fontWeight: CustomWeights.fontWeight("Bold"),
                                          ),

                                          SizedBox(height: height * 0.06),

                                          CustomText(
                                            text: "LOCATION",
                                            fontSize: FontSizes.textSize10,
                                            color: MyColors.greycolor989898,
                                          ),

                                          SizedBox(height: 10,),

                                          SizedBox(
                                            height: 40,
                                            child: TextFormField(
                                              controller: _searchController,
                                              autofocus: false,
                                              maxLines: 1,
                                              style: TextStyle(fontSize: FontSizes.textSize14),
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(20),
                                                // ignore: deprecated_member_use
                                                // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                                              ],
                                              keyboardType: TextInputType.emailAddress,
                                              decoration: textInputDecoration.copyWith(
                                                prefixIcon: Icon(Icons.search),
                                                // obscureText: true,
                                                // onSaved: (val) {
                                                //   setState(() => _confirmPasswordController.text = val.trim());
                                                // },
                                              ),
                                            ),
                                          ),

                                          SizedBox(height: 15),

                                          Container(
                                            padding: const EdgeInsets.symmetric(vertical: 10),
                                            height: height*0.075,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(width: 1.0, color: MyColors.lightGrey),
                                                bottom: BorderSide(width: 1.0, color: MyColors.lightGrey),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: InkWell(
                                                      onTap: (){
                                                        i=1;
                                                        setState(() {});
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            CustomText(
                                                              text: "PROPERTY TYPE",
                                                              color: MyColors.greycolor989898,
                                                              fontSize: FontSizes.textSize10,
                                                              // fontWeight: CustomWeights.fontWeight("Bold"),
                                                            ),

                                                            CustomText(
                                                              text: "Residental + Build...",
                                                              color: MyColors.black,
                                                              fontSize: FontSizes.textSize14,
                                                              fontWeight: CustomWeights.fontWeight("Bold"),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                ),

                                                VerticalDivider(thickness: 1.0, color: MyColors.lightGrey,),

                                                Expanded(
                                                    child: InkWell(
                                                      onTap: (){
                                                        i=2;
                                                        setState(() {});
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            CustomText(
                                                              text: "ROOMS",
                                                              color: MyColors.greycolor989898,
                                                              fontSize: FontSizes.textSize10,
                                                              // fontWeight: CustomWeights.fontWeight("Bold"),
                                                            ),

                                                            CustomText(
                                                              text: "4+2",
                                                              color: MyColors.black,
                                                              fontSize: FontSizes.textSize14,
                                                              fontWeight: CustomWeights.fontWeight("Bold"),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                )
                                              ],
                                            ),
                                          ),

                                          ConstrainedBox(
                                            constraints: BoxConstraints(
                                              maxHeight: height*0.2,
                                              minHeight: height*0.0,
                                            ),
                                            child: i == 0 ? Container(height: 0,)
                                                : i==1 ? propertyTye()
                                                : roomsSection(),
                                            // child: IndexedStack(
                                            //   index: i,
                                            //   children: <Widget>[
                                            //     Container(height: 0,),
                                            //     Container(height: 0,),
                                            //     Container(height: 0,),
                                            //     // propertyTye(),
                                            //     // roomsSection()
                                            //   ],
                                            // ),
                                          ),

                                          SizedBox(height: 15),

                                          Container(
                                            height: 50,
                                            width: width,
                                            child: RaisedButton(
                                                child: Text("Search Properties"),
                                                color: MyColors.blue,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20)),
                                                onPressed: (){
                                                  Navigator.pushNamed(context, '/cityDetailScreen');
                                                }
                                            ),
                                          ),

                                          SizedBox(height: 15),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: 'more', style: TextStyle(fontSize: FontSizes.textSize12, color: MyColors.mediumGrey)),
                                WidgetSpan(
                                    child: Icon(Icons.keyboard_arrow_down, size: 20,)
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: height * 0.03),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Popular Cities",
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

              SizedBox(height: height*0.02,),

              Container(
                height: height*0.25,
                // constraints: BoxConstraints(
                //   minHeight: height*0.1,
                //   maxHeight: height*0.2,
                //   minWidth: width,
                // ),
                // height: height*0.15,
                child: Container(child: _popularCities(context)),
              ),

              SizedBox(height: height*0.04),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Popular Properties",
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
                child: Container(child: _popularProperty()),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCities(BuildContext context){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/monaco.png"),
                    fit: BoxFit.fill
                  ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        }
    );
  }

  Widget _popularProperty(){
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

  Widget propertyTye(){
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Residential",
                          color: MyColors.black,
                          fontSize: FontSizes.textSize12,
                          fontWeight: CustomWeights.fontWeight("SemiBold"),
                        ),

                        SizedBox(
                          height: 30,
                          width: 80,
                          child: OutlineButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: CustomText(
                              text: "Remove",
                              color: MyColors.mediumGrey,
                              fontSize: FontSizes.textSize12,
                            ),
                            onPressed: (){},
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(thickness: 1,)
                ],
              ),
            );
          }
      ),
    );
  }

  Widget roomsSection(){
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "ROOMS",
                        color: MyColors.black,
                        fontSize: FontSizes.textSize12,
                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                      ),

                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                                child: IconButton(
                                  icon: Icon(Icons.add_circle_outline, color: MyColors.blue),
                                  onPressed: (){},
                                )
                            ),
                            WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: CustomText(
                                    text: "4",
                                    color: MyColors.black,
                                    fontSize: FontSizes.textSize14,
                                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                                  ),
                                )
                            ),
                            WidgetSpan(
                                child: IconButton(
                                  icon: Icon(Icons.remove_circle_outline, color: MyColors.blue,),
                                  onPressed: (){},
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Divider(thickness: 1,)
                ],
              ),
            );
          }
      ),
    );
  }

}
