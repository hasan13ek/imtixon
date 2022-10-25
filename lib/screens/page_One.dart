
import 'package:first_lesson/screens/page_Four.dart';
import 'package:first_lesson/screens/page_Theree.dart';
import 'package:first_lesson/screens/page_Two.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool isLog = false;

  Future<bool> isLoggedIn()async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    isLog = _pref.getBool("isLoggedIn")??false;
    return _pref.getBool("isLoggedIn")??false;
  }
  @override
  void initState() {
    super.initState();
    isLoggedIn();
    goNext();
  }
  void goNext(){
    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return isLog ? PageFour():PageTheree();
      }));
    });
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 24,right: 34,left: 34),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 24)),
              Container(
                width: 307,
                height: 362,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/page1.png"))),
              ),
              SizedBox(height: 68,),
              Text(
                "Choose your food",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20,),
              Text("Easily find your type of food craving and\n         you’ll get delivery in wide range.",style: TextStyle(fontSize: 16,color: Color(0xFF868686)),)
            ],
          ),
        ),
      ),
    );
  }
}
