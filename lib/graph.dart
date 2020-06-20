import "package:flutter/material.dart";

class MyGraph extends StatelessWidget {
  List points = [15, 80, 70, 100, 34, 76, 90, 35];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: MyGraphClipper(point: points),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: width * 0.85,
          height: 275,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Color(0xFF003396),
                Color(0xFF1750AC),
                Color(0xFF3373C4),
                Color(0xFF5494DA),
                Color(0xFF73B9EE),
              ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        ),
      ),
    );
  }
}

class MyGraphClipper extends CustomClipper<Path> {
  List point = List();
  MyGraphClipper({this.point});

  @override
  Path getClip(Size size) {
    var width = size.width;
    var height = size.height;
    var section = width / 7;

    var graphPath = Path();
    graphPath.moveTo(0, height - 70);
    graphPath.lineTo(section, 50);
    graphPath.lineTo(2 * section, 100);
    graphPath.lineTo(3 * section, 50);
    graphPath.lineTo(4 * section, 150);
    graphPath.lineTo(5 * section, 60);
    graphPath.lineTo(6 * section, 100);
    graphPath.lineTo(7 * section, height - 200);
    graphPath.lineTo(width, height);
    graphPath.lineTo(0, height);
    graphPath.close();
    return graphPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
