import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:school_management/ui/view/bottomNavBar/messages/helper/helper.dart';
import 'package:school_management/ui/view/bottomNavBar/messages/helper/task_show.dart';

import '../../../../const/app_color.dart';
import '../../widgets/widgets.dart';

class TaskScreen extends StatefulWidget {
  // const TaskScreen({super.key});

  String sub;

  TaskScreen({required this.sub});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  File? _image;
  // image pick and up
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    this._image = imageTemporary;
  }

  XFile? _assignImage;
  String? imageUrl;

  writeData() async {
    File imgFile = File(_assignImage!.path);
    FirebaseStorage _storage = FirebaseStorage.instance;
    UploadTask _uploadTask =
        _storage.ref('images').child(_assignImage!.name).putFile(imgFile);

    TaskSnapshot snapshot = await _uploadTask;
    imageUrl = await snapshot.ref.getDownloadURL();

    CollectionReference _data =
        FirebaseFirestore.instance.collection("students");
    print(imageUrl);
    print('Hello bro');

    _data.add({
      // 'name': _title.text,
      // 'description': _description.text,
      // 'image': imageUrl
    });
  }

// assignment date...
  var title = [
    'Page 342 work 2',
    'Page 667 work 1',
    'Page 656 work 5',
    'Page 234 work 5',
    'Page 504 work 1',
    'Page 14 work 3',
    'Page 343 work 7',
  ];
// assignment date...
  var date = [
    '15 June',
    '14 June',
    '13 June',
    '12 June',
    '11 June',
    '10 June',
    '09 June',
  ];

  var list = []; // list of subject assignment

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('${widget.sub} Task\'s'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: title.length,
        itemBuilder: (context, index) => Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(Data());   
               
              },
              child: Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.all(5.w),
                height: 80.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                child: tileCard(
                    // TODO: from backend data
                    title[index], // assignment image...
                    date[index], // assignment text
                    'assets/icons/academy.png'),
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(20.w),
      ),
    ));
  }
}


