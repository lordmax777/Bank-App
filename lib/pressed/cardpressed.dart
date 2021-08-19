import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teampage1/page/chatPage.dart';
import 'package:teampage1/page/staticPage.dart';
import 'package:teampage1/pressed/trancriptionbuttom.dart';

class Mycards extends StatefulWidget {
  const Mycards({Key? key}) : super(key: key);

  @override
  _MycardsState createState() => _MycardsState();
}

class _MycardsState extends State<Mycards> {
  int a = 0;
  int a1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        leading: IconButton(
          splashColor: Colors.white,
          splashRadius: 1,
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Theme.of(context).buttonColor,),
        ),
        title: Text("My Cards",style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).buttonColor,),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 8.0, bottom: 8.0),
            child: Container(
              height: 50.0,
              width: 45.0,
              decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: IconButton(
                  splashColor: Colors.white,
                  splashRadius: 1,
                  onPressed: (){},
                  icon: Icon(Icons.add_circle_outline_outlined, color: Theme.of(context).buttonColor,)),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10.0),
            child: SizedBox(
              height: 270.0,
              width: MediaQuery.of(context).size.width,
              child: Swiper(
                  outer: true,
                  fade: 0.9,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (c, i) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(mana[i]),fit: BoxFit.contain
                          )
                      ),
                    );
                  },
                  pagination:
                  SwiperPagination(builder: DotSwiperPaginationBuilder(
                      color: Colors.grey, activeColor: Colors.greenAccent),),
                  itemCount: 3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 23.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        height: 44.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).hoverColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("€ 1,700", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(50, 215, 75, 1)),),
                                  Text("€ 3,400", style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 2.0),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color.fromRGBO(255, 214, 10, 1),
                                            Color.fromRGBO(50, 215, 75, 1),
                                          ]),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                          )
                                      ),
                                      height: 5.0,
                                      width: 110.0,

                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5.0),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).hoverColor,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10.0),
                                          )
                                      ),
                                      height: 5.0,
                                      width: 90.0,

                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 9.0,),
                    Text("Month limit", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        height: 44.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).hoverColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("[", style: TextStyle(color: Theme.of(context).buttonColor,),),
                            SizedBox(width: 1.0,),
                            CircleAvatar(
                              backgroundColor: Theme.of(context).buttonColor,
                              radius: 2,
                            ),
                            SizedBox(width: 2.0,),
                            CircleAvatar(
                              backgroundColor: Theme.of(context).buttonColor,
                              radius: 2,
                            ),
                            SizedBox(width: 2.0,),
                            CircleAvatar(
                              backgroundColor: Theme.of(context).buttonColor,
                              radius: 2,
                            ),
                            SizedBox(width: 1.0,),
                            Text("]", style: TextStyle(color: Theme.of(context).buttonColor,),),
                          ],
                        )
                    ),
                    SizedBox(height: 9.0,),
                    Text("Change PIN", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 44.0,
                      width: 107.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).hoverColor,
                      ),
                      child: Icon(
                        Icons.ac_unit,
                      ),
                    ),
                    SizedBox(height: 9.0,),
                    Text("Freeze card", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 44.0,
                      width: 107.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).hoverColor,
                      ),
                      child: Icon(
                        Icons.palette,
                      ),
                    ),
                    SizedBox(height: 9.0,),
                    Text("Customize", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 44.0,
                      width: 107.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Theme.of(context).hoverColor,
                      ),
                      child: Icon(
                        CupertinoIcons.slider_horizontal_3,
                      ),
                    ),
                    SizedBox(height: 9.0,),
                    Text("Manage", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),)
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 130.0,
            decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              )
            ),
            margin: EdgeInsets.only(top: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    height: 60.0,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(CupertinoIcons.chevron_up),),
                        ),
                        Text("History transactions",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardButton()));
                  },
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0),
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 115.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Home.png"),fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(
                            Icons.museum_outlined,
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 115.0,
                          height: 44.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).hoverColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            CupertinoIcons.chart_bar_alt_fill,
                          ),
                        ),
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => StaticPage()));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 115.0,
                          height: 44.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).hoverColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            CupertinoIcons.chat_bubble_text,
                          ),
                        ),
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChatPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  List<String> mana = [
    "assets/images/Europe travel BIG.png",
    "assets/images/Main card BIG.png",
    "assets/images/Tokyo travel BIG.png",
  ];

}