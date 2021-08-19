import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teampage1/login/nativePage.dart';

class AmountPage extends StatefulWidget {
  String? images;
  String? icon;
  String? name;
  String? raqam;
  AmountPage({this.images, this.icon, this.name, this.raqam});

  @override
  _AmountPageState createState() => _AmountPageState();
}

class _AmountPageState extends State<AmountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).hoverColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Theme.of(context).accentColor,),
        ),
        backgroundColor: Theme.of(context).hoverColor,
        elevation: 0,
        title: Text(
          "Amount",
          style: TextStyle(fontSize: 24.0, color: Theme.of(context).accentColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Card(
                color: Theme.of(context).hoverColor,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(widget.images.toString()),
                    radius: 30.0,
                  ),
                  title: Text(
                    widget.name.toString(),
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        widget.raqam.toString(),
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16.0,
                        ),
                      ),
                      Container(
                        child: Image.asset(widget.icon.toString()),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 45.0,),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Available: ",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "\$ 3,150.70",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    " \$ 1,360.00",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Commission: ",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "\$ 3.30",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70.0,),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 64.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 214, 10, 1),
                            Color.fromRGBO(50, 215, 75, 1),
                            Color.fromRGBO(50, 215, 75, 1),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 15.0,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            Text(
                              "Send money",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.0,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NativePage()));
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "ABC",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "DEF",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "GHI",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "JKL",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "MNO",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "7",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "PQRS",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "TUV",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                                Text(
                                  "WXYZ",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color:  Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Theme.of(context).hoverColor,
                            ),
                            onPressed: () {},
                            child: Text(""),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).canvasColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Theme.of(context).hoverColor,
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.backspace_outlined, color: Theme.of(context).accentColor,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
