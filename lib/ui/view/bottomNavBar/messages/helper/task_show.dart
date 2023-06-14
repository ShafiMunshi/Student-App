import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../const/app_color.dart';
import 'helper.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('cmt-5th-1st').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('All Assignment'),
        centerTitle: true,
      ),
      body: UserInformation(),
    );
  }
}
