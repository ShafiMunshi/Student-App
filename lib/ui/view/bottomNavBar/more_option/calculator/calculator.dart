import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:school_management/const/app_color.dart';
import 'package:school_management/main.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _result1 = TextEditingController();

  TextEditingController _result2 = TextEditingController();

  TextEditingController _result3 = TextEditingController();

  TextEditingController _result4 = TextEditingController();

  TextEditingController _result5 = TextEditingController();

  TextEditingController _result6 = TextEditingController();

  TextEditingController _result7 = TextEditingController();

  TextEditingController _result8 = TextEditingController();
  double gpa = 0;

  void clearData() {
    _result1.clear();
    _result2.clear();
    _result3.clear();
    _result4.clear();
    _result5.clear();
    _result6.clear();
    _result7.clear();
    _result8.clear();
    gpa = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // DropdownButton(items: items, onChanged: onChanged)
                Container(
                  height: 40.h,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.purplee,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    'Diploma Engineer Probidhan- 2016',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    resBtn('1st semester', _result1),
                    resBtn('2nd semester', _result2),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    resBtn('3rd semester', _result3),
                    resBtn('4th semester', _result4),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    resBtn('5th semester', _result5),
                    resBtn('6th semester', _result6),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    resBtn('7th semester', _result7),
                    resBtn('8th semester', _result8),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Text('Total gpa: ${gpa.toString()}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          clearData();
                        });
                      },
                      child: Container(
                        height: 45.h,
                        alignment: Alignment.center,
                        width: 140.w,
                        decoration: BoxDecoration(
                          color: AppColor.purplee,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          gpa = totalCgpa(
                              _result1.text,
                              _result2.text,
                              _result3.text,
                              _result4.text,
                              _result5.text,
                              _result6.text,
                              _result7.text,
                              _result8.text);
                        });
                        print(gpa);
                        if (gpa > 4) {
                          _dialogBuilder(context);
                        }

                        //   gpa == null
                        //       ? Text('Total gpa: 0')
                        //       : Text('Total gpa: $gpa');
                      },
                      child: Container(
                        height: 45.h,
                        alignment: Alignment.center,
                        width: 140.w,
                        decoration: BoxDecoration(
                          color: AppColor.purplee,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 45.h,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.purplee,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    'Total CGPA = ${gpa.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
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

resBtn(txt, controller) {
  return Container(
    height: 85.h,
    width: 150.w,
    // color: Colors.green,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1),
      borderRadius: BorderRadius.circular(10.r),
      // boxShadow: ,
      color: Colors.white,
    ),
    child: Column(
      children: [
        Text(
          txt,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 100.w,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            autofocus: true,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

double totalCgpa(r1, r2, r3, r4, r5, r6, r7, r8) {
  r1 = double.parse(r1.toString());
  r2 = double.parse(r2.toString());
  r3 = double.parse(r3.toString());
  r4 = double.parse(r4.toString());
  r5 = double.parse(r5.toString());
  r6 = double.parse(r6.toString());
  r7 = double.parse(r7.toString());
  r8 = double.parse(r8.toString());
  r1 *= 0.05;
  r2 *= 0.05;
  r3 *= 0.05;
  r4 *= 0.1;
  r5 *= 0.15;
  r6 *= 0.2;
  r7 *= 0.25;
  r8 *= 0.15;
  double res = r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8;
  return res;
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('An error found.'),
        content: const Text(
          'Something is wrong to calculate\n'
          'please recheck your CGPA\n',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
