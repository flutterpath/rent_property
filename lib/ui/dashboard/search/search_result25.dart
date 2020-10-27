import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class SearchResult25 extends StatefulWidget {
  @override
  _SearchResult25State createState() => _SearchResult25State();
}

class _SearchResult25State extends State<SearchResult25> {
  TextEditingController _searchController = TextEditingController();
  int i, dialogIndex;
  Color propertyColor= MyColors.white;
  Color roomColor= MyColors.white;
  var containerHeight;

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

        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: InkWell(
                onTap: (){
                  i=0;
                  var _value = 6.0;
                  dialogIndex= 0;
                  containerHeight = height*0.25;
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return StatefulBuilder(builder: (context, StateSetter setState){

                        return Material(
                          type: MaterialType.transparency,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width*0.04, vertical: height*0.055),
                            child: dialogIndex == 0 ? Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                  // A simplified version of dialog.
                                  width: width,
                                  height: containerHeight,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: CustomText(
                                          text: "LOCATION",
                                          color: MyColors.greycolor989898,
                                          fontSize: FontSizes.textSize10,
                                          // fontWeight: CustomWeights.fontWeight("Bold"),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5, bottom: 15),
                                        child: SizedBox(
                                          height: 40,
                                          child: TextFormField(
                                            controller: _searchController,
                                            autofocus: false,
                                            maxLines: 1,
                                            style: TextStyle(fontSize: FontSizes.textSize14),
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  20),
                                              // ignore: deprecated_member_use
                                              // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                                            ],
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: textInputDecoration.copyWith(
                                              prefixIcon: Icon(Icons.search),
                                            ),
                                            // obscureText: true,
                                            // onSaved: (val) {
                                            //   setState(() => _confirmPasswordController.text = val.trim());
                                            // },
                                          ),
                                        ),
                                      ),

                                      Container(
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
                                                    i = 1;
                                                    containerHeight=height*0.45;
                                                    propertyColor= MyColors.greyContainer;
                                                    roomColor = MyColors.white;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    color: propertyColor,
                                                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
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
                                                    i = 2;
                                                    containerHeight=height*0.45;
                                                    roomColor= MyColors.greyContainer;
                                                    propertyColor= MyColors.white;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    color: roomColor,
                                                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
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
                                          minHeight: height*0.0,
                                          maxHeight: height*0.2,
                                        ),
                                        child: i == 0 ? Container(height: 0,)
                                            : i==1 ? propertyTye()
                                            : roomsSection(),
                                        // child: IndexedStack(
                                        //   index: i,
                                        //   children: <Widget>[
                                        //     Container(),
                                        //     propertyTye(),
                                        //     roomsSection()
                                        //   ],
                                        // )
                                      )

                                    ],
                                  ),
                                ),

                                SizedBox(height: 20),

                                Container(
                                  height: 50,
                                  width: width,
                                  child: RaisedButton(
                                      child: Text("Apply"),
                                      color: MyColors.blue,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      onPressed: (){
                                        setState((){
                                          dialogIndex = 1;
                                        });
                                      }
                                  ),
                                )
                              ],
                            )
                              : dialogIndex == 1 ? Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                  // A simplified version of dialog.
                                  width: width,
                                  height: height*0.4,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: "Decreasing by price",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize14,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      CustomText(
                                        text: "Increasing by price",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize14,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      CustomText(
                                        text: "Descending by Date",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize14,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      CustomText(
                                        text: "Ascending by Date",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize14,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      CustomText(
                                        text: "By address (A-Z)",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize14,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      CustomText(
                                        text: "By address (Z-A)",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize14,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      )
                                    ],
                                  ),
                                ),

                                SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: width*0.45,
                                      child: RaisedButton.icon(
                                          icon: Icon(Icons.sort),
                                          label: CustomText(
                                            text: "Filters",
                                            color: MyColors.mediumGrey,
                                            fontSize: FontSizes.textSize14,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),
                                          color: MyColors.lightBackground,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          onPressed: (){}
                                      ),
                                    ),

                                    Container(
                                      height: 50,
                                      width: width*0.45,
                                      child: RaisedButton(
                                          child: CustomText(
                                            text: "Apply",
                                            color: MyColors.white,
                                            fontSize: FontSizes.textSize14,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),
                                          color: MyColors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          onPressed: (){
                                            setState((){
                                              dialogIndex = 2;
                                            });
                                          }
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                              : Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                  // A simplified version of dialog.
                                  width: width,
                                  height: height*0.56,
                                  decoration: BoxDecoration(
                                      color: MyColors.white,
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // first slider
                                      CustomText(
                                        text: "Price",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize12,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      SizedBox(height: 25,),

                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: MyColors.lightGrey,
                                          inactiveTrackColor: MyColors.lightGrey,
                                          trackShape: RectangularSliderTrackShape(),
                                          trackHeight: 3.0,
                                          thumbColor: MyColors.white,

                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0, elevation: 5,),
                                          overlayColor: MyColors.lightGrey,
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                                        ),
                                        child: Slider(
                                          min: 0,
                                          max: 100,
                                          value: _value,
                                          onChanged: (value) {
                                            setState(() {
                                              _value = value;
                                              print(_value);
                                            });
                                          },
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text: "min. \$ 240.000",
                                            color: MyColors.mediumGrey,
                                            fontSize: FontSizes.textSize10,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),

                                          CustomText(
                                            text: "max. \$ 800.000",
                                            color: MyColors.mediumGrey,
                                            fontSize: FontSizes.textSize10,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 30,),

                                      // Second slider
                                      CustomText(
                                        text: "m2",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize12,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      SizedBox(height: 25,),

                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: MyColors.lightGrey,
                                          inactiveTrackColor: MyColors.lightGrey,
                                          trackShape: RectangularSliderTrackShape(),
                                          trackHeight: 3.0,
                                          thumbColor: MyColors.white,

                                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0, elevation: 5,),
                                          overlayColor: MyColors.lightGrey,
                                          overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                                        ),
                                        child: Slider(
                                          min: 0,
                                          max: 100,
                                          value: _value,
                                          onChanged: (value) {
                                            setState(() {
                                              _value = value;
                                              print(_value);
                                            });
                                          },
                                        ),
                                      ),

                                      SizedBox(height: 5,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text: "min. 45",
                                            color: MyColors.mediumGrey,
                                            fontSize: FontSizes.textSize10,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),

                                          CustomText(
                                            text: "max. 240",
                                            color: MyColors.mediumGrey,
                                            fontSize: FontSizes.textSize10,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: height*0.03),

                                      CustomText(
                                        text: "Features",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize12,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      SizedBox(height: height*0.02),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Chip(
                                            label: Text('Near Centrum'),
                                          ),

                                          Chip(
                                            label: Text('Pool'),
                                          ),

                                          Chip(
                                            label: Text('Garden'),
                                          ),

                                          Chip(
                                            label: Text('Security'),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: height*0.02),

                                      CustomText(
                                        text: "Heating",
                                        color: MyColors.black,
                                        fontSize: FontSizes.textSize12,
                                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                                      ),

                                      SizedBox(height: height*0.02),

                                      Wrap(
                                        spacing: 20.0,
                                        children: [
                                          Chip(
                                            label: Text('Near Centrum'),
                                          ),

                                          Chip(
                                            label: Text('Pool'),
                                          ),

                                          Chip(
                                            label: Text('Garden'),
                                          ),

                                          Chip(
                                            label: Text('Security'),
                                          ),

                                          Chip(
                                            label: Text('Garden'),
                                          ),

                                          Chip(
                                            label: Text('Security'),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                                SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: width*0.45,
                                      child: RaisedButton.icon(
                                          icon: Icon(Icons.sort),
                                          label: CustomText(
                                            text: "Filters",
                                            color: MyColors.mediumGrey,
                                            fontSize: FontSizes.textSize14,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),
                                          color: MyColors.lightBackground,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          onPressed: (){}
                                      ),
                                    ),

                                    Container(
                                      height: 50,
                                      width: width*0.45,
                                      child: RaisedButton(
                                          child: CustomText(
                                            text: "Apply",
                                            color: MyColors.white,
                                            fontSize: FontSizes.textSize14,
                                            fontWeight: CustomWeights.fontWeight("SemiBold"),
                                          ),
                                          color: MyColors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          onPressed: (){
                                            Navigator.pushNamed(context, '/mapScreen');
                                          }
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      });
                    },
                  );
                },
                child: Icon(Icons.search)),
            ),
          ],
        ),
      ),
    );
  }

  void openDialog(double height, double width) {
    var containerHeight = height*0.25;
    showDialog(
      context: context,
      builder: (BuildContext context){
        return StatefulBuilder(builder: (context, StateSetter setState){

          return Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.04, vertical: height*0.055),
              child: firstDialog(context, height, width),
            ),
          );
        });
      },
    );
  }

  Widget propertyTye(){
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: 3,
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

  _first(double height){
    i = 1;
    containerHeight=height*0.45;
    propertyColor= MyColors.greyContainer;
    roomColor = MyColors.white;
    setState(() {});
  }

  Widget firstDialog(BuildContext context, double height, double width){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          // A simplified version of dialog.
          width: width,
          height: containerHeight,
          decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(30)
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomText(
                  text: "LOCATION",
                  color: MyColors.greycolor989898,
                  fontSize: FontSizes.textSize10,
                  // fontWeight: CustomWeights.fontWeight("Bold"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 15),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _searchController,
                    autofocus: false,
                    maxLines: 1,
                    style: TextStyle(fontSize: FontSizes.textSize14),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(
                          20),
                      // ignore: deprecated_member_use
                      // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
                    keyboardType: TextInputType.emailAddress,
                    decoration: textInputDecoration.copyWith(
                      prefixIcon: Icon(Icons.search),
                    ),
                    // obscureText: true,
                    // onSaved: (val) {
                    //   setState(() => _confirmPasswordController.text = val.trim());
                    // },
                  ),
                ),
              ),

              Container(
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
                            i = 1;
                            containerHeight=height*0.45;
                            propertyColor= MyColors.greyContainer;
                            roomColor = MyColors.white;
                            setState(() {});
                          },
                          child: Container(
                            color: propertyColor,
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
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
                            i = 2;
                            containerHeight=height*0.45;
                            roomColor= MyColors.greyContainer;
                            propertyColor= MyColors.white;
                            setState(() {});
                          },
                          child: Container(
                            color: roomColor,
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
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
                  minHeight: height*0.0,
                  maxHeight: height*0.2,
                ),
                child: i == 0 ? Container(height: 0,)
                    : i==1 ? propertyTye()
                    : roomsSection(),
                // child: IndexedStack(
                //   index: i,
                //   children: <Widget>[
                //     Container(),
                //     propertyTye(),
                //     roomsSection()
                //   ],
                // )
              )

            ],
          ),
        ),

        SizedBox(height: 20),

        Container(
          height: 50,
          width: width,
          child: RaisedButton(
              child: Text("Apply"),
              color: MyColors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: (){}
          ),
        )
      ],
    );
  }

  Widget mapSecondDialog(BuildContext context, double height, double width){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          // A simplified version of dialog.
          width: width,
          height: height*0.4,
          decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(30)
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "Decreasing by price",
                color: MyColors.black,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              CustomText(
                text: "Increasing by price",
                color: MyColors.black,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              CustomText(
                text: "Descending by Date",
                color: MyColors.black,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              CustomText(
                text: "Ascending by Date",
                color: MyColors.black,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              CustomText(
                text: "By address (A-Z)",
                color: MyColors.black,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              CustomText(
                text: "By address (Z-A)",
                color: MyColors.black,
                fontSize: FontSizes.textSize14,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              )
            ],
          ),
        ),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: width*0.45,
              child: RaisedButton.icon(
                  icon: Icon(Icons.sort),
                  label: CustomText(
                    text: "Filters",
                    color: MyColors.mediumGrey,
                    fontSize: FontSizes.textSize14,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),
                  color: MyColors.lightBackground,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: (){}
              ),
            ),

            Container(
              height: 50,
              width: width*0.45,
              child: RaisedButton(
                  child: CustomText(
                    text: "Apply",
                    color: MyColors.white,
                    fontSize: FontSizes.textSize14,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),
                  color: MyColors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: (){}
              ),
            )
          ],
        )
      ],
    );
  }

  Widget thirdDialog(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var _value = 6.0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          // A simplified version of dialog.
          width: width,
          height: height*0.56,
          decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(30)
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // first slider
              CustomText(
                text: "Price",
                color: MyColors.black,
                fontSize: FontSizes.textSize12,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              SizedBox(height: 25,),

              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: MyColors.lightGrey,
                  inactiveTrackColor: MyColors.lightGrey,
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 3.0,
                  thumbColor: MyColors.white,

                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0, elevation: 5,),
                  overlayColor: MyColors.lightGrey,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                ),
                child: Slider(
                  min: 0,
                  max: 100,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      print(_value);
                    });
                  },
                ),
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "min. \$ 240.000",
                    color: MyColors.mediumGrey,
                    fontSize: FontSizes.textSize10,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),

                  CustomText(
                    text: "max. \$ 800.000",
                    color: MyColors.mediumGrey,
                    fontSize: FontSizes.textSize10,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),
                ],
              ),

              SizedBox(height: 30,),

              // Second slider
              CustomText(
                text: "m2",
                color: MyColors.black,
                fontSize: FontSizes.textSize12,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              SizedBox(height: 25,),

              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: MyColors.lightGrey,
                  inactiveTrackColor: MyColors.lightGrey,
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 3.0,
                  thumbColor: MyColors.white,

                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0, elevation: 5,),
                  overlayColor: MyColors.lightGrey,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                ),
                child: Slider(
                  min: 0,
                  max: 100,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      print(_value);
                    });
                  },
                ),
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "min. 45",
                    color: MyColors.mediumGrey,
                    fontSize: FontSizes.textSize10,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),

                  CustomText(
                    text: "max. 240",
                    color: MyColors.mediumGrey,
                    fontSize: FontSizes.textSize10,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),
                ],
              ),

              SizedBox(height: height*0.03),

              CustomText(
                text: "Features",
                color: MyColors.black,
                fontSize: FontSizes.textSize12,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              SizedBox(height: height*0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Text('Near Centrum'),
                  ),

                  Chip(
                    label: Text('Pool'),
                  ),

                  Chip(
                    label: Text('Garden'),
                  ),

                  Chip(
                    label: Text('Security'),
                  ),
                ],
              ),

              SizedBox(height: height*0.02),

              CustomText(
                text: "Heating",
                color: MyColors.black,
                fontSize: FontSizes.textSize12,
                fontWeight: CustomWeights.fontWeight("SemiBold"),
              ),

              SizedBox(height: height*0.02),

              Wrap(
                spacing: 20.0,
                children: [
                  Chip(
                    label: Text('Near Centrum'),
                  ),

                  Chip(
                    label: Text('Pool'),
                  ),

                  Chip(
                    label: Text('Garden'),
                  ),

                  Chip(
                    label: Text('Security'),
                  ),

                  Chip(
                    label: Text('Garden'),
                  ),

                  Chip(
                    label: Text('Security'),
                  ),
                ],
              ),

            ],
          ),
        ),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: width*0.45,
              child: RaisedButton.icon(
                  icon: Icon(Icons.sort),
                  label: CustomText(
                    text: "Filters",
                    color: MyColors.mediumGrey,
                    fontSize: FontSizes.textSize14,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),
                  color: MyColors.lightBackground,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: (){}
              ),
            ),

            Container(
              height: 50,
              width: width*0.45,
              child: RaisedButton(
                  child: CustomText(
                    text: "Apply",
                    color: MyColors.white,
                    fontSize: FontSizes.textSize14,
                    fontWeight: CustomWeights.fontWeight("SemiBold"),
                  ),
                  color: MyColors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: (){}
              ),
            )
          ],
        )
      ],
    );
  }

}
