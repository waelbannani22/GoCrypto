import 'package:cryptocurrency_app/repository/authentification.dart';
import 'package:cryptocurrency_app/ui/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:cryptocurrency_app/provider/veriffield.dart';
import 'dart:math';
import 'package:data_connection_checker_tv/data_connection_checker.dart';

class SignupPassword extends StatefulWidget {
  final String username;

  final String phone;
  final String email;
  SignupPassword(this.username, this.email, this.phone);
  @override
  _SignupPasswordState createState() => _SignupPasswordState();
}

class _SignupPasswordState extends State<SignupPassword>
    with TickerProviderStateMixin {
  final Authentification authController = Authentification();
  late Future<String> _futureResponse;

  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController textController = TextEditingController();
  late AnimationController _controller;
  late Animation<double> _fabScale;

  var eightChar = false,
      oneSpecialChar = false,
      requiredAt = false,
      three = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textController.addListener(() {
      setState(() {
        eightChar = textController.text.length >= 8;
        oneSpecialChar = textController.text.isNotEmpty &&
            !textController.text.contains(RegExp(r'^[\w&.-]+$'), 0);
        requiredAt = textController.text.contains(RegExp(r'\d'), 0);
      });
    });

    _controller = new AnimationController(
        vsync: this, duration: const Duration(microseconds: 500));

    _fabScale = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));

    _fabScale.addListener(() {
      setState(() {});
    });
    if (_allValid()) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  bool _allValid() {
    return eightChar;
  }

  bool _allthreeValid() {
    if ((eightChar == true) &&
        (oneSpecialChar == true) &&
        (requiredAt == true)) {
      three = true;
    }
    return three;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool connectivity = false;
    ;
    checkconnectivity() async {
      bool result = await DataConnectionChecker().hasConnection;
      if (result == true) {
        connectivity = true;
      } else {
        print('No internet :( Reason:');
        print(DataConnectionChecker().lastTryResults);
        connectivity = false;
      }
    }

    checkconnectivity();

    String code = "";
    var rng = new Random();
    for (var i = 0; i < 5; i++) {
      String chiffre = rng.nextInt(10).toString();
      code = code + chiffre;
    }
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [const Color(0xFF543CBA), const Color(0xFF3FA5B1)],
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0x00000000),
        //resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 50.1),
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 90.1),
            Container(
              child: Stack(
                children: <Widget>[
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 14.1,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),

                        children: <TextSpan>[
                          new TextSpan(
                            text: "SIGN ",
                            style: TextStyle(
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFffffff)),
                          ),
                          new TextSpan(
                              text: "UP",
                              style: TextStyle(
                                  fontSize: 80.0,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFf9d505))),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: renderValidation(),
                    ),
                    SizedBox(height: 14.0),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(splashColor: Colors.transparent),
                      child: TextField(
                        obscureText: _obscureText,
                        controller: textController,
                        autofocus: false,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFFffffff),
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: _toggle,
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: const Color(0xFFa2c0fc),
                            ),
                          ),
                          fillColor: Color.fromRGBO(65, 45, 135, 0.3),
                          hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFFa2c0fc),
                            fontSize: 16,
                          ),
                          hintText: 'Password',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0x00000000)),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0x00000000)),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.0),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: FlatButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              height: MediaQuery.of(context).size.height / 11.0,

                              // splashColor: Colors.red,
                              color: const Color.fromRGBO(65, 45, 135, 0.7),
                              // textColor: Colors.white,
                              child: Text('Sign Up',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xFFffffff),
                                    fontSize: 19,
                                  )),
                              onPressed: () {
                                setState(() {
                                  print("username " +
                                      widget.username +
                                      " email " +
                                      widget.email +
                                      " phone " +
                                      widget.phone +
                                      " password " +
                                      textController.text);

                                  if (_allthreeValid() == true) {
                                    _futureResponse = authController.signup(
                                        widget.email,
                                        textController.text,
                                        widget.email,
                                        widget.phone);
                                    _futureResponse.then((value) => {
                                          print("response ===" +
                                              value.toString()),
                                          if (value.toString() == "connected")
                                            {
                                              if ((_allthreeValid() == true) &&
                                                  (connectivity == true))
                                                {
                                                  Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                      transitionDuration:
                                                          Duration(seconds: 1),
                                                      transitionsBuilder:
                                                          (context,
                                                              animation,
                                                              animationTime,
                                                              child) {
                                                        animation =
                                                            CurvedAnimation(
                                                                parent:
                                                                    animation,
                                                                curve: Curves
                                                                    .decelerate);
                                                        return FadeTransition(
                                                          opacity: animation,
                                                          child: child,
                                                        );
                                                      },
                                                      pageBuilder:
                                                          (context, a, b) =>
                                                              SigninPage(),
                                                    ),
                                                  ),
                                                }
                                              else if (_allthreeValid() ==
                                                  false)
                                                {
                                                  EasyLoading.showError(
                                                      'Password.'),
                                                }
                                              else
                                                {
                                                  EasyLoading.showError(
                                                      'Please check your internet connection.'),
                                                }
                                            }
                                          else if (value.toString() ==
                                              "email used")
                                            {
                                              EasyLoading.showError(
                                                  'The email you entered already associated with an account.'),
                                            }
                                          else
                                            {
                                              EasyLoading.showError('error.'),
                                            }
                                        });
                                  } else {
                                    EasyLoading.showError('Password is weak.');
                                  }
                                });
                              },
                            ),
                          ),
                        ]),
                  ],
                )),
          ]),
        ),
      ),
    );
  }

  Widget _renderLine() {
    return Row(children: [
      SizedBox(width: MediaQuery.of(context).size.width / 25.1),
      Container(
        height: 1,
        width: MediaQuery.of(context).size.width / 1.45,
        decoration: BoxDecoration(color: const Color(0xFF759cdb)),
      ),
    ]);
  }

  renderValidation() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color.fromRGBO(65, 45, 135, 0.3),
              elevation: 0,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ValidationItem("1 special character", oneSpecialChar),
                      _renderLine(),
                      ValidationItem("1 numeric", requiredAt),
                      _renderLine(),
                      ValidationItem("8 characters", eightChar),
                    ],
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
