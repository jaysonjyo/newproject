import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferAndEarnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Stack(
              children: [
                Container(
                  width: double.infinity,

                 // color: Colors.red,

                  child: Column(
                    children: [
                      Image.asset("assets/referalpage.png"),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 28.w),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 17.h,),
                      Row(
                        children: [
                          Container(
                            width: 41.w,
                            height: 41.h,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.w, color: Color(0xFFE8ECF4)),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            child: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,),
                          ),
                          SizedBox(width: 10.w,),
                          Text(
                            'Refer and Earn',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 36.h,),
                      Text(
                        'Earn ₹2000/-',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0.07.h,
                        ),
                      ),SizedBox(height: 25.h,),
                      Opacity(
                        opacity: 0.90,
                        child: Text(
                          'Refer your Friend',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.09.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Card Section

                Padding(
                  padding:  EdgeInsets.only(top: 120.h),
                  child: Container(
                    // width: 368.w,
                    height: 270.22.h,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                            image: AssetImage("assets/refercard.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),



            // Referral Code Section

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0.w),
              child: DottedBorder(
                color: Colors.grey,
                // Border color
                strokeWidth: 1,
                // Border thickness
                dashPattern: [6, 4],
                // Length of dashes and gaps
                borderType: BorderType.RRect,
                // Rounded rectangle border
                radius: Radius.circular(10.r),
                // Border radius
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DISKUSS2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(
                        Icons.copy,
                        color: Colors.grey,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            // How it Works Section
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100.w,
                        height: 2.h,
                        color: Color(0xDBDCDCDF),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'How it works!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0.09.h,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        width: 100.w,
                        height: 2.h,
                        color: Color(0xCFE2E2E6),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStepItem(
                        "assets/navigation.png",
                        'Invite your friends \n And Families',
                        'Share the link with you \n Friends & other social\n platform.',
                      ),
                      _buildStepItem(
                          "assets/settings.png",
                          'Get ₹50 when \n Signup',
                          "When your friend sign \n up on the app, you will \n receive 50."),
                      _buildStepItem(
                          "assets/LeadScoreStar.png",
                          'Get ₹50 when \n card is created',
                          "When your friend sign \n up on the app, you will \n receive 50."),
                    ],
                  ),
                ],
              ),
            ),

            // FAQs Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'See all FAQs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0.10.h,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Image.asset(
                        "assets/questionmark.png",
                        width: 15.w,
                        height: 15.h,
                      )
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),

            // Invite Buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 277.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFF2A84FF), Color(0xFF194F99)],
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Center(
                        child: Text(
                          'Invite',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: 77.w,
                    height: 55.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.w,
                          color: Colors.black.withOpacity(0.30000001192092896),
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Center(
                        child: Image.asset(
                      "assets/whatsapp.png",
                      width: 30.w,
                      height: 30.h,
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepItem(String image, String text, String description) {
    return Column(
      children: [
        Container(
          width: 39.w,
          height: 39.h,
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: OvalBorder(),
          ),
          child: Center(
              child: Image.asset(
            image,
            width: 24.w,
            height: 24.h,
          )),
        ),
        //Icon(icon, size: 40, color: Colors.blue)),
        SizedBox(height: 8.h),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            // height: 0.10.h,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10.sp,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
