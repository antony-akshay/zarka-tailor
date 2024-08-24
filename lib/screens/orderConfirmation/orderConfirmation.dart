import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sewcode/widgets/widget_appbar.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ScreenOrderConfirm extends StatefulWidget {
  const ScreenOrderConfirm({super.key});

  @override
  State<ScreenOrderConfirm> createState() => _ScreenOrderConfirmState();
}

class _ScreenOrderConfirmState extends State<ScreenOrderConfirm> {
  final List<String> items = [
    '1-2 Days',
    '2-5 Days',
    '7 Days',
    '7-10 Days',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      appBar: repeatingwidgets.Appbar(context),
      body: Padding(
        padding: EdgeInsets.only(left: 22.w, top: 20.h, right: 22.w),
        child: Column(
          children: [
            Row(
              children: [SvgPicture.asset('assets/x.svg')],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 0.1.w,
                ),
                Container(
                  height: 26.h,
                  width: 75.w,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 0.2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Order 1',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 168, 0, 1),
                        fontFamily: 'railway',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 587.h,
              width: 350.w,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3),
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'D Look',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'urbanist',
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Women’s Churidar(8888888888)',
                      style: TextStyle(
                        fontFamily: 'urbanist',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                            ),
                            SizedBox(width: 4),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Name x',
                                  style: TextStyle(
                                    fontFamily: 'urbanist',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '+91 00000 00000',
                                  style: TextStyle(
                                    fontFamily: 'urbanist',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Edapally',
                              style: TextStyle(
                                fontFamily: 'urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Estimate Price',
                          style: TextStyle(
                            fontFamily: 'urbanist',
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          height: 34.h,
                          width: 228.w,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(120, 255, 255, 255),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.w, top: 8.h),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              decoration: const InputDecoration.collapsed(
                                border: InputBorder.none,
                                hintText: ' Enter the amount',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 231, 227, 227),
                                  fontSize: 12,
                                  fontFamily: 'Urbanist',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Estimate Delivery Time',
                          style: TextStyle(
                            fontFamily: 'urbanist',
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Row(
                              children: [
                                Text(
                                  'Select an option ',
                                  style: TextStyle(
                                    fontFamily: 'urbanist',
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            items: items
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontFamily: 'urbanist',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 50.h,
                              width: 160.w,
                              padding:
                                  EdgeInsets.only(left: 14.w, right: 14.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                ),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              elevation: 2,
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 20,
                                color: Colors.black,
                              ),
                              iconSize: 14,
                              iconEnabledColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              iconDisabledColor:
                                  Color.fromARGB(255, 255, 255, 255),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40).r,
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              height: 40.h,
                              padding: EdgeInsets.only(left: 14.w, right: 14.w),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          ' Add Notes',
                          style: TextStyle(
                            fontFamily: 'urbanist',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 228.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 0.5),
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.w, right: 8.w),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: ' Write here...',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'urbanist',
                                  color: Color.fromARGB(255, 231, 227, 227),
                                ),
                              ),
                              maxLines: 4,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(70, 144, 255, 1),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            width: 200.w,
                            height: 49.h,
                            child: const Center(
                              child: Text(
                                'CONFIRM',
                                style: TextStyle(
                                  letterSpacing: 2,
                                  color: Colors.white,
                                  fontFamily: 'urbanist',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
