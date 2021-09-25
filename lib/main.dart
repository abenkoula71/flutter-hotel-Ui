import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.map,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(children: [
        Column(
          children: [
            search,
            Container(
                decoration: BoxDecoration(color: Colors.grey[100]),
                child: Column(
                  children: [
                    barNumHotel,
                    pubHotal,
                    pubHotal2,
                    pubHotal,
                    pubHotal,
                  ],
                ))
          ],
        ),
      ]),
    );
  }
}

Widget search = Container(
  width: double.infinity,
  padding: EdgeInsets.only(top: 20),
  height: 150,
  color: Colors.grey[200],
  child: Column(
    children: [
      Row(children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
                labelText: 'search ',
                hintText: "search...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            onSaved: (String? value) {
              print('Value for field index saved as "value"');
            },
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.greenAccent),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        )
      ]),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "choisse date",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '11 , Aug - 16 , Aug',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )
            ],
          ),
          Container(
            width: 2,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1)),
          ),
          Column(
            children: [
              Text(
                "Num and Room",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1 Room - 2 Adults',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )
            ],
          )
        ],
      )
    ],
  ),
);

Widget barNumHotel = Container(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '503 hotels found',
        style: TextStyle(
          color: Colors.grey[700],
        ),
      ),
      Container(
        child: Row(
          children: [
            Text(
              'Filter',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            Icon(
              Icons.menu,
              color: Colors.green[400],
            )
          ],
        ),
      )
    ],
  ),
);

Widget pubHotal = Container(
  margin: EdgeInsets.all(20),
  width: double.infinity,
  child: Column(
    children: [
      Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage("images/1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Royal Hotel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  '16000DA',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Alger',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.map,
                        size: 15,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        "fi lmostaganem",
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ),
                Text(
                  '3and hmidus',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_border_purple500_outlined,
                      color: Colors.greenAccent,
                      size: 20,
                    )
                  ],
                ),
                Text(
                  '50 presone',
                  style: TextStyle(color: Colors.grey[400], fontSize: 15),
                )
              ],
            )
          ],
        ),
      )
    ],
  ),
);

Widget pubHotal2 = Container(
  margin: EdgeInsets.all(20),
  width: double.infinity,
  child: Column(
    children: [
      Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage("images/3.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Royal Hotel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  '16000DA',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Alger',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.map,
                        size: 15,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        "fi lmostaganem",
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ),
                Text(
                  '3and hmidus',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_border_purple500_outlined,
                      color: Colors.greenAccent,
                      size: 20,
                    )
                  ],
                ),
                Text(
                  '50 presone',
                  style: TextStyle(color: Colors.grey[400], fontSize: 15),
                )
              ],
            )
          ],
        ),
      )
    ],
  ),
);
