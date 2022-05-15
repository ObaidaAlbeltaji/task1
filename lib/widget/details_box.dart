import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBox extends StatelessWidget {
  final List<String> entries;
  final String title;

  const DetailsBox(this.entries, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Text(
            title,
            style: TextStyle(
                color: const Color(0xff392C23),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 2.5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        ' ${entries[index]}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color:  const Color(0xff392C23),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Container(
                      width: 24.w,
                      padding: const EdgeInsets.all(5),
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color(0xffefeff5),
                      ),
                      child: Text((index + 1).toString()),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
