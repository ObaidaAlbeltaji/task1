import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/widget/price_box.dart';

class Center1 extends StatelessWidget {
  final List<String> entries = <String>[
    'يتم تحويل المريض للمركز من قبل المستشفيات الحكومية وعيادات وكالة الغوث أو من خلال الطبيب المعالج.',
    'في حال وجود مشاريع من ممول خارجي فإنه يتم تقديم الخدمة إلى المستفيد مجانا',
    'تقوم وكالة الغوث بتغطية 50% من قيمة الجهاز أو الطرف بما لا يزيد عن 500\$ وذلك للمستفيدين من الخدمات الصحيةلوكالة الغوث (اللاجئين)',
    'عند وصول المريض إلى المركز يتم إدراجه ضمن النظام المعمول به كما يلي:',
  ];
  final List<String> entries2 = <String>[
    'يتم فحص الحالة من قبل المستشار الطبي وتحديد المطلوب عمله.',
    'تم عمل جلسات علاج طبيعي للمستفيد حتى يصبح جاهزا لتلقي الطرف للمستفيد.',
    'يتم عمل الطرف للمستفيد فورا بعد انتهاء جلسات العلاج الطبيعي, يتم تدريب المستفيد على استخدام الطرف لفترة زمنية في حدود 60 يوم إذا كان المستفيد حالة جديدة وإذا كان المستفيد حالة قديمة فإنه يحتاج إلى 15 يوم تدريب.',
    'بعد عرض المستفيد على المستشار الطبي لفحصه أثناءالتدريب فيقرر له إنجاز الطرف في حالة أن تدريبه قد اكتمل.',
    'يتم تسليم الطرف للمستفيد في خلال 10 أيام من لحظة موافقة المستشار الطبي على التسليم.',
  ];
  final List<String> entries3 = <String>[
    'السعر: 6700 شيكل',
    'مدة الورشة: 15 يوم',
    'مدة العلاج الطبيعي: 60 يوم',
  ];

  final List<String> entries4 = <String>[
    'السعر: 3500 شيكل',
    'مدة الورشة: 10 يوم',
    'مدة العلاج الطبيعي: 30 يوم',
  ];

  Center1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {Navigator.pop(context);},
            icon: const Icon(Icons.chevron_right_sharp),iconSize: 40,
            color: Colors.black,
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'مركز الأطراف الصناعية',
          style: TextStyle(
              color: Color(0xFF392C23),
              fontWeight: FontWeight.w300,
              fontSize: 18),
        ),
        bottom: PreferredSize(
            child: Container(
              color: const Color(0x2aefeff5),
              height: 0.5,
            ),
            preferredSize: Size.fromHeight(0.h)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            ' ${entries[index]}',
                            textDirection: TextDirection.rtl,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          width: 5,
                          margin: const EdgeInsets.only(top: 10),
                          height: 5,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(5)),
                          ),
                        )
                      ],
                    );
                  }),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.h),
                child: ListView.builder(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: entries2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              ' ${entries2[index]}',
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            width: 24.h,
                            padding: EdgeInsets.all(5.r),
                            decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color(0xffefeff5),
                            ),
                            child: Text((index + 1).toString()),
                            alignment: Alignment.center,
                          ),
                        ],
                      );
                    }),
              ),
              PriceBox(entries3,'فوق الركبة TF سفلي'),
              PriceBox(entries4,'تحت الركبة TF سفلي'),
            ],
          ),
        ),
      ),
    );
  }
}
