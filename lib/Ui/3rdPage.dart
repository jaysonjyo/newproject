import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreeTrialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity.w,
              height: 222.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r)),
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
                
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.w,)
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: Text(
                      "Start a free trial \n          now",
                      style:
                          TextStyle(color: Colors.white, fontSize: 29.sp),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 319.w,
                    height: 360.h,
                    child: ListView(
                      children: [
                        _buildTimelineTile(
                          icon: Icons.lock_open,
                          title: "Today",
                          subtitle: "Unlock all the features",
                        ),
                        _buildTimelineTile(
                          icon: Icons.notifications_none_sharp,
                          title: "Day 4",
                          subtitle:
                              "Get a reminder that your trial is about to end",
                        ),
                        _buildTimelineTile(
                          icon: Icons.timer_outlined,
                          title: "Day 7",
                          subtitle: "If you want, you can cancel anytime",
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58.h,
                  ),
                  Center(
                    child: Text(
                      "7 Days Free Trial, Then ₹99/month",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  Container(
                    width: 372.w,
                    height: 56.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF0056D2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Add action for Free Trial button
                      },
                      child: Center(
                        child: Text(
                          "Start 7-Day Free Trial",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextButton(
                    onPressed: () {
                      // Add action for View All Plans
                    },
                    child: Text(
                      "View All Plans",
                      style: TextStyle(
                        color: Color(0xFF0056D2),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 45.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF1FF),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(icon, size:25.sp,color: const Color(0xFF5499FB)),
              ),
              SizedBox(height: 8.h),
              Container(
                height: 3.h,
                width: 2.w,
                color: Colors.blue.shade200,
              ),
              SizedBox(height: 8.h),
              Container(
                height: 3.h,
                width: 2.w,
                color: Colors.blue.shade200,
              ),
              SizedBox(height: 8.h),
              Container(
                height: 3.h,
                width: 2.w,
                color: Colors.blue.shade200,
              ),
              SizedBox(height: 8.h),
              Container(
                height: 3.h,
                width: 2.w,
                color: Colors.blue.shade200,
              ),
            ],

          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
