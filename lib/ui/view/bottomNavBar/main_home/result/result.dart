import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_management/const/app_color.dart';
import 'package:school_management/ui/view/auth/login_screen/login_screen.dart';
import 'package:school_management/ui/view/widgets/widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Choose Your Department',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 8.h,
          ),
          tileCard('Comuputer Engineering', '', 'assets/icons/cmt.png'),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          tileCard('Architecture Engineering', '', 'assets/icons/aidt.png'),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          tileCard('Civil Engineering', '', 'assets/icons/civil.png'),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          tileCard('Electronics Engineering', '', 'assets/icons/ent.png'),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          tileCard('Electrical Engineering', '', 'assets/icons/elec.png'),
          SizedBox(
            height: 8.h,
          ),
          // depBtn('Computer Engineering', () {}),
          // SizedBox(
          //   height: 15.h,
          // ),
          // depBtn('Electronics Engineering', () {}),
          // SizedBox(
          //   height: 15.h,
          // ),
          // depBtn('Electrical Engineering', () {}),
          // SizedBox(
          //   height: 15.h,
          // ),
          // depBtn('Architecture Engineering', () {}),
        ],
      ),
    ));
  }
}

depBtn(txt, ontap) {
  return Card(
    elevation: 4,
    child: ListTile(
      contentPadding: EdgeInsets.only(
        left: 15.w,
        top: 15.h,
        bottom: 15.h,
      ),
      title: Text(
        txt,
        style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400),
      ),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: () {},
    ),
  );
}
