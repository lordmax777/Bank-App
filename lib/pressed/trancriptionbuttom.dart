import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CardButtonState();
  }
}

class _CardButtonState extends State<CardButton> with TickerProviderStateMixin {
  _CardButtonState();
  int b = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only( bottom: 10.0),
            child: SizedBox(
              height: 88.0,
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
                              image: AssetImage(gradient[i]),fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),

                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(cardgradi1[i], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.0),),
                                  Row(
                                    children: [
                                      Text(cardgradi2[i], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.0),),
                                      Text(cardgqol[i], style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300, color: Colors.white),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13, right: 13.0, top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(cardgradi3[i], style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),),
                                  Container(
                                    child: Image.asset(cardgradi4[i]),)
                                ],
                              ),
                            ),
                          ],
                        )
                    );
                  },
                  pagination:
                  SwiperPagination(
                      margin: EdgeInsets.all(0), builder: DotSwiperPaginationBuilder(color: Colors.white, activeColor: Colors.white, size: 0, activeSize: 0, )),
                  itemCount: 3),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        )
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: IconButton(
                            splashRadius: 1,
                            disabledColor: Colors.white,
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.keyboard_arrow_down,color: Theme.of(context).accentColor,size: 28,),),
                        ),
                        SizedBox(width: 8.0,),
                        Text("07 Apr, 2021", style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.w600, fontSize: 20.0),),
                        Padding(
                          padding: EdgeInsets.only(left: 72.0, top: 7.0, right: 5.0, bottom: 7.0),
                          child: InkWell(
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.0),
                                color: Theme.of(context).canvasColor,
                              ),
                              child: Icon(Icons.search),
                            ),
// bottom ontap
                            onTap: (){},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0, top: 7.0, right: 5.0, bottom: 7.0),
                          child: InkWell(
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.0),
                                color: Theme.of(context).canvasColor,
                              ),
                              child: Icon(Icons.calendar_today_outlined),
                            ),
// bottom InkWill
                            onTap: (){
                              setState(() {
                                final themeData = Theme.of(context);
                                showDateRangePicker(
                                  context: context,
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.now().add(Duration(days: 90)),
                                  builder: (BuildContext? context, Widget? child) {
                                    return Theme(
                                      data: ThemeData.dark().copyWith(
                                        colorScheme: ColorScheme.dark(
                                          primary: Colors.greenAccent,
                                          onPrimary: Colors.white,
                                          surface: Colors.greenAccent,
                                          onSurface: Colors.white,
                                        ),
                                        dialogBackgroundColor: Colors.white,
                                      ),
                                      child: child!,
                                    );
                                  },
                                );
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    height: 60.0,
                    width: 400,
                  ),
                  Expanded(
                    child: Container(
                      color: Theme.of(context).cardColor,
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.only(top: 0),
                        itemCount: name.length,
                        itemBuilder: (context, index){
                          return SizedBox(
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 27.0,
                                child: Image.asset(picture[index]),),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(name[index], style: TextStyle(fontWeight: FontWeight.bold),),
                                  // SizedBox(width: 80.0,),
                                  Row(
                                    children: [
                                      Text(narx[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: index == 5 ? Colors.green : Theme.of(context).accentColor)),
                                      Text(narxqoldiq[index], style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
                                    ],
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(suname[index]),
                                  Text(soat[index]),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index){
                          if(index % 3 == 0 && index != 0){
                            return Padding(
                              padding: const EdgeInsets.only(top: 20.0, left: 90.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: 40.0,
                                  child: Text(oy[index], style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),)),
                            );
                          }else{
                            return Text("");
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }



  List<String> gradient = [
    "assets/images/picture.png",
    "assets/images/picture1.png",
    "assets/images/picture2.png",
  ];
  List<String> cardgradi1 = [
    "Tokyo travel",
    "Europe travel",
    "USA weekend",
  ];
  List<String> cardgradi2 = [
    "¥ 127,803.",
    "\$ 3,150.",
    "€ 7,118.",
  ];
  List<String> cardgradi3 = [
    "5367 1120 8905 0177",
    "7228 9021 3300 1502",
    "1882 8245 9831 0505",
  ];
  List<String> cardgqol = [
    "19",
    "70",
    "30",
  ];
  List<String> cardgradi4 = [
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/3.png",
  ];
  List<String> name = [
    "Airbnb",
    "Sara & Tyler",
    "Netflix",
    "Spotify",
    "Baskin-Robbins",
    "Marita Covarrubias",
    "McDonald`s",
    "BP",
    "Netflix",
    "Baskin-Robbins",
    "Airbnb",
  ];
  List<String> suname = [
    "Rental",
    "Transfer to your friends",
    "Streaming Service",
    "Music Platform",
    "Restaurants & Cafes",
    "Transfer",
    "Restaurants & Cafes",
    "Transfer to your friends",
    "Streaming Service",
    "Restaurants & Cafes",
    "Rental",
  ];
  List<String> picture = [
    "assets/images/lo.png",
    "assets/images/lo1.png",
    "assets/images/lo2.png",
    "assets/images/lo3.png",
    "assets/images/lo4.png",
    "assets/images/lo5.png",
    "assets/images/lo6.png",
    "assets/images/lo7.png",
    "assets/images/lo2.png",
    "assets/images/lo4.png",
    "assets/images/lo.png",
  ];
  List<String> oy = [
    "06 Apr, 2021",
    "03 Apr, 2021",
    "02 Apr, 2021",
    "06 Apr, 2021",
    "02 Apr, 2021",
    "02 Apr, 2021",
    "05 Apr, 2021",
    "03 Apr, 2021",
    "02 Apr, 2021",
    "02 Apr, 2021",
    "02 Apr, 2021",
  ];
  List<String> narx = [
    "- 53,937.",
    "- 30,000",
    "- 2,100",
    "- 1,500.",
    "- 5,130.",
    "15.000",
    "- 3,270.",
    "- 4,100.",
    "- 2,100",
    "- 1,500.",
    "- 5,130.",
  ];
  List<String> narxqoldiq = [
    "48  ¥",
    "  ¥",
    "  ¥",
    "99  ¥",
    "29  ¥",
    "  ¥",
    "80  ¥",
    "35  ¥",
    "  ¥",
    "99  ¥",
    "29  ¥",
  ];
  List<String> soat =[
    "9:10 PM",
    "6:50 PM",
    "2:30 PM",
    "11:00 AM",
    "8:15 PM",
    "3:30 PM",
    "11:20 AM",
    "8:20 PM",
    "10:20 PM",
    "2:30 PM",
    "11:00 AM",
  ];
}










