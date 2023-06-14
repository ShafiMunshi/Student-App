import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_management/const/app_color.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.purplee,
          title: Text('All Notice'),
          centerTitle: true,
          elevation: 0.5,
        ),
        body: Padding(
          padding: EdgeInsets.all(13.w),
          child: ListView(
            children: [
              noitceTile(
                  'ডিপ্লোমা ইন ইঞ্জিনিয়ারিং পুনঃ নিরীক্ষণ ও সংশোধনী ', () {}),
              SizedBox(
                height: 5,
              ),
              noitceTile('প্রশ্ন সেটারের জন্য প্রশিক্ষণ ১৭-৬-২০২৩।', () {}),
              SizedBox(
                height: 5,
              ),
              noitceTile('অসর্ম্পণ আবেদন জমা প্রদান প্রসঙ্গে', () {}),
              SizedBox(
                height: 5,
              ),
              noitceTile(' বিজ্ঞাপন; আপনার অনুগত; বিবেচনা; পরিদর্শন ', () {}),
              SizedBox(
                height: 5,
              ),
              noitceTile('ডিপ্লোমা ইন ইঞ্জিনিয়ারিং শিক্ষাক্রম পরীক্ষার', () {}),
              SizedBox(
                height: 5,
              ),
              noitceTile(
                  'কারিগরি ও বৃত্তিমূলক শিক্ষা সপ্তাহ-২০২৩ উদযাপন', () {}),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

noitceTile(txt, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 5),
      //  height: 30.h,
      decoration: BoxDecoration(
          border: Border.all(
        width: 2,
        color: Colors.black,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(txt),
          Icon(Icons.arrow_right_alt_rounded),
        ],
      ),
    ),
  );
}
