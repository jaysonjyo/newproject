import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectwork/Ui/demopages/Analytics.dart';
import 'package:projectwork/Ui/Home.dart';
import 'package:projectwork/Ui/demopages/Settings.dart';
import 'CardAnimation/Designer Card Overview.dart';
import 'demopages/Team.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  final List<Widget> screens = [
    HomeScreen(),
    Team(),
    Analytics(),
    Settings()
    // Additional screens can be added here.
  ];
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define FAB action here.
        },
      backgroundColor: Colors.transparent, // Set transparent background
        elevation: 0, // Remove shadow for better transparency effect
       // foregroundColor: Colors.redAccent, // Set icon color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r), // Maintain rounded FAB

        ),
        tooltip: "Add New",
        child: Image.asset("assets/dialpad.png",fit: BoxFit.cover,),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.grey.shade400,
        child: BottomAppBar(
        elevation: 0,
          shadowColor: Colors.red, // Ensure no shadow is visible
          clipBehavior: Clip.none,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0, // Spacing around the FAB notch
         color: Colors.white, // Ensure BottomAppBar itself is transparent
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildBottomAppBarIcon(
                image: "assets/Home 1.png",
                label: "Home",
                index: 0,
              ),
              _buildBottomAppBarIcon(
                image: "assets/team.png",
                label: "Team",
                index: 1,
              ),
              _buildBottomAppBarIcon(
                image: "assets/Analytics Bars 3 D.png",
                label: "Analytics",
                index: 2,
              ),
              _buildBottomAppBarIcon(
                image: "assets/Cog.png",
                label: "Settings",
                index: 3,
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget _buildBottomAppBarIcon({
    required String image,
    required String label,
    required int index,
  }) {
    final bool isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () => _onTabTapped(index),
      child: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Container(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset(
                    image,
                    color: isSelected ?  Colors.blue : Colors.grey,
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: isSelected ?  Colors.blue : Colors.grey,
                    fontSize: 12.sp,
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
