import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../My_Models/page_all_restaurants_Models.dart';
import '../My_Models/page_byTeam_Models.dart';
import '../My_Models/page_feature_models.dart';
import '../My_Models/page_home_images_Models.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

int Imageindicator = 0;

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                    child: Text(
                  "DELIVERY TO",
                  style: TextStyle(fontSize: 14, color: Color(0xFF22A45D)),
                )),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 111)),
                    Text(
                      "San Francisco",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                    ),
                    Icon(Icons.arrow_drop_down),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  width: double.infinity,
                  height: 190,
                  child: Stack(children: [
                    ExpandablePageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          Imageindicator = index;
                        });
                      },
                      itemBuilder: (context, int index) {
                        return Container(
                          width: 335,
                          height: 185,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "${HomeImagesModels.homeimagesmodels[0].Images[index]}"),
                                  fit: BoxFit.cover)),
                        );
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                    Positioned(
                        right: 0,
                        bottom: 10,
                        child: postIndicator(Imageindicator))
                  ]),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Featured Partners",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 96,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xFf22A45D), fontSize: 16),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(left: 8),
                    width: double.infinity,
                    height: 280,
                    child: Featured()),
                SizedBox(height:10),
                Container(
                  width: 365,
                  height: 170,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/usha.png"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(12)),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Best Picks",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 186,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xFf22A45D), fontSize: 16),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 122),
                  child: Text("Restaurants by team",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 24,),
                Container(
                    margin: EdgeInsets.only(left: 8),
                    width: double.infinity,
                    height: 280,
                    child: byTeam()),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "All Restaurants",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 136,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xFf22A45D), fontSize: 16),
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Container(
                    margin: EdgeInsets.only(left: 8),
                    width: double.infinity,
                    // height: 300,
                    child: Allres()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget postIndicator(int currentIndex) {
  return Container(
    margin: EdgeInsets.only(right: 24),
    height: 5,
    child: ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 1,
          width: 12,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(16),
            color: currentIndex == index ? Colors.white : Color(0xff868686).withOpacity(0.4),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 8);
      },
    ),
  );
}



Widget Featured() {
  return Container(
    margin: EdgeInsets.only(right: 8,top: 8,bottom: 8,left: 8),
    height: 254,
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200,
          height: 254,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 160,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("${FeaturedModels.featuremodels[0].images[index]}"),fit: BoxFit.cover)),
              ),
              SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${FeaturedModels.featuremodels[0].FoodsName[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
              ),
              SizedBox(height: 2,),
              Text("Colarodo, San Francisco",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 36,
                    height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color(0xff22A45D)),
                    child: Center(child: Text("4.5",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),)),
                  ),
                  Text("25 min",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[600]),),
                 Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                  Text("Free delivery",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),),

                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 10,
        );
      },
      itemCount: 4,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    ),
  );
}
Widget byTeam() {
  return Container(
    margin: EdgeInsets.only(right: 8,top: 8,bottom: 8,left: 8),
    height: 254,
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200,
          height: 254,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 160,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("${ByTeamModels.byteam[0].Images[index]}"),fit: BoxFit.cover)),
              ),
              SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${ByTeamModels.byteam[0].FoodsName[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
              ),
              SizedBox(height: 2,),
              Text("Colarodo, San Francisco",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 36,
                    height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color(0xff22A45D)),
                    child: Center(child: Text("4.5",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),)),
                  ),
                  Text("25 min",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[600]),),
                  Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                  Text("Free delivery",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),),

                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 10,
        );
      },
      itemCount: 3,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    ),
  );
}
Widget Allres() {
  return Container(
    margin: EdgeInsets.only(right: 8,top: 8,bottom: 8,left: 8),
    // height: 254,
    child: ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200,
          height: 282,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 362,
                height: 185,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("${AllRes.allres[0].Images[index]}"),fit: BoxFit.cover)),
              ),
              SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${AllRes.allres[0].FoodsName[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
              ),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("\$\$",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                  Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                  Text("Chinese",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                  Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                  Text("American",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                  Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                  Text("Deshi food",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),


                ],),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 14,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("4.5",style: TextStyle(color: Colors.grey[800],fontSize: 15,fontWeight: FontWeight.w700),),
                    Image.asset("assets/images/yulduz.png",scale: 1.9,),
                    Text("200 + Raitngs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[600]),),
                    Icon(Icons.access_time_filled,color: Colors.grey[800],size: 16,),
                    Text("25 min",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[600]),),
                    Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                    Icon(Icons.currency_exchange_outlined,color: Colors.grey[800],size: 19,),
                    Text("Free",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),),

                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 20,
        );
      },
      itemCount: 3,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
    ),
  );
}
