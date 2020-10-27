import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  TextEditingController _searchController = TextEditingController();
  int i;

  Widget carDialog(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: [

        ],
      )
    );
  }

  @override
  void initState() {
    super.initState();
    i = 0;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.lightBackground.withOpacity(0.95),
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/roads.png"),
              fit: BoxFit.fill,
            ),
          ),
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
              ),

              SizedBox(height: height*0.01),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: CustomText(
                  text: "Map",
                  color: MyColors.black,
                  fontSize: FontSizes.textSize28,
                  fontWeight: CustomWeights.fontWeight("Bold"),
                ),
              ),

              SizedBox(height: height * 0.34),

              Container(
                height: height*0.12,
                child: Container(child: _mapItems(context)),
              ),

              SizedBox(height: height*0.025,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  height: height*0.2,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "LOCATION",
                        color: MyColors.greycolor989898,
                        fontSize: FontSizes.textSize10,
                        // fontWeight: CustomWeights.fontWeight(""),
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
                                )
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: height*0.025,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: width*0.4,
                      child: RaisedButton.icon(
                          color: MyColors.blue,
                          textColor: MyColors.white,
                          icon: Icon(Icons.filter_alt, color: MyColors.white,),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          label: CustomText(
                            text: "FILTERS",
                            fontWeight: CustomWeights.fontWeight("Bold"),
                            color: MyColors.white,
                            fontSize: FontSizes.textSize12,
                          ),
                          onPressed: () {
                            showDialog(context: context, builder: (context) => carDialog(context));
                          }),
                    ),

                    Container(
                      height: 50,
                      width: width*0.4,
                      child: RaisedButton.icon(
                          color: MyColors.blue,
                          textColor: MyColors.white,
                          icon: Icon(Icons.filter_alt, color: MyColors.white,),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          label: CustomText(
                            text: "ARRANGE",
                            fontWeight: CustomWeights.fontWeight("Bold"),
                            color: MyColors.white,
                            fontSize: FontSizes.textSize12,
                          ),
                          onPressed: () {
                            Color propertyColor= MyColors.greyContainer;
                            Color roomColor= MyColors.white;
                            i = 0;
                            showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return StatefulBuilder(builder: (context, StateSetter setState){

                                  return Material(
                                    type: MaterialType.transparency,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: width*0.04, vertical: height*0.055),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                            // A simplified version of dialog.
                                            width: width,
                                            height: height*0.45,
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
                                                        LengthLimitingTextInputFormatter(20),
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
                                                              i = 0;
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
                                                              i = 1;
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

                                                Expanded(
                                                    child: IndexedStack(
                                                      index: i,
                                                      children: <Widget>[
                                                        propertyTye(),
                                                        roomsSection()
                                                      ],
                                                    )
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
                                                onPressed: (){
                                                  Navigator.pushNamed(context, '/propertyDetail1');
                                                }
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              },
                            );
                          }
                        ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _mapItems(BuildContext context){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width*0.7,

              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/property.png"),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
                    ),

                  ),

                  SizedBox(width: 10),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(
                          text: "\$ 1.400.000",
                          color: MyColors.black,
                          fontWeight: CustomWeights.fontWeight("Bold"),
                          fontSize: FontSizes.textSize16,
                        ),

                        Divider(thickness: 1, color: MyColors.black,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "m2",
                              color: MyColors.black,
                              fontWeight: CustomWeights.fontWeight("SemiBold"),
                              fontSize: FontSizes.textSize12,
                            ),

                            CustomText(
                              text: "215",
                              color: MyColors.darkGrey8383,
                              fontWeight: CustomWeights.fontWeight("SemiBold"),
                              fontSize: FontSizes.textSize12,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Number of Rooms",
                              color: MyColors.black,
                              fontWeight: CustomWeights.fontWeight("SemiBold"),
                              fontSize: FontSizes.textSize12,
                            ),

                            CustomText(
                              text: "4+1",
                              color: MyColors.darkGrey8383,
                              fontWeight: CustomWeights.fontWeight("SemiBold"),
                              fontSize: FontSizes.textSize12,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
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

  Widget mapSecondDialog(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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

  Widget mapThirdDialog(BuildContext context){
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
