import 'package:flutter/material.dart';

class NativePage extends StatefulWidget {
  const NativePage({Key? key}) : super(key: key);

  @override
  _NativePageState createState() => _NativePageState();
}

class _NativePageState extends State<NativePage> {
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
        elevation: 0,
        titleSpacing: 10.0,
        backgroundColor: Theme.of(context).hoverColor,
        title: Text("Verification", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 24.0, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Text(
                    "sending money",
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  Text(
                    "\$1,360",
                    style: TextStyle(fontSize: 41, fontWeight: FontWeight.w800, color: Theme.of(context).accentColor),
                  ),
                  SizedBox(height: 35.0),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/lo7RkEvmtePrw_RuJdR3lbWbIiDJZX8hpU1IjXYXJyqLjgqng1LVD2RKtCvtsnGCniuOwngrle9g5zuqplFmldALpIBUmHiu6h41qWiwBQO-1w=s0-d"),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 5.0,),
                      Text(
                        "Maria Callas",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                      ),
                      SizedBox(height: 2.0,),
                      Text(
                        "1234 5678 9012 3456",
                        style: TextStyle(fontSize: 16.0, color: Theme.of(context).accentColor),
                      ),
                      SizedBox(height: 1.0,),
                      Container(
                        child: Image.asset("assets/images/Color.png",
                          width: 30.0,
                          height: 20.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0,),
                  Container(
                    height: 70.0,
                    child: ImageIcon(AssetImage("assets/images/Arrow.png"), color: Theme.of(context).accentColor,size: 130.0,),
                  ),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(top: 40.0),
                        height: 90.0,
                        width: 200.0,
                        child: ImageIcon(
                          AssetImage("assets/images/Touch ID.png"),
                          color: Colors.lightGreenAccent,size: 50.0,)),
                    onTap: (){},
                  ),
                  SizedBox(height: 15.0),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text("Touch ID sensor", style: TextStyle(fontSize: 20.0),),
                          Text("to verify transaction", style: TextStyle(fontSize: 20.0),),
                          SizedBox(height: 8.0,),
                          Text("Please verify your identify", style: TextStyle(fontSize: 14.0, color: Colors.grey),),
                        ],
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
}
