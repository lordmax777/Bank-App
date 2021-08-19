import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teampage1/pressed/yanaya.dart';

class TransferToCard extends StatefulWidget {

  @override
  _TransferToCardState createState() => _TransferToCardState();
}

class _TransferToCardState extends State<TransferToCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Theme.of(context).accentColor,)),
        title: Text("Transfer to card", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 20.0, fontWeight: FontWeight.w600),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
            child: Text("From the card", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 18.0, fontWeight: FontWeight.bold),),
          ),
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
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
            child: Text("To the card", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 18.0, fontWeight: FontWeight.bold),),
          ),
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
                          color: Theme.of(context).hoverColor,
                          image: DecorationImage(
                              image: AssetImage(gradient11[i]),fit: BoxFit.cover
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
                                  Text(cardgradi12[i], style: TextStyle(color: Theme.of(context).accentColor, fontSize: 15.0),),
                                  Row(
                                    children: [
                                      Icon(navMenu[i], color: Theme.of(context).accentColor,size: 25.0,),
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
                                  Text(cardgradi34[i], style: TextStyle(color: Theme.of(context).accentColor,fontSize: 16, fontWeight: FontWeight.w400),),
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
                  itemCount: 2),
            ),
          ),
          SizedBox(
            height: 150.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).hoverColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                )
            ),
            height: 65.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.keyboard_arrow_down, color: Theme.of(context).accentColor,size: 30.0,),),
                ),
                Text("My contacts", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800, color: Theme.of(context).accentColor,),),
                SizedBox(width: 115.0,),
                GestureDetector(
                  child: Container(
                    height: 50.0,width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Theme.of(context).canvasColor,
                    ),
                    child: Icon(CupertinoIcons.search, color: Theme.of(context).accentColor,),
                  ),
                  onTap: (){},
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
              ),
              child: ListView.builder(
                itemCount: Transfercardism.length,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "${TransfercardImages[index]}",
                          ),
                          radius: 25.0,
                        ),
                        title: Text(
                          "${Transfercardism[index]}",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "${Transfercardnum[index]}",
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 16.0,
                              ),
                            ),
                            Container(
                              child: Image.asset(Transfercardrasim[index]),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          CupertinoIcons.ellipsis_vertical,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AmountPage(images: TransfercardImages[index],icon: Transfercardrasim[index], name: Transfercardism[index], raqam: Transfercardnum[index],)));
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
  List<String> gradient11 = [
    "",
    "assets/images/Main card SMALLa.png",
  ];
  List<String> cardgradi12 = [
    "_ _ _ _   _ _ _ _    _ _ _ _    _ _ _ _ ",
    "",
  ];
  List<IconData> navMenu = [
    CupertinoIcons.qrcode_viewfinder,
    Icons.minimize_sharp
  ];
  List<String> cardgradi34 = [
    "Enter card number",
    "",
  ];








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


  List<String> Transfercardrasim = [
    "assets/images/Color.png",
    "assets/images/Colorq.png",
    "assets/images/Color.png",
    "assets/images/Colorq.png",
    "assets/images/Color.png",
  ];

  List<String> Transfercardnum = [
    "5812 9023 8431 1323   ",
    "4120 8530 4021 8118   ",
    "5590 1245 4510 0317   ",
    "5812 9023 8431 1323   ",
    "4120 8530 4021 8118   ",
  ];

  List<String> Transfercardism = [
    "Maria Callas",
    "Matt Hardy",
    "Oybek Soliev",
    "Andrea Smith",
    "Leo Messi",
  ];

  List<String> TransfercardImages = [
    "https://images.unsplash.com/photo-1573640076354-ddcbf94b9b09?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxNTU0NTB8fGVufDB8fHx8&ixlib=rb-1.2.1&w=1000&q=80",
    "https://www-static.weddingbee.com/pics/59068/banana_republic_2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjRSuSfyqoAnYJsViQClfkk03AwQwRfONHjeO6yhRnp2_FeOQwIycA9d7zFxJH2Pv9yCs&usqp=CAU",
    "https://www-static.weddingbee.com/pics/59068/banana_republic_2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjRSuSfyqoAnYJsViQClfkk03AwQwRfONHjeO6yhRnp2_FeOQwIycA9d7zFxJH2Pv9yCs&usqp=CAU",
  ];
}
