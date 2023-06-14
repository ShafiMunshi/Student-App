import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/academy/academy_screen.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/attendence/attendence_screen.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/calculator/calculator.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/fee/fee_screen.dart';

import '../../widgets/widgets.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn('Academy', 'assets/icons/academy.png', () {
                        Get.to(const AcademyScreen());
                      }),
                      menuBtn('Fee', 'assets/icons/fee.png', () {
                        Get.to(FeeScreen());
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn('Lecture', 'assets/icons/lecture.png', () {}),
                      menuBtn('Note', 'assets/icons/note.png', () {}),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn('Calculator', 'assets/icons/calcc.png', () {
                        Get.to(CalculatorScreen());
                      }),
                      menuBtn('Attendence', 'assets/icons/propp.png', () {
                        Get.to(AttendenceScreen());
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn('Scheduel', 'assets/icons/time.png', () {}),
                      menuBtn('.....', 'assets/icons/propp.png', () {}),
                    ],
                  ),
                ],
              ),
            )));
  }
}
