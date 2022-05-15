import 'package:flutter/cupertino.dart';
import 'package:task1/Modules/CenterScreen/center_1.dart';

class CenterSwitchPages {
  int index;

  CenterSwitchPages(this.index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Center1(),
          ),
        );
        break;
      case 1:
        Navigator.pushNamed(context, '/center2');
    }
  }
}
