import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:school_management/const/app_color.dart';
import 'package:school_management/ui/view/bottomNavBar/messages/task-screen.dart';

import '../../widgets/widgets.dart';

class MessageScreen extends StatefulWidget {
  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  File? _image;
  // image pick and up
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    this._image = imageTemporary;
  }

  var suba = [
    'Operating System ',
    'Object Oriented ',
    'Java Script ',
    'Analog Electronis ',
    'Operating System ',
    'Geography',
    'Chemisrty',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.purplee,
          title: Text('Task'),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: suba.length,
          itemBuilder: (context, index) => Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(TaskScreen(sub: suba[index]));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 12.h),
                  padding: EdgeInsets.all(5.w),
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                  child: tileCard(suba[index], 'View all Assignment',
                      'assets/icons/note.png'),
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(20.w),
        ),
      ),
    );
  }
}
