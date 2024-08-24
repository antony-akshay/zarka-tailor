// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

DateTime selectedDate = DateTime.now();

DateTime todayDate = DateTime.now();
String _todayDate = todayDate.toString();
String todayDateReplaced = _todayDate.replaceAll(' 00:00:00.000', '');

TextEditingController _calendartext = TextEditingController();

class ScreenPendingOrdersList extends StatefulWidget {
  const ScreenPendingOrdersList({super.key});

  @override
  State<ScreenPendingOrdersList> createState() =>
      _ScreenPendingOrdersListState();
}

class _ScreenPendingOrdersListState extends State<ScreenPendingOrdersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        title: Text(
          'View order details',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'urbanist',
              fontSize: 22.sp,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order details',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'urbanist',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Churidar',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'urbanist',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Edapally',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'urbanist',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Women’s Churidar(8888888888)',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'urbanist',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text('Order 1',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 168, 0, 1),
                        fontFamily: 'urbanist',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500))
              ],
            ),
            Text('Model dress',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'urbanist',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Estimated date',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500)),
                Row(
                  children: [
                    Text('13-Oct-2023',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'urbanist',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor:
                                const Color.fromARGB(255, 37, 37, 43),
                            content: SizedBox(
                              width: 200.w,
                              height: 195.h,
                              child: Column(
                                children: [
                                  Text(
                                    'Confirmation',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'urbanist',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 22.sp,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Do you want to change the date?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'urbanist',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  const SizedBox(
                                      height: 10), // Adjust spacing as needed
                                  GestureDetector(
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2100),
                                      ).then((selectedDateTime) {
                                        if (selectedDateTime != null) {
                                          // If a date is selected, update the selectedDate variable
                                          setState(() {
                                            selectedDate = selectedDateTime;
                                            String date =
                                                selectedDateTime.toString();

                                            _calendartext.text =
                                                date.replaceAll(
                                                    ' 00:00:00.000', '');
                                          });
                                        }
                                      });
                                    },
                                    child: SizedBox(
                                      height: 90.h,
                                      width: 185.w,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 6),
                                              child: Icon(Icons.calendar_month),
                                            ),
                                            border: OutlineInputBorder(),
                                            fillColor: Colors.white,
                                            filled: true,
                                            hintText: 'YYYY-MM-DD'),
                                        enabled: false,
                                        controller: _calendartext,
                                        initialValue: null,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'Confirm',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text('Edit?',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'urbanist',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 336.w,
                  height: 106.h,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 217, 217, 0.1),
                      borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 336.w,
                        height: 24.h,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 0.12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: Text('Payment method',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'urbanist',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Text('Pay on Delivery',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 168, 0, 1),
                                      fontFamily: 'urbanist',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Billing Address',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'urbanist',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600)),
                            Text('Name x',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'urbanist',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Nivins marry land Thoppumpady',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'urbanist',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400)),
                                Padding(
                                  padding: EdgeInsets.only(right: 8.w),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/Phone Actions Pause.svg'),
                                      Text('CALL',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'urbanist',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Text('Kochi 671122',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'urbanist',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 336.w,
                  height: 118.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: const Color.fromARGB(255, 99, 97, 97))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.w, top: 4.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Order date',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'urbanist',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400)),
                                  Text('Order number',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'urbanist',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400)),
                                  Text('Order total',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'urbanist',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.w, top: 4.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('06-Oct-2023',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'urbanist',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400)),
                                  Text('8899-88180-8171',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'urbanist',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400)),
                                  Text('Rs 564 (2 items)',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'urbanist',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Divider(
                        color: const Color.fromARGB(255, 99, 97, 97),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.w, right: 8.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Download Invoice',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'urbanist',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                              size: 18.sp,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 13.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 175.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(201, 197, 197,
                                    0.801), // Set background color here
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              'cancel',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 175.w,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        backgroundColor: Colors.white,
                                        content: SizedBox(
                                          width: 337.w,
                                          height: 250.h,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8),
                                                child: Text(
                                                  'Women’s Churidar(8888888888)',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'urbanist',
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Text(
                                                'Scan the QR code with delivery partner',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'railway',
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: 10
                                                      .h), // Adjust spacing as needed
                                              Image.asset(
                                                  'assets/images/qr-popup.png'),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Your OTP is ',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily: 'railway',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20.sp),
                                                  ),
                                                  Text(
                                                    'XXXX',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontFamily: 'railway',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20.sp),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 35, 138,
                                    255), // Set background color here
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
