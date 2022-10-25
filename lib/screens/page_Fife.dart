import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:first_lesson/My_Models/page_byTeam_Models.dart';
import 'package:first_lesson/My_Models/page_feature_models.dart';
import 'package:flutter/material.dart';

import '../My_Models/mostModel.dart';
import '../My_Models/page_home_images_Models.dart';

class PageFife extends StatefulWidget {
  const PageFife({Key? key}) : super(key: key);

  @override
  State<PageFife> createState() => _PageFifeState();
}
int Imageindicator = 0;
class _PageFifeState extends State<PageFife> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 0),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ExpandablePageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          Imageindicator = index;
                        });
                      },
                      itemBuilder: (context, int index) {
                        return Container(
                          width: 335,
                          height: 280,
                          decoration: BoxDecoration(
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
                      right: 10,
                      top: 50,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
                          SizedBox(width: 230,),
                          Image.asset("assets/images/share.png",scale: 0.8,),
                          SizedBox(width: 30,),
                          Icon(Icons.search,color: Colors.white,size: 30,),
                        ],
                      ),
                    ),
                    Positioned(right: 0,bottom: 4,child: postIndicator(Imageindicator))
                  ],
                ),
                SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("${FeaturedModels.featuremodels[0].FoodsName[Imageindicator]}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(right: 60,left: 20),
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
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("4.5",style: TextStyle(color: Colors.grey[800],fontSize: 15,fontWeight: FontWeight.w700),),
                      SizedBox(width: 9,),
                      Image.asset("assets/images/yulduz.png",scale: 1.9,),
                      SizedBox(width: 8,),
                      Text("200 + Raitngs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.grey[600]),),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Image.asset("assets/images/dol.png",scale: 0.8,),
                      SizedBox(width: 3,),
                      Column(
                        children: [
                          SizedBox(height: 8,),
                          Text("Free",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                          Text("Delivery",style: TextStyle(color: Color(0xff868686),fontSize: 12),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/tim.png",scale: 1.2,),
                      Column(
                        children: [
                          SizedBox(height: 8,),
                          Text("25",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
                          Text("Minutes",style: TextStyle(color: Color(0xff868686),fontSize: 12),)
                        ],
                      ),
                      SizedBox(width: 62,),
                      Container(
                        width: 113,
                        height: 38,
                        decoration: BoxDecoration(border: Border.all(width: 1,color: Color(0xff22A45D)),borderRadius: BorderRadius.circular(6),color:Colors.white),
                        child: Center(child: Text("TAKE AWAY",style: TextStyle(fontSize: 12,color: Color(0xff22A45D)),)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 27,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Featured Items",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 20,),
                Container(
                    margin: EdgeInsets.only(left: 8),
                    width: double.infinity,
                    height: 202,
                    child: Featured()),
                Container(
                  width: double.infinity,
                  height: 80,

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index){
                    return Container(margin: EdgeInsets.only(left: 12),width: 200,height: 20,
                    child: Center(child: Text("${FeaturedModels.featuremodels[0].FoodsName[index]}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xff868686)),)),
                    );
                  }),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text("Most Populars",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context,int index){

                    return lipi(index);
                  }, separatorBuilder: (BuildContext context , int index){return SizedBox(height: 12,);}, itemCount: 6),
                )
              ],
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
    margin: EdgeInsets.only(right: 8,top: 8,bottom: 0,left: 8),
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 145,
          height: 145,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("${FeaturedModels.featuremodels[0].images[index]}"),fit: BoxFit.cover)),
              ),
              SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${FeaturedModels.featuremodels[0].FoodsName[index]}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$\$",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                    SizedBox(width: 4,),
                    Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                    SizedBox(width: 4,),
                    Text("Chinese",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                  ],),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 14,
        );
      },
      itemCount: 4,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    ),
  );
}

Widget lipi(int index){
  return Column(
    children: [
      Container(

        width: 332,
        // height: 110,
        child: Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),image: DecorationImage(image: AssetImage("${MostModel.mostmodel[0].images[index]}"),fit: BoxFit.cover)),
            ),
            SizedBox(width: 18,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${MostModel.mostmodel[0].names[index]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                SizedBox(height: 6,),
                Text("Shortbread, chocolate turtle\ncookies, and red velvet.",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$\$",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                          SizedBox(width: 4,),
                          Container(width: 5,height: 5,decoration: BoxDecoration(color: Colors.grey[500],shape: BoxShape.circle),),
                          SizedBox(width: 4,),
                          Text("Chinese",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                        ],),
                    ),
                    SizedBox(width: 10,),
                    Text("USD7.4",style: TextStyle(color: Color(0xff22A45D),fontSize: 15),)
                  ],),
              ],
            ),

          ],
        ),
      ),
      SizedBox(height: 14,),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Container(width: double.infinity,height: 1,color: Colors.grey,),
      )
    ],
  );
}