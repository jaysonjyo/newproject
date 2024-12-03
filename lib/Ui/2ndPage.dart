import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PricingPage extends StatefulWidget {
  @override
  State<PricingPage> createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 428.w,
                    height: 296.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF2A84FF), // Starting color of the gradient
                            Color(0xFF194F99), // Ending color of the gradient
                          ],
                          begin: Alignment.topLeft,
                          // Starting point of the gradient
                          end: Alignment
                              .bottomRight, // Ending point of the gradient
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r))),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 46.h, horizontal: 23.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 41.w,
                            height: 41.h,
                            decoration: ShapeDecoration(

                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.w, color: Color(0xFFE8ECF4)),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            child: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.white,),
                          ),SizedBox(width: 20.w,),
                          Text(
                            'Start Your 7 Days \nFree Trail',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.sp,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 199.h),
                    child: Column(
                      children: [
                        CarouselSlider.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int itemIndex,
                                  int pageViewIndex) =>
                              Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            elevation: 5,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Container(
                                    width: 337.w,

                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Silver',
                                          style: TextStyle(
                                            color: Color(0xFF241736),
                                            fontSize: 32.sp,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 131.w),
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "₹",
                                                style: TextStyle(fontSize: 28.sp),
                                              ),
                                              SizedBox(width: 2.w),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '99/',
                                                      style: TextStyle(
                                                        color: Color(0xFF241736),
                                                        fontSize: 32.sp,
                                                        fontFamily: 'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'mo',
                                                      style: TextStyle(
                                                        color: Color(0xFF241736),
                                                        fontSize: 14.sp,
                                                        fontFamily: 'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
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
                                  SizedBox(height: 7.h),
                                  Row(
                                    children: [
                                      Text(
                                        '7 Days Free Trial, Then ',
                                        style: TextStyle(
                                          color: Color(0xFF241736),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "₹",
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                      Text(
                                        '99/month',
                                        style: TextStyle(
                                          color: Color(0xFF241736),
                                          fontSize: 14.sp,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 40.h),
                                  // List of features
                                  BulletPointList(),
                                  SizedBox(height: 41.h),
                                  // Continue Button
                                  GestureDetector(

                                    child: Container(
                                      width: 339.w,
                                      height: 56.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.00, -1.00),
                                          end: Alignment(0, 1),
                                          colors: [Color(0xFF2A84FF), Color(0xFF194F99)],
                                        ),

                                          borderRadius: BorderRadius.circular(8.r),

                                      ),
                                    // Set the desired height
                                      child: Center(
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                          options: CarouselOptions(
                            height: 453.h,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.85,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: false,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.2,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(() {
                                curentindex = index;
                              });
                            },
                          ),
                        ),SizedBox(height: 45.h,),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: curentindex,
                              count: 3,
                              effect: ExpandingDotsEffect(
                                dotColor: Color(0x94C1BFBF),
                                // Inactive dot color
                                dotHeight: 6.h,
                                // Height of the dots
                                dotWidth: 10.w,
                                // Width of inactive dots
                                activeDotColor: Color(0xFF117EEA),
                                // Color of the active dot
                                expansionFactor:
                                    3, // Controls how much the active dot expands
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              // Terms & Conditions Text
              Center(
                child:Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Color(0xFF241736),
                    fontSize: 14.sp,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ),
              SizedBox(height: 21.h),
              // Placeholder Text
              SizedBox(
                width: 353.w,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Euismod non nisl magna nullam nisi nisi pharetra eu facilisis. Odio laoreet turpis quis tempor fringilla. Accumsan ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF241736),
                    fontSize: 14.sp,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ),
              SizedBox(height: 113.h),
              // Progress Bar (like the one in the image)
              // Pricing Card
            ],
          ),
        ),
      ),
    );
  }
}

class BulletPointList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _bulletPoint('10 Free Templates'),
        SizedBox(height: 29.5.h,),

        _bulletPoint('Access to live meetings'),
        SizedBox(height: 29.5.h,),
        _bulletPoint('No Ads'),
        SizedBox(height: 29.5.h,),
        _bulletPoint('Cancel Anytime'),
      ],
    );
  }

  Widget _bulletPoint(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 15.sp, color: Colors.black),
        SizedBox(width: 29.5.w),
        Text(text,  style: TextStyle(
          color: Color(0xFF241736),
          fontSize: 14.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,

        ),),
      ],
    );
  }
}
