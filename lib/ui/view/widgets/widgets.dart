import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_color.dart';

subBtmn(txt, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 45.h,
      alignment: Alignment.center,
      width: 220.w,
      decoration: BoxDecoration(
        color: AppColor.purplee,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        txt,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          // fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}


bigTitle(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.w600),
  );
}

menuBtn(txt, img, ontap) {
  return Container(
    height: 150.h,
    width: 150.w,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        IconButton(
          onPressed: ontap,
          iconSize: 100.h,
          icon: ImageIcon(
            color: AppColor.purplee,
            AssetImage(
              img,
            ),
          ),
        ),
        Text(txt),
      ],
    ),
  );
}

tileCard(txt, subtxt, [img]) {
  return Card(
    elevation: 5,
    child: ListTile(
      leading: SizedBox(
        // width: 90.w,
        // height: 75.h,
        child: Image.asset(img), //
      ),
      title: Text(txt),
      subtitle: Text(subtxt),
      trailing: Icon(Icons.keyboard_arrow_right_sharp),
    ),
  );
}
