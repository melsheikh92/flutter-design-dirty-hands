import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: FlutterLogo(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey, size: 25.0),
          onPressed: didPressBack,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.grey, size: 25.0),
            onPressed: didPressBack,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      alignment: Alignment.center,
                      height: 150,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Text("Get Couching",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Montserrat",
                                fontSize: 20.0)),
                      ),
                    ),
                    Container(height: 100)
                  ],
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 10.0, 0.0, 10.0),
                    margin: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey[100])
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                "YOU HAVE",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "206",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Quicksand",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      right: 0,
                                      child: Icon(
                                        Icons.event,
                                        size: 20,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 100.0),
                        Container(
                            height: 50.0,
                            width: 125.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent[100],
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Center(
                              child: InkWell(
                                child: Text(
                                  "Buy more",
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Text("MY COUCHES",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold)),
                  onTap: didPressMyCouches,
                ),
                InkWell(
                    onTap: didPressPastSessions,
                    child: Text(
                      "VIEW PAST SESSIONS",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: <Widget>[
                itemWidget(),
                itemWidget(),
                itemWidget(),
                itemWidget()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemWidget() {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey[100])]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  child: Image.network(
                      "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png"),
                ),
                Container(
                  height: 20,
                  width: 20,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text("Alyx",
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold)),
          Text("Away for the", style: TextStyle(color: Colors.black38)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("the next", style: TextStyle(color: Colors.black38)),
              Text(
                "5 hours",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: onClickRequest,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: Center(
                  child: Text(
                    "Request",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  void onClickRequest() {
    print("request did pressed");
  }

  void didPressPastSessions() {
    //TODO
  }
  void didPressMyCouches() {
    //TODO
  }
  void didPressBack() {
    //TODO
  }
}
