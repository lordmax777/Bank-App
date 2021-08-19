import 'package:flutter/material.dart';

import 'chalalar.dart';
import 'chatUsersModel.dart';


class ChatPagea extends StatefulWidget {

  @override
  _ChatPageaState createState() => _ChatPageaState();
}

class _ChatPageaState extends State<ChatPagea> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
    ChatUsers(name: "Anny", messageText: "message", imageURL: "https://images.unsplash.com/photo-1563223552-30d01fda3ead?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZXllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", time: "yesterday"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
