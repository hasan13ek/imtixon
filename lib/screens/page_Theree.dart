import 'package:first_lesson/screens/page_One.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageTheree extends StatefulWidget {
  const PageTheree({Key? key}) : super(key: key);

  @override
  State<PageTheree> createState() => _PageThereeState();
}
final _formKey = GlobalKey<FormState>();
class _PageThereeState extends State<PageTheree> {
  @override

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios,color: Colors.black,)),
            title: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Center(child: Text("Forgot Password",style: TextStyle(color: Colors.black),)),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(right: 20,left: 20,top: 20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
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
                        "for sign up ",
                        style: TextStyle(color: Color(0xFF868686)),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Already have account?",
                            style:
                            TextStyle(color: Color(0xFF22A45D), fontSize: 16),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),


              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Fullname";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full name',
                  ),
                ),
              ),
                  SizedBox(height: 14,),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Email adress";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email adress',
                  ),
                ),
              ),
                  SizedBox(height: 14,),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter Email adress";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      if(_formKey.currentState!.validate()){
                        saveLogin(context);
                      }
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
                              "SIGN UP",
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
                        "By Signing up you agree to our Terms\n          Conditions & Privacy Policy.",
                        style: TextStyle(fontSize: 16, color: Color(0xFF868686)),
                      )),
                  SizedBox(height: 20,),
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
      ),
    );
  }
}

void saveLogin(context)async{
  SharedPreferences _pref = await SharedPreferences.getInstance();
  _pref.setBool("isLoggedIn", true);

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PageOne()));
}