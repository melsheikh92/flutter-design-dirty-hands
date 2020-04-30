import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final _imgurl =
      "https://guinnessworldrecords.ae/Images/The-largest-burger-restaurant-in-the-world-opens-in-Saudi-Arabia_tcm27-607317.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          stretch: true,
          backgroundColor: Colors.transparent,
          floating: true,
          pinned: true,
          expandedHeight: 500,
          titleSpacing: 0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                child: Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.red,
                ),
              ),
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
              background: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                          fit: BoxFit.fill, child: Image.network(_imgurl)),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                            size: 15,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amberAccent,
                            size: 15,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "4.0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _getTitle()
              ])),
        ),
        SliverList(
          delegate: SliverChildListDelegate(bindlist(5)),
        )
      ],
    ));
  }

  List<Widget> bindlist(int itemsCount) {
    List<Widget> list = List<Widget>();
    list.add(Padding(
      padding: EdgeInsets.only(left: 30),
      child: Text(
        "FEATURED ITEMS",
        style: TextStyle(
            color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ));
    for (int i = 0; i < itemsCount; i++) {
      list.add(getListItem());
    }
    return list;
  }

  Widget getListItem() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.network(
              _imgurl,
              width: 130,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Maple Mustered Tempeh",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Flexible(
                child: Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Just ran into this, mildly frustrating. It would be really nice if this was better documented - it definitely isn't intuitive that to get text to wrap inside a Column",
                        style:  TextStyle(color: Colors.black45),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "\$11.99",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _getTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "OPEN NOW UNTILL 7PM",
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "The Sinnamon Snail",
          style: TextStyle(
              color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("17th and unique sq east",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 15,
              ),
            ),
            Text("400ft Away",
                style: TextStyle(color: Colors.grey, fontSize: 16))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.account_balance,
              size: 15,
              color: Colors.green,
            ),
            SizedBox(
              width: 5,
            ),
            Text("Location confirmed by 3 users today",
                style: TextStyle(color: Colors.green, fontSize: 16))
          ],
        )
      ],
    );
  }
}
