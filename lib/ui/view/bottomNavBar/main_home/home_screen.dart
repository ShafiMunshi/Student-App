import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:school_management/const/app_color.dart';
import 'package:school_management/const/app_string.dart';
import 'package:school_management/ui/view/bottomNavBar/main_home/achievement/achievement.dart';
import 'package:school_management/ui/view/bottomNavBar/main_home/result/result.dart';
import 'package:school_management/ui/view/bottomNavBar/main_home/teacher_info/teacher.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/fee/fee_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isPresent = true;
var sublists = [
  'Mathematics 1',
  'Physics',
  'Biology',
  'Geography',
  'Chemistry',
  'History'
];
var subtime = ['09:30', '10:40', '11:45', '12:10', '12:45', '1.00'];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 225.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.purplee,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.r),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 90.h,
                                width: 75.w,
                                child: Image.asset('assets/images/phooto.jpg'),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Text(
                                    AppString.roll,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  Text(
                                    'Status: in time 9.0 clock',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Text('jelasj'),
                          SizedBox(
                            height: 30.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: isPresent
                                          ? Colors.green
                                          : Colors.white),
                                  child: Text(
                                    'IN',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: !isPresent
                                          ? Colors.red
                                          : Colors.white),
                                  child: Text(
                                    'Out',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              midButton('assets/icons/trophy.png', () {
                                Get.to(Achievement());
                              }),
                              SizedBox(
                                width: 25.w,
                              ),
                              midButton('assets/icons/fee.png', () {
                                Get.to(FeeScreen());
                              }),
                              SizedBox(
                                width: 25.w,
                              ),
                              midButton('assets/icons/acheive.png', () {
                                Get.to(Teacherinfo());
                              }),
                              SizedBox(
                                width: 25.w,
                              ),
                              midButton('assets/icons/book.png', () {
                                Get.to(ResultScreen());
                              }),
                            ],
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'Today\'s Class',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  child: Container(
                    height: 500,
                    child: ListView.builder(
                      itemCount: sublists.length,
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 5),
                        //  height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  sublists[index],
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'home work',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              subtime[index],
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

midButton(iconss, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(iconss),
          )),
    ),
  );
}
