import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/Modules/ServiceScreen/center_switch_pages.dart';

class ServiceListView extends StatelessWidget {
  const ServiceListView({Key? key}) : super(key: key);

// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return ListViewBuilder();
  }
}

class ListViewBuilder extends StatelessWidget {
  final List<String> entries = <String>[
    'مركز الأطراف الصناعية',
    'مركز رشاد الشوا الثقافي',
    'مركز إسعاد الطفولة',
    'المكتبة العامة',
    'مركز هولست الثقافي',
    'قرية الفنون والحرف',
  ];

  ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: entries.length,
          padding: EdgeInsetsDirectional.only(top: 8.h),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F8),
                borderRadius: BorderRadius.circular(12.r),
              ),
              margin:
                   EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 12.h),
              padding: EdgeInsetsDirectional.only(end: 16.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      CenterSwitchPages(index,context);
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: const Icon(
                      CupertinoIcons.chevron_left_circle,
                      color: Color(0xff8A8A8F),
                    ),
                  ),
                  Expanded(
                      child: Text(' ${entries[index]}',
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            fontSize: 14,
                          ))),
                ],
              ),
            );
          }),
    );
  }
}
