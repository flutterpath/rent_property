import 'package:flutter/material.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final controller = PageController(initialPage: 0, viewportFraction: 1.0,);
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  int currentPage = 0;
  int i;

  @override
  void initState() {
    i=0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.white,
        body: IndexedStack(
          index: i,

          children: <Widget>[

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/slider1.png"),
                  fit: BoxFit.fill,
                )
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -height*0.17,
                    child: Image.asset("assets/images/Bg.png", height: height*0.55, width: width, fit: BoxFit.cover,),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height*0.08),

                        CustomText(text: Strings.welcome, fontSize: FontSizes.textSize32, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.lightGreyText,),

                        CustomText(text: Strings.perspiciatis, color: MyColors.lightGreyText, fontSize: FontSizes.textSize14),

                        SizedBox(height: height*0.70),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: MyColors.white,
                                borderRadius: BorderRadius.circular(18)
                              ),
                              child: new IconButton(
                                  icon: new Icon(Icons.arrow_back_rounded, color: MyColors.blue,),onPressed: (){}),
                            ),

                            Container(
                              height: 50,
                              width: 120,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                textColor: MyColors.white,
                                color: MyColors.blue,
                                child: CustomText(text: Strings.nextbutton, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),
                                onPressed: (){
                                  setState(() {
                                    i=1;
                                  });
                                }
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/slider2.png"),
                    fit: BoxFit.fill,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height*0.08),

                  CustomText(text: Strings.welcome, fontSize: FontSizes.textSize32, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),

                  CustomText(text: Strings.perspiciatis, color: MyColors.white, fontSize: FontSizes.textSize14),

                  SizedBox(height: height*0.70),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(18)
                        ),
                        child: new IconButton(
                            icon: new Icon(Icons.arrow_back_rounded, color: MyColors.blue,),onPressed: (){
                          setState(() {
                            i=0;
                          });
                        }),
                      ),

                      Container(
                        height: 50,
                        width: 160,
                        child: OutlineButton(
                          onPressed: (){
                            setState(() {
                              i=2;
                            });
                          },
                          child: CustomText(text: Strings.nextbutton, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: MyColors.white, //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 2.0, //width of the border
                          ),
                        ),
                        // child: RaisedButton(
                        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        //     textColor: MyColors.white,
                        //     color: MyColors.blue,
                        //     child: CustomText(text: Strings.nextbutton, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),
                        //     onPressed: (){}
                        // ),
                      )
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/slider3.png"),
                    fit: BoxFit.fill,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.45),

                  CustomText(text: Strings.welcome, fontSize: FontSizes.textSize32, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),

                  CustomText(text: Strings.perspiciatis, color: MyColors.white, fontSize: FontSizes.textSize14),

                  SizedBox(height: height*0.07),

                  Container(
                    height: 50,
                    width: 160,
                    child: OutlineButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/signUpWelcome');
                      },
                      child: CustomText(text: Strings.nextbutton, fontWeight: CustomWeights.fontWeight("Bold"), color: MyColors.white,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      borderSide: BorderSide(
                        color: MyColors.white, //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 2.0, //width of the border
                      ),
                    ),
                  ),

                  SizedBox(height: height*0.2),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: new IconButton(
                        icon: new Icon(Icons.arrow_back_rounded, color: MyColors.blue,),onPressed: (){
                      setState(() {
                        i=1;
                      });
                    }),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
