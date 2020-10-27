import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/theme/text_weights.dart';
import 'package:property/ui/customWidgets/custom_text.dart';
import 'package:property/ui/customWidgets/input_decoration.dart';
import 'package:property/utils/font_Size.dart';
import 'package:property/utils/my_color.dart';
import 'package:property/utils/strings.dart';

class SupportFaqScreen extends StatefulWidget {
  @override
  _SupportFaqScreenState createState() => _SupportFaqScreenState();
}

class _SupportFaqScreenState extends State<SupportFaqScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: MyColors.lightBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              height: height*0.46,
              width: width,
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.darkGrey8383.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    )
                  ]
              ),
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
                    text: Strings.supportFaqTxt,
                    color: MyColors.black,
                    fontSize: FontSizes.textSize28,
                    fontWeight: CustomWeights.fontWeight("Bold"),
                  ),

                  SizedBox(height: height * 0.06),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: Strings.helloTxt,
                        color: MyColors.black,
                        fontSize: FontSizes.textSize16,
                        fontWeight: CustomWeights.fontWeight("SemiBold"),
                        align: CustomAlignment.fontAlign("center"),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: Strings.searchTxt,
                        color: MyColors.darkGrey8383,
                        fontSize: FontSizes.textSize14,
                        // fontWeight: CustomWeights.fontWeight("SemiBold"),
                        align: CustomAlignment.fontAlign("center"),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.02),

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
                          // hintText: 'Search',
                      ),
                      // obscureText: true,
                      // onSaved: (val) {
                      //   setState(() => _confirmPasswordController.text = val.trim());
                      // },
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: height*0.06),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: Strings.paymentDiscountTxt,
                      color: MyColors.darkGreyText,
                      fontSize: FontSizes.textSize12,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Totam rem aperiam"),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Sed quia consequuntur magni"),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Neque porro quisquam est"),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Aliquam quaerat voluptatem"),

                    SizedBox(height: height*0.05),

                    CustomText(
                      text: Strings.bookingInfoTxt,
                      color: MyColors.darkGreyText,
                      fontSize: FontSizes.textSize12,
                      fontWeight: CustomWeights.fontWeight("Bold"),
                    ),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Totam rem aperiam"),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Sed quia consequutur magni"),

                    SizedBox(height: height*0.030),

                    paymentBookingTxt(label: "Neque porro quisquam est"),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget paymentBookingTxt({String label}){
    return Row(
      children: [
        Icon(Icons.arrow_forward, color: MyColors.blue, size: 18,),

        SizedBox(width: 10,),

        CustomText(
          text: label,
          color: MyColors.darkGrey8383,
          fontSize: FontSizes.textSize14,
          // fontWeight: CustomWeights.fontWeight("Bold"),
        ),
      ],
    );
  }

}
