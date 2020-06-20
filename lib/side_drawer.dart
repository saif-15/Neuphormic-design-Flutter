import 'package:flutter/material.dart';
import 'package:gradeintApp/tab_items.dart';

class MyDrawer extends StatefulWidget {
  @override
  MyHomeDrawer createState() => MyHomeDrawer();
}

class MyHomeDrawer extends State<MyDrawer> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          bottom: 0,
          width: 90,
          right: 0,
          child: ClipPath(
            clipper: CurveClipper(),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF003396),
                        Color(0xFF1750AC),
                        Color(0xFF3373C4),
                        Color(0xFF5494DA),
                      ],
                      stops: [
                        0.2,
                        0.35,
                        0.70,
                        1.0
                      ])),
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 4,
          width: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              IconButton(
                icon: Icon(Icons.dashboard),
                color: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                height: 20.0,
              ),
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TabItem(
                      itemName: "Wallet",
                      isSelected: selectIndex == 0,
                      onTabTab: () {
                        onTabTap(0);
                      },
                    ),
                    TabItem(
                      itemName: "Keys",
                      isSelected: selectIndex == 1,
                      onTabTab: () {
                        onTabTap(1);
                      },
                    ),
                    TabItem(
                      itemName: "Shops",
                      isSelected: selectIndex == 2,
                      onTabTab: () {
                        onTabTap(2);
                      },
                    ),
                    TabItem(
                      itemName: "More",
                      isSelected: selectIndex == 3,
                      onTabTab: () {
                        onTabTap(3);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  onTabTap(int index) {
    setState(() {
      switch (index) {
        case 0:
          {
            selectIndex = 0;
            break;
          }
        case 1:
          {
            selectIndex = 1;
            break;
          }
        case 2:
          {
            selectIndex = 2;
            break;
          }
        case 3:
          {
            selectIndex = 3;
            break;
          }
      }
    });
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var width = size.width;
    var height = size.height;

    path.moveTo(width, 0);
    path.quadraticBezierTo(width / 3, 20, width / 3, 55);
    path.lineTo(width / 3, height - 50);
    path.quadraticBezierTo(width / 3, height - 20, width, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}