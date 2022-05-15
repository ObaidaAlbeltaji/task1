
import 'package:flutter/material.dart';
import 'package:task1/widget/details_box.dart';

class Details extends StatelessWidget {
  final List<String> entries = <String>[
    'صورة الهوية.',
    'سند ملكية.',
    'رفع مساحي (إحداثيات).',
  ];
  final List<String> entries1 = <String>[
    'تقديم الطلب.',
    'تدقيق المستندات قانونيا.',
    '.الأرشفة الإلكترونية',
    'الكشف المالي والمعلوماتي.',
    'الدائرة المالية.',
    'قسم التخطيط الحضري.',
  ];

 Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Don't show the leading button
          elevation: 0,
          title: const Text(
            'تفاصيل',
            style: TextStyle(
                color: Color(0xFF392C23),
                fontFamily: 'AvenirArabic',
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading:IconButton(
            icon: const Icon(
              Icons.close,
              color: Color(0xff392c23),
            ),
            padding: const EdgeInsetsDirectional.only(),
            iconSize: 20,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsetsDirectional.only(end: 16),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DetailsBox(entries, 'الوثائق المطلوبة'),
              const Divider(
                color: Color(0xffEFEFF5),
                indent: 8,
                endIndent: 3.5,
              ),
              DetailsBox(entries1, 'الإجراءات المتبعة'),
              const Divider(
                color: Color(0xffEFEFF5),
                indent: 8,
                endIndent: 3.5,
              ),
              const Text(
                'جهة التنفيذ',
                style: TextStyle(
                    color: Color(0xff392C23),
                    fontSize: 16,
                    fontFamily: 'AvenirArabic',
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                '.قسم التخطيط الحضري',
                style: TextStyle(
                    color: Color(0xff392C23),
                    fontSize: 16,
                   ),
              ),
              const Divider(
                color: Color(0xffEFEFF5),
                indent: 8,
                endIndent: 3.5,
              ),
              const Text(
                'مدة التنفيذ',
                style: TextStyle(
                    color: Color(0xff392C23),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                '‏14 يوم',
                style: TextStyle(
                    color: Color(0xff392C23),
                    fontSize: 16,
                  ),
              ),
              const Divider(
                color: Color(0xffEFEFF5),
                indent: 8,
                endIndent: 3.5,
              ),
              const Text(
                'الرسوم المطلوبة',
                style: TextStyle(
                    color: Color(0xff392C23),
                    fontSize: 16,
                    fontFamily: 'AvenirArabic',
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                '‏80 شيكل',
                style: TextStyle(
                    color: Color(0xff392C23),
                    fontSize: 16,
                    fontFamily: 'AvenirArabic'),
              ),
            ],
          ),
        ));
  }
}
