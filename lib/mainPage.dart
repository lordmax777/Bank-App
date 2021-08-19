import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teampage1/page/chatPage.dart';
import 'package:teampage1/page/homePage.dart';
import 'package:teampage1/page/staticPage.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget>? pageList;
  HomePage? homePage;
  StaticPage? staticPage;
  ChatPage? chatpage;

  int count = 0;

  @override
  void initState() {
    homePage = HomePage();
    staticPage = StaticPage();
    chatpage = ChatPage();
    pageList = [homePage!, staticPage!, chatpage!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList![selectedIndex],
      bottomNavigationBar: Container(
        height: 75.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
            color: Theme.of(context).hoverColor, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 20,
              offset: Offset(0, 10))
        ]),
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Stack(
                  children: [
                    SizedBox(
                      width: 115.0,
                      child: Center(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          height:
                          index == selectedIndex ? 44.0 : 0,
                          width: index == selectedIndex
                              ? 107.0
                              : 0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(rasim[index]),fit: BoxFit.cover
                            ),
                          borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 115,
                      child: Icon(
                        navMenu[index],
                        color: index == selectedIndex
                            ? Colors.white
                            : Theme.of(context).accentColor,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
  List<IconData> navMenu = [
    Icons.museum_outlined,
    CupertinoIcons.chart_bar_alt_fill,
    CupertinoIcons.chat_bubble_text,
  ];
  List<String> rasim =[
    "assets/images/Home.png",
    "assets/images/Rectangle 1.png",
    "assets/images/Rectangle 2.png",
  ];


}