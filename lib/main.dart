import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tellonym Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Info Center",
                    style: TextStyle(
                      color: Color(0xff929292),
                      fontSize: 16,
                    ),
                  ),
                  DropdownButton(
                    dropdownColor: Colors.white,
                    elevation: 0,
                    underline: Container(),
                    style: TextStyle(
                      color: Colors.black,
                      // backgroundColor: Colors.white,
                    ),
                    value: 'en',
                    items: [
                      DropdownMenuItem(child: Text('العربية'), value: 'ar'),
                      DropdownMenuItem(child: Text('English'), value: 'en'),
                    ],
                  ),
                  // Text(
                  //   "English",
                  //   style: TextStyle(
                  //     color: Color(0xff929292),
                  //     fontSize: 16,
                  //   ),
                  // ),
                  Text(
                    "Info Center",
                    style: TextStyle(
                      color: Color(0xffFAFAFA),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 125,
              ),
              Image.asset(
                'assets/logo_name_explanation.webp',
                width: 360,
              ),
              SizedBox(height: 40),
              Text(
                "Create an account to see what your frie\nnds are talking about and let them ans\nwer your questions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 45),
              Image.asset("assets/btn_google_signin_light_normal_web@2x.webp",
                  width: 280),
              SizedBox(height: 35),
              Text(
                "Login with Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 23),
              Text(
                "Register with Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 70),
              Container(
                height: 70,
                color: Color(0xffF3F3F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/appstore_badge.webp', height: 40, width:134),
                    Image.asset('assets/playmarket_badge.webp', height: 40, width:134),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    )));
  }
}
