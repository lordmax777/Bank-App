import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class StaticPage extends StatefulWidget {

  @override
  _StaticPageState createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> with TickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).canvasColor,
        toolbarHeight: 115.0,
        elevation: 0,
        titleSpacing: 10.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 44.0,
                child: Center(child: Text("Expanse", style: TextStyle(color: Theme.of(context).accentColor))),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.pink,
                      Colors.pink,
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Container(
                height: 44.0,
                child: Center(child: Text("Income", style: TextStyle(color: Theme.of(context).accentColor)),),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
        bottom: TabBar(
          labelPadding: EdgeInsets.only(bottom: 10.0),
          controller: _controller,
          indicatorWeight: 0.01,
          tabs: [
            Container(
              width: 48.0,
              height: 44.0,
              child: Center(child: Text("D", style: TextStyle(color: Theme.of(context).accentColor))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).cardColor),
            ),
            Container(
              width: 48.0,
              height: 44.0,
              child: Center(child: Text("D", style: TextStyle(color: Theme.of(context).accentColor))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).cardColor),
            ),
            Container(
              width: 48.0,
              height: 44.0,
              child: Center(child: Text("M", style: TextStyle(color: Theme.of(context).accentColor))),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.green,
                    Colors.green,
                  ],
                ),
              ),
            ),
            Container(
              width: 48.0,
              height: 44.0,
              child: Center(child: Text("Y", style: TextStyle(color: Theme.of(context).accentColor))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).cardColor),
            ),
            Container(
              width: 48.0,
              height: 44.0,
              child: Center(child: Text("All", style: TextStyle(color: Theme.of(context).accentColor))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).cardColor),
            ),
            Container(
              width: 48.0,
              height: 44.0,
              child: Center(child: Icon(Icons.calendar_today_outlined, color: Theme.of(context).accentColor),),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).cardColor),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).canvasColor,
            height: 260.0,
            child: TabBarView(
              controller: _controller,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    color: Theme.of(context).canvasColor,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 48.0,
                          height: 272.0,
                          color: Theme.of(context).canvasColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 86,
                                decoration: BoxDecoration(
                                    color: Colors.purple.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 29,
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 28,
                                decoration: BoxDecoration(
                                    color: Colors.teal.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)
                                ),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.pink.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                child: Text("Jan",style: TextStyle(color: Theme.of(context).accentColor),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 48.0,
                          height: 272.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 65,
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 42,
                                decoration: BoxDecoration(
                                    color: Colors.pink.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 37,
                                decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                    color: Colors.teal.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                child: Text("Feb",style: TextStyle(color: Theme.of(context).accentColor),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 48.0,
                          height: 272.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 82,
                                decoration: BoxDecoration(
                                    color: Colors.teal.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 44.0,
                                decoration: BoxDecoration(
                                    color: Colors.indigo.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                child: Text("Mar",style: TextStyle(color: Theme.of(context).accentColor),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 48.0,
                          height: 272.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 94,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Colors.purple[400],
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 38,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 28,
                                decoration: BoxDecoration(
                                    color: Colors.teal[400],
                                    borderRadius: BorderRadius.circular(24.0)
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                child: Text("Apr",style: TextStyle(color: Theme.of(context).accentColor),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 48.0,
                          height: 272.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 72,
                                decoration: BoxDecoration(
                                    color: Colors.pink.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Colors.yellow.shade50.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.purple.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 18,
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                child: Text("May",style: TextStyle(color: Theme.of(context).accentColor),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 48.0,
                          height: 272.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.teal.shade300.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 46.0,
                                decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 48,
                                decoration: BoxDecoration(
                                    color: Colors.pink.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 2.0),
                              Container(
                                height: 28,
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.25),
                                    borderRadius: BorderRadius.circular(24.0)),
                              ),
                              SizedBox(height: 8.0),
                              Container(
                                child: Text("Jun",style: TextStyle(color: Theme.of(context).accentColor),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 86,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 29,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jan",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 65,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 42,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 37,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 33,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Feb",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 82,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Mar",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 94,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.purple[400],
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal[400],
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Apr",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 72,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade50.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("May",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade300.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 46.0,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jun",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 86,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 29,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jan",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 65,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 42,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 37,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 33,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Feb",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 82,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Mar",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 94,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.purple[400],
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal[400],
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Apr",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 72,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade50.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("May",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade300.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 46.0,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jun",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 86,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 29,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jan",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 65,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 42,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 37,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 33,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Feb",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 82,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Mar",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 94,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.purple[400],
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal[400],
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Apr",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 72,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade50.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("May",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade300.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 46.0,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jun",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 86,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 29,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jan",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 65,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 42,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 37,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 33,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Feb",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 82,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Mar",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 94,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.purple[400],
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal[400],
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Apr",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 72,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade50.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("May",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade300.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 46.0,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jun",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 86,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 29,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jan",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 65,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 42,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 37,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 33,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Feb",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 82,
                              decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Mar",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 94,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.purple[400],
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.teal[400],
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Apr",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 72,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade50.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("May",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 48.0,
                        height: 272.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade300.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 46.0,
                              decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 2.0),
                            Container(
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(24.0)),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              child: Text("Jun",style: TextStyle(color: Theme.of(context).accentColor),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.0),
          Expanded(
            child: Container(
              color: Theme.of(context).canvasColor,
              child: Column(
                children: [
                  Text("Total expenses",style: TextStyle(color: Colors.grey,fontSize: 16.0)),
                  SizedBox(height: 8.0),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$5,302",style: TextStyle(color: Colors.grey.withOpacity(0.35),fontSize: 24.0),),
                        Text("\$3,710.80",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 28.0),),
                        Text("\$7,520",style: TextStyle(color: Colors.grey.withOpacity(0.35),fontSize: 24.0),)
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.all(0),
                          children: [
                            Row(
                              children: [
                                Container(child: CircleAvatar(child: Icon(Icons.fastfood_outlined,color: Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width-100.0,  
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Food",style: TextStyle(color: Theme.of(context).accentColor, fontSize: 18.0),),
                                          Text("- 1,630.20 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8.0,),
                                    Container(
                                      height: 4.0,
                                      width: 292.0,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(child: Icon(Icons.shopping_cart_outlined,color: Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 292.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Shopping",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 930.70 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Container(
                                      height: 4.0,
                                      width: 180.0,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(child: Icon(Icons.emoji_food_beverage_outlined,color: Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 292.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Restaurants & Cafes",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 710.30 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.0,),
                                    Container(
                                      height: 4.0,
                                      width: 120.0,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(child: Icon(Icons.health_and_safety_outlined,color:Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor, radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 292.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Health",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 439.60 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.0,),
                                    Container(
                                      height: 4.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          color: Colors.teal[400],
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(child: Icon(Icons.camera_sharp,color: Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width-100.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Cola",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 630.20 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8.0,),
                                    Container(
                                      height: 4.0,
                                      width: 220.0,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(
                                  child: Icon(Icons.shopping_cart_outlined,color: Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Shopping",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 930.70 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Container(
                                      height: 4.0,
                                      width: 180.0,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(
                                  child: Icon(Icons.emoji_food_beverage_outlined,color: Theme.of(context).accentColor,size: 24.0,),backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 292.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Restaurants & Cafes",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 710.30 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.0,),
                                    Container(
                                      height: 4.0,
                                      width: 120.0,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(child: CircleAvatar(
                                  child: Icon(Icons.health_and_safety_outlined,color: Theme.of(context).accentColor,size: 24.0,),
                                  backgroundColor: Theme.of(context).cardColor,radius: 24,),),
                                SizedBox(width: 16.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 292.0,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Health",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                          Text("- 439.60 \$",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 18.0),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.0,),
                                    Container(
                                      height: 4.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          color: Colors.teal[400],
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
