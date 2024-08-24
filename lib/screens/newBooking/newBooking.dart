// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sewcode/widgets/widget_appbar.dart';
import 'package:svg_flutter/svg.dart';

// ignore: camel_case_types
class newBooking extends StatelessWidget {
  newBooking({super.key});

  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  late String otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      appBar: repeatingwidgets.Appbar(context),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, bottom: 10),
                child: GestureDetector(
                  child: SvgPicture.asset(
                    'assets/images/x.svg',
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              width: 357,
              height: 1200,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(17, 17, 17, 100)),
              child: Column(
                children: [
                  const Text(
                    'Business Name',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 13),
                  ),
                  Container(
                    height: 34,
                    width: 228,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(120, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: TextFormField(
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 231, 227, 227),
                              fontSize: 12,
                              fontFamily: 'Urbanist'),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Location',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 13),
                  ),
                  Container(
                    height: 58,
                    width: 228,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(120, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: TextFormField(
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 231, 227, 227),
                              fontSize: 12,
                              fontFamily: 'Urbanist'),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Phone number',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 13),
                  ),
                  Container(
                    height: 34,
                    width: 228,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(120, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: TextFormField(
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 231, 227, 227),
                              fontSize: 12,
                              fontFamily: 'Urbanist'),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'OTP',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'urbanist',
                            fontSize: 13),
                      ),
                      Container(
                        height: 15,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(192, 69, 165, 255),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Send OTP',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'urbanist',
                                fontSize: 6),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildOtpField(context, otp1),
                            buildOtpField(context, otp2),
                            buildOtpField(context, otp3),
                            buildOtpField(context, otp4),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Number verified',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'urbanist',
                                fontSize: 13),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SizedBox(
                              width: 12,
                              height: 12,
                              child: SvgPicture.asset('assets/images/Successmark.svg')),
                          )
                        ],
                      )
                    ],
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 13),
                  ),
                  Container(
                    height: 34,
                    width: 228,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(120, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, top: 8),
                      child: TextFormField(
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: const InputDecoration.collapsed(
                          border: InputBorder.none,
                          hintText: '',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 231, 227, 227),
                              fontSize: 12,
                              fontFamily: 'Urbanist'),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                   const Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontSize: 13),
                  ),
                  Container(
                    width: 228,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 17, 17, 100),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Column(
                      children: [
                        Row()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildOtpField(BuildContext context, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(120, 255, 255, 255),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 20,
        width: 20,
        child: Center(
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: const InputDecoration.collapsed(
              hintText: "",
              fillColor: Colors.white,
            ),
            controller: controller,
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ),
    );
  }
}
