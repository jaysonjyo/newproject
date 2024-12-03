import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlipCardAnimation extends StatefulWidget {
  @override
  _FlipCardAnimationState createState() => _FlipCardAnimationState();
}

class _FlipCardAnimationState extends State<FlipCardAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isFront = true; // To track the current side of the card

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void flipCard() {
    if (isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    isFront = !isFront;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Animated Card
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              // Flip logic
              double angle = _animation.value * 3.1416; // Rotate in radians
              bool isFlipped = angle > 3.1416 / 2; // Check if the card has flipped
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001) // Add perspective
                  ..rotateY(angle), // Rotate the card
                child: isFlipped
                    ? Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateY(3.1416),
                  child: buildBackCard(), // Show back side
                )
                    : buildFrontCard(), // Show front side
              );
            },
          ),
          SizedBox(height: 20),
          // Flip Button
          GestureDetector(
            onTap: flipCard, // Trigger the flip animation
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 20.w,height: 20.h,child: Image.asset("assets/rotation.png")),SizedBox(width: 5.w,),
                Text(
                  'View Back Side',
                  style: TextStyle(fontSize: 16.sp,color: Color(0xFF122D67
                  )),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }

  Widget buildFrontCard() {
    return Container(
      height: 212.h,
      width: 374.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Image.asset(
        "assets/card.png",
        fit: BoxFit.contain,
      ),
    );
  }

  Widget buildBackCard() {
    return Container(
      height: 212.h,
      width: 374.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Image.asset(
        "assets/card.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
