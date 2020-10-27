import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/dashboard/support_faq.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        height: height,
        width: width*0.7,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.06),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/searchExpanded2');
                },
                child: CustomText(
                  text: "SEARCH",
                  fontSize: FontSizes.textSize12,
                  color: MyColors.black,
                  fontWeight: CustomWeights.fontWeight("SemiBold"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Divider(thickness: 1,),
              ),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/userProfile');
                },
                child: CustomText(
                  text: "USER",
                  fontSize: FontSizes.textSize12,
                  color: MyColors.black,
                  fontWeight: CustomWeights.fontWeight("SemiBold"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Divider(thickness: 1,),
              ),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/privacyPolicyScreen');
                },
                child: CustomText(
                  text: "PRIVACY POLICY",
                  fontSize: FontSizes.textSize12,
                  color: MyColors.black,
                  fontWeight: CustomWeights.fontWeight("SemiBold"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Divider(thickness: 1,),
              ),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/supportFaqScreen');
                },
                child: CustomText(
                  text: "SUPPORT & FAQs",
                  fontSize: FontSizes.textSize12,
                  color: MyColors.black,
                  fontWeight: CustomWeights.fontWeight("SemiBold"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
