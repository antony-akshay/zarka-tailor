import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sewcode/screens/orderConfirmation/orderConfirmation.dart';
import 'package:sewcode/screens/orderList/finishedOrders.dart';
import 'package:sewcode/screens/orderList/pendingOrders.dart';
import 'package:sewcode/widgets/widget_appbar.dart';

class newOrders extends StatelessWidget {
  const newOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
        appBar: repeatingwidgets.Appbar(context),
        drawer: repeatingwidgets.drawer(),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 4.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text(
                    'Orders',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder: (_, __, ___) => NewOrders(),
                      //     transitionDuration: Duration(seconds: 0),
                      //     transitionsBuilder: (_, b, __, c) =>
                      //         FadeTransition(opacity: b, child: c),
                      //   ),
                      // );
                    },
                    child: Container(
                        width: 113.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Center(
                            child: Text(
                          'New Orders',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'railway',
                              fontSize: 12.sp),
                        ))),
                  ),
                  SizedBox(width: 5.5.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const pendingOrders(),
                          transitionDuration: const Duration(seconds: 0),
                          transitionsBuilder: (_, b, __, c) =>
                              FadeTransition(opacity: b, child: c),
                        ),
                      );
                    },
                    child: Container(
                        width: 113.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.lightBlue,
                                Color.fromARGB(255, 31, 79, 201)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Center(
                            child: Text(
                          'Pending Orders',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'railway',
                              fontSize: 12.sp),
                        ))),
                  ),
                  SizedBox(width: 5.5.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const finishedOrders(),
                          transitionDuration: const Duration(seconds: 0),
                          transitionsBuilder: (_, b, __, c) =>
                              FadeTransition(opacity: b, child: c),
                        ),
                      );
                    },
                    child: Container(
                        width: 113.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.lightBlue,
                                Color.fromARGB(255, 31, 79, 201)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Center(
                            child: Text(
                          'Finished Orders',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'railway',
                              fontSize: 12.sp),
                        ))),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.all(19.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 0.1.w),
                        Container(
                          height: 26.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 0.2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.r),
                              topRight: Radius.circular(5.r),
                              bottomLeft: Radius.circular(0.r),
                              bottomRight: Radius.circular(0.r),
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            'Order 1',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 168, 0, 1),
                                fontFamily: 'railway'),
                          )),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ScreenOrderConfirm())),
                      child: Container(
                        height: 151.h,
                        width: 351.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(217, 217, 217, 0.2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(3.r),
                            topRight: Radius.circular(0.r),
                            bottomLeft: Radius.circular(3.r),
                            bottomRight: Radius.circular(3.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.w, top: 8.h, bottom: 3.h, right: 11),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'churidar',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'urbanist',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22.sp,
                                        letterSpacing: 2),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Womens Churidar(0000000000)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'urbanist',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Pending',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(255, 70, 70, 1)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 16.r,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Name X',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'urbanist',
                                                  fontSize: 20.sp),
                                            ),
                                            Text('+91 0000000000',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'urbanist',
                                                    fontSize: 9.sp))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Edapally',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'urbanist'),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
