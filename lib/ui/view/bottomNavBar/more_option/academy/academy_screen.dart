import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/app_color.dart';
import '../../../widgets/widgets.dart';

class AcademyScreen extends StatelessWidget {
  const AcademyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.purplee,
              title: Text('Academy'),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn('Regulation', 'assets/icons/academy.png', () {
                        // Get.to(AcademyScreen());
                      }),
                      menuBtn('Semester Plan', 'assets/icons/fee.png', () {}),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuBtn('Syllabus', 'assets/icons/lecture.png', () {}),
                      menuBtn(
                          'Digital Content', 'assets/icons/gallery.png', () {}),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
            )));
  }
}
