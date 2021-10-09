// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_declarations, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PartyUI extends StatefulWidget {
  static final String id = 'Party_UI';

  @override
  _PartyUIState createState() => _PartyUIState();
}

class _PartyUIState extends State<PartyUI> {
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Find the best parties near you.",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        height: 1.1),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Let us find you a party for your interest",
                    style: TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _isLogin
                      ? Container(
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.yellow[900]),
                          child: Center(
                              child: Text(
                            "Start",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red),
                                child: Center(
                                    child: Text(
                                  "Google+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue),
                                child: Center(
                                    child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
