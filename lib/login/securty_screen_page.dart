import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';
import '../mainPage.dart';

const storedPasscode = '020508';

class ExampleHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage> {
  final StreamController<bool> _verificationNotifier =
  StreamController<bool>.broadcast();

  bool isAuthenticated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).hoverColor,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 40.0,
        backgroundColor: Theme.of(context).hoverColor,
        title: Text("Kirish", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 24.0, fontWeight: FontWeight.bold),),
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
                    "\$_ .  _ _ _",
                    style: TextStyle(fontSize: 41, fontWeight: FontWeight.w800, color: Theme.of(context).accentColor),
                  ),
                  SizedBox(height: 35.0),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).canvasColor,
                    radius: 35.0,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(CupertinoIcons.camera_viewfinder, color: Theme.of(context).accentColor,),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 5.0,),
                      Text(
                        "Full name",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                      ),
                      SizedBox(height: 2.0,),
                      Text(
                        "Enter Card Number",
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
                    onTap: (){
                      _showLockScreen(
                        context,
                        opaque: false,
                        cancelButton: Text(
                          'Cancel',
                          style: const TextStyle(fontSize: 16, color: Colors.white),
                          semanticsLabel: 'Cancel',
                        ),
                      );
                    },
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

  _showLockScreen(
      BuildContext context, {
        required bool opaque,
        CircleUIConfig? circleUIConfig,
        KeyboardUIConfig? keyboardUIConfig,
        required Widget cancelButton,
        List<String>? digits,
      }) {
    Navigator.push(
        context,
        PageRouteBuilder(
          opaque: opaque,
          pageBuilder: (context, animation, secondaryAnimation) =>
              PasscodeScreen(
                title: Text(
                  'Enter App Passcode',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                circleUIConfig: circleUIConfig,
                keyboardUIConfig: keyboardUIConfig,
                passwordEnteredCallback: _onPasscodeEntered,
                cancelButton: cancelButton,
                deleteButton: Text(
                  'Delete',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                  semanticsLabel: 'Delete',
                ),
                shouldTriggerVerification: _verificationNotifier.stream,
                backgroundColor: Colors.black.withOpacity(0.8),
                cancelCallback: _onPasscodeCancelled,
                digits: digits,
                passwordDigits: 6,
                bottomWidget: _buildPasscodeRestoreButton(),
              ),
        ));
  }

  _onPasscodeEntered(String enteredPasscode) {
    bool isValid = storedPasscode == enteredPasscode;
    _verificationNotifier.add(isValid);
    if (isValid) {
      setState(() {
        this.isAuthenticated = isValid;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
      });
    }
  }

  _onPasscodeCancelled() {
    Navigator.maybePop(context);
  }

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  _buildPasscodeRestoreButton() => Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: const EdgeInsets.only(bottom: 10.0, top: 20.0),
      child: TextButton(
        child: Text(
          "Reset passcode",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w300),
        ),
        onPressed: _resetAppPassword,
        // splashColor: Colors.white.withOpacity(0.4),
        // highlightColor: Colors.white.withOpacity(0.2),
        // ),
      ),
    ),
  );

  _resetAppPassword() {
    Navigator.maybePop(context).then((result) {
      if (!result) {
        return;
      }
      _showRestoreDialog(() {
        Navigator.maybePop(context);
      });
    });
  }

  _showRestoreDialog(VoidCallback onAccepted) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Reset passcode",
            style: const TextStyle(color: Colors.black87),
          ),
          content: Text(
            "Passcode reset is a non-secure operation!\n\nConsider removing all user data if this action performed.",
            style: const TextStyle(color: Colors.black87),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            TextButton(
              child: Text(
                "Cancel",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
            TextButton(
              child: Text(
                "I understand",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: onAccepted,
            ),
          ],
        );
      },
    );
  }
}