import 'package:flutter/material.dart';
import 'package:gradeintApp/textStyes.dart';

class TabItem extends StatelessWidget {

  String itemName;
  bool isSelected=false;
  Function onTabTab;
  TabItem({this.itemName,this.isSelected,this.onTabTab});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(angle: -1.58,
      child: GestureDetector(
        onTap: onTabTab,
        child: Container(
          child: AnimatedDefaultTextStyle(
            style: isSelected ? selectTextStyle : normalTextStyle,
              duration: Duration(milliseconds: 100),
            child: Text(itemName),
          ),
        ),
        )
    );
  }
}
