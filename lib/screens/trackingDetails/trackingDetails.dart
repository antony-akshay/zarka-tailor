import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';
import 'package:svg_flutter/svg_flutter.dart';

class trackingDetails extends StatelessWidget {
  const trackingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'D Look',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'urbanist',
                                fontWeight: FontWeight.w700,
                                fontSize: 35.sp,
                                letterSpacing: 2,
                              ),
                            ),
                            Text(
                              'Women\'s Churidar(8888888888)',
                              style: TextStyle(
                                color:
                                    const Color.fromRGBO(230, 226, 225, 0.932),
                                fontFamily: 'urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              'Delivery #87621786612',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 153, 148, 148),
                                fontFamily: 'urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 35.w,
                                  ),
                                  Text(
                                    'Estimated Delivery Date',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'urbanist',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SvgPicture.asset('assets/images/intransit.svg'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundColor:
                                        Color.fromRGBO(217, 217, 217, 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.w),
                                    child: Text(
                                      '20 Apr',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'urbanist',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 12.w,
                                    height: 8.h,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(156, 240, 149, 1),
                                    ),
                                  ),
                                  Text(
                                    ' COD',
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontFamily: 'urbanist',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            'Delivered from D Look -Kalamassery',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'urbanist',
                              fontWeight: FontWeight.w500,
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Divider(
                  color: Colors.transparent,
                  height: 0.1,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 33.w, bottom: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Tracking Details',
                          style: TextStyle(
                            color: const Color.fromRGBO(255, 204, 74, 1),
                            fontFamily: 'urbanist',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                          ),
                        ),
                        SizedBox(
                          width: 150.w,
                        ),
                        Text(
                          'Order Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'urbanist',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 355.w,
                    height: 1.h,
                    color: const Color.fromRGBO(99, 99, 99, 1),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.w, top: 20),
                      child: OrderTrackerZen(
                        text_primary_color: Colors.white,
                        tracker_data: [
                          TrackerData(
                            title: "PICKED UP",
                            date: "",
                            tracker_details: [
                              TrackerDetails(
                                title: "",
                                datetime: "",
                              ),
                            ],
                          ),
                          TrackerData(
                            title: "IN TRANSIT",
                            date: "",
                            tracker_details: [
                              TrackerDetails(
                                title:
                                    "Delivery to reattempted -Panampally Nagar",
                                datetime: "20 March at 7:30 PM",
                              ),
                            ],
                          ),
                          TrackerData(
                            title: "OUT FOR DELIVERY",
                            date: "",
                            tracker_details: [
                              TrackerDetails(
                                title: "",
                                datetime: "",
                              ),
                            ],
                          ),
                          TrackerData(
                            title: "DELIVERED",
                            date: "",
                            tracker_details: [
                              TrackerDetails(
                                title: "",
                                datetime: "",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 355.w,
                    height: 1.h,
                    color: const Color.fromRGBO(99, 99, 99, 1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 22.h),
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 19,
                            ),
                          ],
                        ),
                        SizedBox(width: 4.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get help?',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                              ),
                            ),
                            Text(
                              'Need help with this delivary?',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 8.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
