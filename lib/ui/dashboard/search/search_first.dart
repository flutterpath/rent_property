import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/ui/drawer/my_drawer.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SearchFirstScreen extends StatefulWidget {
  @override
  _SearchFirstScreenState createState() => _SearchFirstScreenState();
}

class _SearchFirstScreenState extends State<SearchFirstScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        drawer: DrawerScreen(),
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/slider3.png"),
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

                  SizedBox(height: height*0.38),

                  CustomText(
                    text: Strings.needPropertyTxt,
                    color: MyColors.white,
                    fontSize: FontSizes.textSize44,
                    fontWeight: CustomWeights.fontWeight("Bold"),
                  ),

                  SizedBox(height: height*0.01),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    height: height*0.29,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.20),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "LOCATION",
                          color: MyColors.white,
                          fontSize: FontSizes.textSize10,
                          fontWeight: CustomWeights.fontWeight("Bold"),
                        ),

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
                              fillColor: MyColors.white,
                              prefixIcon: Icon(Icons.search),
                            ),
                            // obscureText: true,
                            // onSaved: (val) {
                            //   setState(() => _confirmPasswordController.text = val.trim());
                            // },
                          ),
                        ),

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
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "PROPERTY TYPE",
                                          color: MyColors.white,
                                          fontSize: FontSizes.textSize10,
                                          // fontWeight: CustomWeights.fontWeight("Bold"),
                                        ),

                                        CustomText(
                                          text: "Residental",
                                          color: MyColors.white,
                                          fontSize: FontSizes.textSize14,
                                          fontWeight: CustomWeights.fontWeight("Bold"),
                                        ),
                                      ],
                                    ),
                                  )
                              ),

                              VerticalDivider(thickness: 1.0, color: MyColors.lightGrey,),

                              Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: "ROOMS",
                                          color: MyColors.white,
                                          fontSize: FontSizes.textSize10,
                                          // fontWeight: CustomWeights.fontWeight("Bold"),
                                        ),

                                        CustomText(
                                          text: "4+2",
                                          color: MyColors.white,
                                          fontSize: FontSizes.textSize14,
                                          fontWeight: CustomWeights.fontWeight("Bold"),
                                        ),
                                      ],
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 50,
                          width: width,
                          child: RaisedButton(
                              color: MyColors.blue,
                              textColor: MyColors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: CustomText(text: Strings.searchpropertyBtn, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white, fontSize: FontSizes.textSize12,),
                              onPressed: (){
                                Navigator.pushNamed(context, '/searchExpanded2');
                              }
                          ),
                        ),
                      ],
                    ),
                  ),

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
        ),
      ),
    );
  }
}
