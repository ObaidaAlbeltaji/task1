import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/widget/tap_bar_divider.dart';

import 'service_list_view.dart';

class ServiceTapController extends StatelessWidget {
  const ServiceTapController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            titleSpacing: 0,
            automaticallyImplyLeading: false,
            title:  Text(
              'أنظمة وأدلة',
              style: TextStyle(
                  color:const Color(0xFF392C23),
                  fontWeight: FontWeight.w300,
                  fontSize: 18.sp),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_right),
                color: Colors.black,
                iconSize: 40.sp,
              ),
            ],
            bottom:
            PreferredSize(
              child: Container(
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(color: Color(0xffEFEFF5)),
                  ),
                ),
                child: Container(
                  height: 34.h,
                  padding: const EdgeInsets.all(3),
                  margin:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xFFF7F7F8),
                  ),
                  child: TabBar(
                    labelPadding: EdgeInsets.zero,
                    isScrollable: false,
                    labelStyle:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                    labelColor: const Color(0xff3EC4B5),
                    unselectedLabelColor: const Color(0xff707070),
                    unselectedLabelStyle:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        color: Colors.white
                    ),
                    tabs: [
                      const Tab(
                        child: Text('المراكز'),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            TapBarDivider.left(),
                            const Text('دليل المخالفات'),
                            TapBarDivider.right(),
                          ],
                        ),
                      ),
                      const Tab(
                        child: Text('دليل الاجراءات'),
                      ),
                    ],
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(54.h),

            ),
          ),
          body: const TabBarView(
            children: [ServiceListView() , ServiceListView() , ServiceListView() ],
          ),
        ),
      ),
    );
  }
}
