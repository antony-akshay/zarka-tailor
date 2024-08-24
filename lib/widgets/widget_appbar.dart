import 'package:flutter/material.dart';
import 'package:sewcode/screens/notifications/notifications.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import screenutil package

class repeatingwidgets {
  static AppBar Appbar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      centerTitle: true,
      title: const Text(
        'Sewcode',
        style: TextStyle(
            fontSize: 29, fontWeight: FontWeight.w900, fontFamily: 'urbanist'),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.circle,
              color: Colors.red,
              size: 35.w, // Apply screenutils width
            ));
      }),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        side: BorderSide(
            color: Colors.grey), // You can customize the border color here
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.w), // Apply screenutils width
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const screenNotifications(),
                          transitionDuration: const Duration(seconds: 0),
                          transitionsBuilder: (_, b, __, c) =>
                              FadeTransition(opacity: b, child: c),
                        ),
                      );
            },
            child: SizedBox(
              width: 23.w, // Apply screenutils width
              height: 23.h, // Apply screenutils height
              child: SvgPicture.asset(
                'assets/images/Alert Bell.svg',
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }

  static Drawer drawer() {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 111, 118, 130),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 111, 118, 130),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    foregroundColor: Color.fromARGB(255, 243, 18, 2),
                  ),
                  Text(
                    'Name x',
                    style: TextStyle(
                        fontFamily: 'urbanist',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Text(
                    'xxxxxx293',
                    style: TextStyle(
                        fontFamily: 'urbanist',
                        fontSize: 9,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/images/homeicon.svg'),
                SizedBox(
                  width: 20.w, // Apply screenutils width
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'urbanist',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp, // Apply screenutils font size
                      color: Colors.white),
                )
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/images/myorders.svg'),
                SizedBox(
                  width: 20.w, // Apply screenutils width
                ),
                Text(
                  'My orders',
                  style: TextStyle(
                      fontFamily: 'urbanist',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp, // Apply screenutils font size
                      color: Colors.white),
                )
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/images/settings.svg'),
                SizedBox(
                  width: 20.w, // Apply screenutils width
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'urbanist',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp, // Apply screenutils font size
                      color: Colors.white),
                )
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/images/account.svg'),
                SizedBox(
                  width: 20.w, // Apply screenutils width
                ),
                Text(
                  'Account',
                  style: TextStyle(
                      fontFamily: 'urbanist',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp, // Apply screenutils font size
                      color: Colors.white),
                )
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/images/about.svg'),
                SizedBox(
                  width: 20.w, // Apply screenutils width
                ),
                Text(
                  'About',
                  style: TextStyle(
                      fontFamily: 'urbanist',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp, // Apply screenutils font size
                      color: Colors.white),
                )
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
