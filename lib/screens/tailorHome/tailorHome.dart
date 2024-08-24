import 'package:custom_switch_lib/custom_switch_lib.dart';
import 'package:flutter/material.dart';
import 'package:sewcode/screens/newBooking/newBooking.dart';
import 'package:sewcode/screens/orderList/newOrders.dart';
import 'package:sewcode/widgets/widget_appbar.dart';
import 'package:svg_flutter/svg.dart';

// ignore: must_be_immutable
class tailorHome extends StatelessWidget {
  tailorHome({super.key});

  bool status = false;

  @override
  Widget build(BuildContext context) {
    //var isToggled;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      appBar: repeatingwidgets.Appbar(context),
      drawer: repeatingwidgets.drawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 13),
                CustomSwitch(
                  enabled: false,
                  circle_radious: 30,
                  circle_height: 12,
                  circle_widht: 12,
                  height: 20,
                  widht: 40,
                  inactiveColor: Colors.red,
                  activeColor: Colors.green,
                  value: status,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 290),
                GestureDetector(
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => newBooking()));
                  },
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              height: 375,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 0.95),
                  borderRadius: BorderRadius.circular(9)),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Container(
                      width: 299,
                      height: 185.5,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(117, 112, 112, 0.95),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: SvgPicture.asset(
                            'assets/images/Camera Mode Photo.svg'),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 250),
                      Text(
                        'OFFLINE',
                        style: TextStyle(color: Colors.red, fontSize: 9),
                      ),
                      Text(
                        '/',
                        style: TextStyle(color: Colors.black, fontSize: 9),
                      ),
                      Text(
                        'ONLINE',
                        style: TextStyle(color: Colors.green, fontSize: 9),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        const Text(
                          'NEW ORDERS ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'urbanist',
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 60,
                          height: 2,
                          decoration: const BoxDecoration(color: Colors.grey),
                        ),
                        const Text(
                          ' 2',
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'urbanist',
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        const Text(
                          'ORDER COMPLETED  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'urbanist',
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 60,
                          height: 2,
                          decoration: const BoxDecoration(color: Colors.grey),
                        ),
                        const Text(
                          ' 20',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'urbanist',
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const newOrders()));
                    },
                    child: Container(
                      width: 157,
                      height: 115,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            89,
                            89,
                            89,
                            1,
                          ),
                          borderRadius: BorderRadius.circular(9)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 0.1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 37, bottom: 17),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 6,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Image.asset('assets/images/box1.png')),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'New Orders',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'railway',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(
                                        Icons.chevron_right_sharp,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 157,
                    height: 115,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(
                          89,
                          89,
                          89,
                          1,
                        ),
                        borderRadius: BorderRadius.circular(9)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset('assets/images/Wallet.png'),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Today’s earnings',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'railway',
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
