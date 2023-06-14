import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_management/const/app_color.dart';
import 'package:school_management/ui/view/bottomNavBar/main_home/home_screen.dart';
import 'package:school_management/ui/view/bottomNavBar/messages/messages.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/more_screen.dart';
import 'package:school_management/ui/view/bottomNavBar/notice/notice_screen.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({Key? key}) : super(key: key);

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  List<Widget> _pages = [
    HomeScreen(),
    MessageScreen(),
    NoticeScreen(),
    MoreScreen()
  ];

  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25.h,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_rounded,
            ),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle_notifications_outlined,
            ),
            label: 'Notice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_outlined),
            label: 'More',
          )
        ],
        onTap: _onItemTap,

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.white,
        backgroundColor: AppColor.purplee,

        // _onTap function
      ),
    );
  }
}
