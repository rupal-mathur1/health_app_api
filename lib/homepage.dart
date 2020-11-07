import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health1/page2.dart';
import 'package:health1/page1.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('assets/images/work1.jpg'),
          AssetImage('assets/images/work2.jpg'),
          AssetImage('assets/images/work3.jpg'),
          AssetImage('assets/images/work4.jpg'),
          AssetImage('assets/images/work6.jpg'),
          AssetImage('assets/images/work7.jpg'),
          AssetImage('assets/images/pic2.jpg'),
          AssetImage('assets/images/pic3.jpg'),
          AssetImage('assets/images/pic4.jpg'),
          AssetImage('assets/images/pic5.jpg'),
          AssetImage('assets/images/pic6.jpg'),

        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration( milliseconds: 1000 ),
      ) ,
    );

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Med',style: TextStyle(color: Colors.orange)),
            Text('Fit',style: TextStyle(color: Colors.white),),
          ]
      ),
        backgroundColor: Colors.black12,
        elevation: 5.0,
      ),
      body: ListView(
       children: <Widget>[
         Column(
           children: [
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft : Radius.circular(25.0),bottomRight: Radius.circular(25.0) ),
              ),
              height: 100.0,
              padding: EdgeInsets.only(top: 20.0),
               child: Row(
                 children: [
                   CategoryItem(
                     title: "News",
                     isActive: true,
                     press: (){
                       Navigator.push( context,MaterialPageRoute(builder: (context)=>News()));
                     }
                   ),
                   CategoryItem(
                     title: "Timer",
                     isActive: true,
                     press: (){
                       Navigator.push( context,MaterialPageRoute(builder: (context)=>HomePage1()));
                     },
                   ),
                 ],
               ),
                 ),
             image_carousel,
             Padding(
               padding: const EdgeInsets.only(top: 18.0),
               child: Column(
                 children: [
                   Text('Learn more about Corona Virus :', style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.green[400]),),
                      SelectableLinkify(
                   text: "https://www.who.int/health-topics/coronavirus#tab=tab_1",
                    ),
                 ],
               ),
             ),
             SizedBox(
               height: 20.0,
             ),

             Container(
               height:100.0,
               width: 350,
               child: Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12.0),
                 ),
                 color: Colors.indigo,
                 elevation: 10,
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom: 5.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children:<Widget> [
                          Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.grey,
                            size: 35.0,
                            ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.sentiment_neutral,
                            color: Colors.grey,
                            size: 35.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.grey,
                            size: 35.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.grey,
                            size: 35.0,
                          ),
                          ],
                      ),
                    ),
                     Text('How are you feeling today?',style: TextStyle(fontSize: 20.0,color: Colors.blue),)
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget> [
                   Container(
                    height: 130,
                       width:145,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(25.0)),
                         color: Colors.grey[400],
                       ),

                       child:Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Center(child: Text('Get in touch with the specialized doctors',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
                       )
                         ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Container(
                         height: 130,
                         width:145,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(25.0)),
                           color: Colors.purple[200],
                         ),
                         child:Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Center(child: Text('Know more about migraine',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
                         )
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 height:210,
                 width: 260,
                 child: Image.asset('assets/images/pic7.jpg',width: 190,)
               ),
             )

         ]
    ),
    ]
      ),
      );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    Key key,
    this.title,
    this.isActive = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              )
                  : TextStyle(fontSize: 12),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
