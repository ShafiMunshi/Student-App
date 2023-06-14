import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/app_color.dart';
import '../../../widgets/widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.purplee,
              title: Text('Fee'),
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
                      menuBtn('Semester Fee', 'assets/icons/form.png', () {
                        // Get.to(AcademyScreen());
                      }),
                      menuBtn(
                          'Form Fill-up Fee', 'assets/icons/sems.png', () {}),
                    ],
                  ),
                ],
              ),
            )));
  }
}
