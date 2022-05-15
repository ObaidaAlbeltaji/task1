import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceBox extends StatelessWidget {
  final List<String> entries;
  final String title;

  const PriceBox(this.entries, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          Container(
            margin: EdgeInsets.only(top: 13.h),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffEFEFF5)),
                borderRadius: BorderRadius.circular(12.r)),
            padding: EdgeInsets.symmetric(horizontal:  16.w,vertical: 12.h),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.h),
                        child: Text(' ${entries[index]}',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                            )),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
