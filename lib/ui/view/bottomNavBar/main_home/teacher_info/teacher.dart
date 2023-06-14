import 'package:flutter/material.dart';

import '../../../../../const/app_color.dart';
import '../../../widgets/widgets.dart';

class Teacherinfo extends StatelessWidget {
  const Teacherinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('Teacher Info'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          tileCard(
              'Khaled Hossain',
              'Instructor\nComputer Science & Technology',
              'assets/images/khaled.png'),
          tileCard('Nasir Hossain', 'Instructor\nCivil Technology',
              'assets/images/kakon.png'),
          tileCard(
              'Towhid Hossain',
              'Instructor\nComputer Science & Technology',
              'assets/images/DP.jpg'),
          tileCard('Kakon Chadra das', 'Instructor\nElectronics Technology',
              'assets/images/kakon.png'),
        ],
      ),
    ));
  }
}
