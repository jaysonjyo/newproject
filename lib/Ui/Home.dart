import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectwork/main.dart';

import 'CardAnimation/Designer Card Overview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity.w,
                  height: 220.h,
                  decoration: ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.r),
                              bottomRight: Radius.circular(10.r)))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.w, vertical: 60.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 42.w,
                          height: 42.h,decoration: BoxDecoration(
                           // color: Colors.red,
                          image: DecorationImage(image: AssetImage("assets/person.png")),
                          borderRadius: BorderRadius.circular(20.r)
                        ),

                        ),
                        _textwidget(
                            text: "Diskuss",
                            fontsize: 20.sp,
                            fontWeight: FontWeight.w500,
                            colors: Colors.white),
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0x259BCDDA),
                          child:Badge.count(
                            smallSize: 5.sp,
                            count: 4,
                            child: IconButton(

                              icon: Icon(
                                Icons.message_outlined,
                                size: 20.sp,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.h),
                  child: SizedBox(
                    width: double.infinity,
                    height: 290.h,
                    child: FlipCardAnimation(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Cardconatiner(
                          width: 216.w,
                          height: 42.h,
                          color: Colors.blue,
                          radius: 10.r,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_card,
                                size: 18.sp,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              _textwidget(
                                  text: "Manage Card",
                                  fontsize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  colors: Colors.white)
                            ],
                          )),
                      SizedBox(
                        width: 15.w,
                      ),
                      Cardconatiner(
                          width: 143.w,
                          height: 42.h,
                          color: Colors.white,
                          borderside: 1.w,
                          bordersidecolor: Colors.blueAccent,
                          radius: 10.r,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                                size: 18.sp,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              _textwidget(
                                  text: "Share Digital",
                                  fontsize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  colors: Colors.blueAccent)
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Cardconatiner(
                      width: 374.w,
                      height: 119.h,
                      color: Colors.black,
                      radius: 10.r,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _textwidget(
                                    text: "Create New Digital",
                                    fontsize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    colors: Colors.grey),
                                SizedBox(
                                  height: 2.h,
                                ),
                                _textwidget(
                                    text: "Business Card",
                                    fontsize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                    colors: Colors.grey),
                              ],
                            ),
                            Cardconatiner(
                                width: 63.w,
                                height: 85.h,
                                color: Colors.grey.shade700,
                                radius: 10.r,
                                child: Icon(
                                  Icons.add,
                                  size: 18.77.sp,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _textwidget(
                          text: "Categories",
                          fontsize: 18.sp,
                          fontWeight: FontWeight.w600,
                          colors: Colors.black),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: SizedBox(
                      width: 386.w,
                      height: 94.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          final List<String> images = [
                            "assets/photo.png",
                            "assets/meeting.png",
                            "assets/contact.png",
                            "assets/refer.png"
                          ];
                          final List<String> textdata = [
                            "Temes",
                            "Meetings",
                            "Contacts",
                            "Refer"
                          ];

                          return Column(
                            children: [
                              Cardconatiner(
                                  width: 68.w,
                                  height: 68.h,
                                  color: index==0?Colors.blue:Colors.black,
                                  radius: 40.r,
                                  child: Center(
                                      child: Image.asset(
                                    images[index],
                                    width: 24.w,
                                    height: 24.h,
                                    fit: BoxFit.cover,
                                  ))),
                              SizedBox(
                                height: 2.h,
                              ),
                              _textwidget(
                                  text: textdata[index],
                                  fontsize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  colors: index==0?Colors.blue:Colors.black,)
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 24.w,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _textwidget(
                          text: "Remainders",
                          fontsize: 22.sp,
                          fontWeight: FontWeight.w700,
                          colors: Colors.black),
                      _textwidget(
                          text: "See all",
                          fontsize: 21.sp,
                          fontWeight: FontWeight.w400,
                          colors: Colors.black),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Cardconatiner(
                      width: double.infinity.w,
                      height: 82.h,
                      color: Colors.white,
                      bordersidecolor: Colors.grey.shade300,
                      borderside: 1.w,
                      radius: 20.r,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 14.w,
                            ),
                            Image.asset(
                              "assets/personcontact.png",
                              width: 39.w,
                              height: 39.h,
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _textwidget(
                                      text: "Kiran",
                                      fontsize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                      colors: Colors.black),
                                  _textwidget(
                                      text: "levon techno",
                                      fontsize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                      colors: Colors.grey)
                                ]),
                            SizedBox(
                              width: 100.w,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _textwidget(
                                      text: "Today",
                                      fontsize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                      colors: Colors.black),
                                  _textwidget(
                                      text: "10 : 30 am",
                                      fontsize: 17.sp,
                                      fontWeight: FontWeight.w600,
                                      colors: Colors.grey)
                                ])
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textwidget(
      {required String text,
      required dynamic fontsize,
      required dynamic fontWeight,
      required dynamic colors}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: colors,
        fontWeight: fontWeight,
      ),
    );
  }

  Widget Cardconatiner(
      {required double width,
      required double height,
      required Color color,
      required dynamic radius,
      double? borderside,
      Color? bordersidecolor,
      Widget? child}) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: BorderSide(
                  width: borderside ?? 0,
                  color: bordersidecolor ?? Colors.transparent))),
      child: child,
    );
  }
}
