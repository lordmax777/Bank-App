import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:tcard/tcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teampage1/pressed/cardpressed.dart';



List images = [
  "assets/images/Main card BIG.png",
  "assets/images/Europe.png",
  "assets/images/Tokyo.png",

];

List<Widget> cards = List.generate(
  images.length,
      (int index) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Image(
        image: AssetImage(images[index]),fit: BoxFit.fill,
      ),
    );
  },
);

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List names = [
    "Transfer",
    "Exchange",
    "Payments",
    "Credits",
    "Deposits",
    "Cashback",
    "ATM",
    "Security",
    "More",
  ];


  TCardController _controller = TCardController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        leading: Container(
          margin: EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).hoverColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            height: 44.0,
            width: 60.0,
            child: Icon(
              Icons.settings,
              color: Theme.of(context).accentColor,
            )
        ),
        centerTitle: true,
        title: Container(
          height: 54.0,
          width: 54.0,
          child: Image(
            image: AssetImage("assets/images/Profile.png"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0, top: 8.0, bottom: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              height: 44.0,
              width: 48.0,
              child: Icon(
                CupertinoIcons.bell,
                color: Theme.of(context).accentColor,
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 12.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 0.7 / 4.5,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Total balance",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromRGBO(142, 142, 147, 1),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 40,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                            ),
                            Container(
                              margin: EdgeInsets.all(
                                  MediaQuery.of(context).size.height / 150),
                              child: Text(
                                "£ 23,970.30",
                                style: TextStyle(
                                  fontSize: 32.0,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 30,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                              child: Text(
                                "This month",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromRGBO(142, 142, 147, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24.0,
                                    width: 24.0,
                                    child: Image(
                                      image: AssetImage("assets/images/Vector2.png"),
                                    ),
                                  ),
                                  Text(
                                    "   £ 5,235.25",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24.0,
                                    width: 24.0,
                                    child: Image(
                                      image: AssetImage("assets/images/Vector1.png"),
                                    ),
                                  ),
                                  Text(
                                    "   £ 3,710.80",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          child: TCard(
                            size: Size(360, 230),
                            cards: cards,
                            controller: _controller,
                            onForward: (index1, info) {
                              index = index1;
                              print(info.direction);
                              setState(() {
                                if (index == 3) {
                                  _controller.reset();
                                }
                              });
                            },
                            onBack: (index1, info) {
                              index = index1;
                              setState(() {});
                            },
                            onEnd: () {
                              print('end');
                            },
                            delaySlideFor: 1000,
                            slideSpeed: 8.0,
                          ),
                        ),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mycards()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: (index == 0 || index == 3) ? Colors.greenAccent : Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: (index == 1) ? Colors.greenAccent : Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: (index == 2) ? Colors.greenAccent : Colors.grey,
                      ),
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
                  child: Container(
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 140,
                        childAspectRatio: 1.1,
                        crossAxisSpacing: 14,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (_, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 44.0,
                                width: 107.0,
                                margin: EdgeInsets.symmetric(vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).hoverColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 36.0,
                                  ),
                                  child: Container(
                                    child: Icon(
                                      iconol[index],
                                      color: Theme.of(context).accentColor,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    "${names[index]}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 142, 147, 100),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  List<String> mana = [
    "assets/images/Europe travel BIG.png",
    "assets/images/Main card BIG.png",
    "assets/images/Tokyo travel BIG.png",
  ];
  List<IconData> iconol = [
    CupertinoIcons.arrow_right_arrow_left,
    CupertinoIcons.money_yen,
    Icons.account_balance_wallet_outlined,
    CupertinoIcons.creditcard,
    CupertinoIcons.percent,
    CupertinoIcons.gift,
    Icons.atm,
    CupertinoIcons.checkmark_shield,
    CupertinoIcons.square_grid_2x2,
  ];
}


// GlobalKey<FormState> myFormKey = new GlobalKey();
// DateTimeRange? myDateRange;
// final themeData = Theme.of(context);
//           showDateRangePicker(
//             context: context,
//             firstDate: DateTime.now(),
//             lastDate: DateTime.now().add(Duration(days: 90)),
//             builder: (BuildContext? context, Widget? child) {
//               return Theme(
//                 data: ThemeData.dark().copyWith(
//                   colorScheme: ColorScheme.dark(
//                     primary: Colors.greenAccent,
//                     onPrimary: Colors.white,
//                     surface: Colors.greenAccent,
//                     onSurface: Colors.white,
//                   ),
//                   dialogBackgroundColor: Colors.white,
//                 ),
//                 child: child!,
//               );
//             },
//           );

/*Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.only(top: 22.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 44.0,
                        width: 48.0,
                        child: Icon(
                          Icons.settings,
                        )
                      ),
                      Container(
                        height: 54.0,
                        width: 54.0,
                        child: Image(
                          image: AssetImage("assets/images/Profile.png"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 44.0,
                        width: 48.0,
                        child: Icon(
                          CupertinoIcons.bell,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 12.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 0.7 / 4.5,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Total balance",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromRGBO(142, 142, 147, 1),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 40,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                            ),
                            Container(
                              margin: EdgeInsets.all(
                                  MediaQuery.of(context).size.height / 150),
                              child: Text(
                                "£ 23,970.30",
                                style: TextStyle(
                                  fontSize: 32.0,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 30,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                              child: Text(
                                "This month",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color.fromRGBO(142, 142, 147, 1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24.0,
                                    width: 24.0,
                                    child: Image(
                                      image: AssetImage("assets/images/Vector2.png"),
                                    ),
                                  ),
                                  Text(
                                    "   £ 5,235.25",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 80,
                                  left:
                                  MediaQuery.of(context).size.height / 150),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24.0,
                                    width: 24.0,
                                    child: Image(
                                      image: AssetImage("assets/images/Vector1.png"),
                                    ),
                                  ),
                                  Text(
                                    "   £ 5,235.25",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: TCard(
                          size: Size(360, 230),
                          cards: cards,
                          controller: _controller,
                          onForward: (index1, info) {
                            index = index1;
                            print(info.direction);
                            setState(() {
                              if (index == 3) {
                                _controller.reset();
                              }
                            });
                          },
                          onBack: (index1, info) {
                            index = index1;
                            setState(() {});
                          },
                          onEnd: () {
                            print('end');
                          },
                          delaySlideFor: 1000,
                          slideSpeed: 8.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: (index == 0 || index == 3) ? Colors.greenAccent : Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: (index == 1) ? Colors.greenAccent : Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: (index == 2) ? Colors.greenAccent : Colors.grey,
                      ),
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
                  child: Container(
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 1.2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (_, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 44.0,
                                width: 107.0,
                                margin: EdgeInsets.symmetric(vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).hoverColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 36.0,
                                  ),
                                  child: Container(
                                    child: Icon(
                                      iconol[index],
                                      color: Theme.of(context).accentColor,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    "${names[index]}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 142, 147, 100),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),*/