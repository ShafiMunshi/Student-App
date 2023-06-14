import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../const/app_color.dart';

class AttendenceScreen extends StatelessWidget {
  AttendenceScreen({super.key});
  DateTime datetime = DateTime.now();
  String _curDate = DateFormat.MMMMEEEEd().format(DateTime.now());

  var isPresent = [true, true, false, true, false, true];
  var sublists = [
    'Math',
    'Physics',
    'Biology',
    'Geography',
    'Chemistry',
    'History'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.purplee,
          title: Text('Today Attendence'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: 70.h,
                  width: 240.w,
                  // color: AppColor.purplee,
                  decoration: BoxDecoration(
                    color: AppColor.purplee,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Text(
                _curDate,
                style: TextStyle(fontSize: 22.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tmpTxt('Subject'),
                  simTxt('Present'),
                  simTxt('Absent'),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: sublists.length * 35,
                child: ListView.builder(
                  itemCount: sublists.length,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        tmpTxt(sublists[index]),
                        Row(
                          children: [
                            isPresent[index]
                                ? Icon(
                                    Icons.done_outlined,
                                    color: Colors.green,
                                  )
                                : Icon(Icons.circle_outlined),
                            SizedBox(
                              width: 110.w,
                            ),
                            !isPresent[index]
                                ? Icon(Icons.circle)
                                : Icon(
                                    Icons.cancel_outlined,
                                    color: Colors.red,
                                  ),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 40.h,
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.purplee,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'Total Attendance this Semester',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Table(
                children: [
                  TableRow(children: [
                    tabTxt('Subject'),
                    tabTxt('Present'),
                    tabTxt('Absent'),
                    tabTxt('AVG.'),
                  ]),
                  TableRow(children: [
                    tabTxt('Bangla'),
                    tabTxt('51'),
                    tabTxt('5'),
                    tabTxt('avg'),
                  ]),
                  TableRow(children: [
                    tabTxt('Physics'),
                    tabTxt('25'),
                    tabTxt('31'),
                    tabTxt('AVG.'),
                  ]),
                  TableRow(children: [
                    tabTxt('Math'),
                    tabTxt('41'),
                    tabTxt('22'),
                    tabTxt('AVG.'),
                  ]),
                  TableRow(children: [
                    tabTxt('Biology'),
                    tabTxt('44'),
                    tabTxt('18'),
                    tabTxt('AVG.'),
                  ]),
                ],
                border: TableBorder.all(
                    color: Colors.black,
                    width: 1,
                    borderRadius: BorderRadius.circular(5.r)),
                // textDirection: TextDirection.LTR,
                textBaseline: TextBaseline.alphabetic,
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
              )
            ],
          ),
        ),
      ),
    );
  }
}

simTxt(txt) {
  return Text(
    txt,
    style: TextStyle(
        fontSize: 18.sp,
        // height: 20,
        decoration: TextDecoration.underline),
  );
}

tmpTxt(txt) {
  return Text(txt,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 18.sp,
        height: 2,
      ));
}

tabTxt(txt) {
  return Align(
    alignment: Alignment.center,
    child: tmpTxt(txt),
  );
}
