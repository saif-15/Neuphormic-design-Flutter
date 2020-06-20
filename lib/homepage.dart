import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradeintApp/graph.dart';
import 'package:gradeintApp/textStyes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              "Hello!",
              style: helloStyle,
            ),
            Text(
              "Saif Ul Haq",
              style: nameStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ClayContainer(
                emboss: true,
                width: width * 0.85,
                height: 350,
                borderRadius: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "420 €",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                      child: Text(
                        "Last Month Transactions",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyGraph()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ClayContainer(
                  depth: 20,
                  spread: 10,
                  width: width * 0.40,
                  borderRadius: 20,
                  height: 200,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Product launched",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "54",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "More",
                                style: normalTextStyle,
                              ),
                              color: Color(0xFF1750AC),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ClayContainer(
                  emboss: true,
                  depth: 20,
                  borderRadius: 20,
                  width: width * 0.40,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 16.0, left: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Balance For Today",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "105 €",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 85),
                          child: Container(
                            width: width*.30,
                            height: 8,
                            decoration: BoxDecoration(
                              color:  Color(0xFF1750AC),
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Recents Delivery",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0),
                ),
                Text(
                  "More",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0),
                )
              ],
            ),
            ListTile(
              leading: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(colors: [
                      Color(0xFF003396),
                      Colors.purple,
                      Color(0xFF1750AC),
                      Color(0xFF3373C4),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Icon(Icons.bookmark)),
              title: Text("Monday"),
              subtitle: Text("10% increase in delivery"),
              trailing: Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(colors: [
                      Color(0xFF003396),
                      Colors.purple,
                      Color(0xFF1750AC),
                      Color(0xFF3373C4),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Icon(Icons.add_comment)),
              title: Text("Tuesday"),
              subtitle: Text("12% increase in delivery"),
              trailing: Icon(
                Icons.cancel,
                color: Colors.redAccent,
              ),
            ),
            ListTile(
              leading: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(colors: [
                      Color(0xFF003396),
                      Colors.purple,
                      Color(0xFF1750AC),
                      Color(0xFF3373C4),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Icon(Icons.add_comment)),
              title: Text("Wednesday"),
              subtitle: Text("20% increase in delivery"),
              trailing: Icon(
                Icons.cancel,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(colors: [
                      Color(0xFF003396),
                      Colors.purple,
                      Color(0xFF1750AC),
                      Color(0xFF3373C4),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Icon(Icons.add_comment)),
              title: Text("Thursday"),
              subtitle: Text("10% increase in delivery"),
              trailing: Icon(
                Icons.cancel,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
