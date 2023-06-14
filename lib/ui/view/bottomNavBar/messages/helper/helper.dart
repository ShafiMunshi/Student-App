import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widgets/widgets.dart';

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  File? _image;
  String imageUrl = '';

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });


  }

  writeData() async {
    File imgFile = File(_image!.path);
    FirebaseStorage _storage = FirebaseStorage.instance;
    UploadTask _uploadTask =
        _storage.ref('images').child(_image!.path).putFile(imgFile);

    TaskSnapshot snapshot = await _uploadTask;
    imageUrl = await snapshot.ref.getDownloadURL();

    CollectionReference _data =
        FirebaseFirestore.instance.collection("assignment-5th");
    print(imageUrl);
    print('Hello bro');

    _data
        .add({
          'image': imageUrl,
          'roll': '584370',// TODO: add dynamic roll here...
        })
        .then((value) => print('User info added'))
        .catchError((error) => print("Failed to add user: $error"));
  }

  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('cmt-5th-1st').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 300.h,
                              width: 350.w,
                              child: Image.network(
                                (data['image']),
                              ),
                            ),
                            Text(
                              data['detail'],
                              style: TextStyle(fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            // show model bottom sheet
                            // TODO: COMES assignment from backend....

                            height: 650.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // photo and assignment title
                                // UserInformation(),

                                Container(
                                  height: 150.h,
                                  width: 180.h,
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                  child: _image != null
                                      ? Image.file(
                                          File(_image!.path),
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset('assets/icons/gallery.png'),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),

                                Text(
                                  'Submit Your Work',
                                  style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    menuBtn(
                                        'From Galley', 'assets/icons/time.png',
                                        () {
                                      getImage(ImageSource.gallery);
                                      
                                      if (_image != null) {
                                        print('A image uploaded');
                                      }

                                      setState(() {
                                        
                                      });
                                    }),
                                    menuBtn(
                                      'From Camera',
                                      'assets/icons/lecture.png',
                                      () {
                                        getImage(ImageSource.camera);
                                        if (_image != null)
                                          print('A image is uploaded');

                                          setState(() {
                                            
                                          });
                                      },
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 10.h,
                                ),
                                subBtmn('Submit', () {
                                  var snackBar = SnackBar(
                                      content: Text('Assignment Uploaded.'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);

                                  writeData();
                                }),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  )
                ]);
          }).toList(),
        );
      },
    );
  }
}
