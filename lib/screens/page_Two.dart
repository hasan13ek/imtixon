import 'package:first_lesson/screens/page_Theree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}
final _controller = TextEditingController();
class _PageTwoState extends State<PageTwo> {
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,),
          title: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Center(
                child: Text(
              "Sign In",
              style: TextStyle(color: Colors.black),
            )),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 20, left: 20, top: 20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your Phone number or Email",
                  style: TextStyle(color: Color(0xFF868686)),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      "for sign in Or, ",
                      style: TextStyle(color: Color(0xFF868686)),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>PageTheree()));
                        },
                        child: Text(
                          "Create new account",
                          style:
                              TextStyle(color: Color(0xFF22A45D), fontSize: 16),
                        ))
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android,
                        color: Color(0xFF22A45D),
                      ),
                      fillColor: Color(0xFFF3F2F2),
                      border: OutlineInputBorder(),
                      hintText: 'Nawf|',
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_outlined)),
                      fillColor: Color(0xFFF3F2F2),
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Color(0xFF899999)),
                        ))),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {

                    // if(_controller.currentState!.validate()){
                    //   saveLogin(context);
                    // }
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>PageTheree()));
                  },
                  child: Center(
                    child: Container(
                      width: 335,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF22A45D)),
                      child: Center(
                          child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  "Or",
                  style: TextStyle(fontSize: 16, color: Color(0xFF868686)),
                )),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: 335,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF395998)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                            color: Colors.white),
                            child: Image.asset("assets/images/img.png",scale: 0.8,),
                          ),
                          SizedBox(width: 40,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text("Connect with Facebook",style: TextStyle(color: Colors.white,fontSize: 18),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: 335,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF4285F4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white),
                            child: Image.asset("assets/images/img1.png",scale: 3,),
                          ),
                          SizedBox(width: 40,),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Text("Connect with google",style: TextStyle(color: Colors.white,fontSize: 18),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
