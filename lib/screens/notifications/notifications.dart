import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import screenutil package
import 'package:svg_flutter/svg.dart';

class screenNotifications extends StatelessWidget {
  const screenNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.close_sharp, color: Colors.black, size: 28.w),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            letterSpacing: 0.5.w,
            color: Colors.black,
            fontFamily: 'urbanist',
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
          side: BorderSide(
            color: Colors.grey, // You can customize the border color here
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 64.w,
                height: 64.h,
                child: SvgPicture.asset(
                    'assets/images/alert-bell-Notifications.svg'),
              ),
              Text(
                'No new notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'urbanist',
                  fontSize: 29.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 12.h), // Example of using height utility
              Text(
                'Your recent deliveries, offers, and other notifications will appear here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(224, 223, 223, 1),
                  fontSize: 13.sp,
                  fontFamily: 'urbanist',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
