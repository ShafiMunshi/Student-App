import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../const/app_color.dart';
import '../../../widgets/widgets.dart';

class Achievement extends StatelessWidget {
  const Achievement({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('Achievements'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          tileCard('Rovar Scout', 'Dikkha Occaion', 'assets/images/mask.png'),
          tileCard('LPI Debating Club', 'Dikkha Occaion',
              'assets/images/debate.png'),
          tileCard(
              'Skill Development', 'Dikkha Occaion', 'assets/images/apps.png'),
          tileCard(
              'Debating Club', 'A debate club form lpi', 'assets/images/download.png'),
          tileCard(
              'LPI Programming Club', 'Hello there', 'assets/images/download.jpeg'),
        ],
      ),
    ));
  }
}
