import 'package:flutter/cupertino.dart';

class TapBarDivider extends StatelessWidget {
 late final Border border;

  TapBarDivider.left({Key? key}) : super(key: key) {
    border= const Border(
      left: BorderSide(
        color: Color(0xffE6E7E8),
      ),
    );
  }
  TapBarDivider.right({Key? key}) : super(key: key) {
    border= const Border(
      right: BorderSide(
        color: Color(0xffE6E7E8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(top: 4, bottom: 3),
      decoration:  BoxDecoration(
        border: border,
      ),
    ));
  }
}
