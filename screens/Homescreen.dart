import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Future<void>openlink(String link)async{
    if(await canLaunch(link))
      {
        await launch(link);
      }
    else
      {
        await launch(link);
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 226, 151, 1),
      body:  Column(
        children: [
              Card(
                elevation: 30,
                color: Color.fromRGBO(242, 238, 108, 1),
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30),
                ),
                margin: EdgeInsets.only( top: 8),
                child: Container(
                  height: 44,
                  width: 400,
                  margin:EdgeInsets.all(4),
                  alignment: Alignment.topLeft,
                  child: Text(" Self Improvement ",style: TextStyle(
                      color: Colors.black87,fontSize: 35
                  ),  ),
                ),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.all(5),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5.0),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: FlatButton(

                          color:Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50)
                          ),
                          onPressed:()
                          {   print("hi");
                          }, child:
                      Text("languages",style: TextStyle(fontSize:20,color:Colors.white),textAlign:TextAlign.center,)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: FlatButton(

                          color:Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50)
                          ),
                          onPressed:()
                          {   print("hi");
                          }, child:
                      Text("Sports",style: TextStyle(fontSize:20,color:Colors.white),textAlign:TextAlign.center,)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: FlatButton(

                          color:Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50)
                          ),
                          onPressed:()
                          {   print("hi");
                          }, child:
                      Text("Soft Skills",style: TextStyle(fontSize:20,color:Colors.white),textAlign:TextAlign.center,)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: FlatButton(

                          color:Colors.cyan,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(50)
                          ),
                          onPressed:()
                          {   print("hi");
                          }, child:
                      Text("Cooking",style: TextStyle(fontSize:20,color:Colors.white),textAlign:TextAlign.center,)
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("  Here you can choose which technique:",style: TextStyle(fontSize:22,color: Colors.black87)),
                  ],
                ),
              ),
              Container(
            height: 400,
            color: Colors.teal,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),

            child: ListView(
              padding: EdgeInsets.all(3),
              children: [
                      GestureDetector(
                          onTap :(){
                             openlink("https://blog.pitchero.com/9-simple-steps-to-becoming-a-better-sports-player");
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20),topLeft: Radius.circular(20),bottomLeft:Radius.circular(20)),
                            ),
                            elevation: 20.0,
                            child: Column(
                              children: [
                                Image.network("https://media.istockphoto.com/photos/self-improvement-picture-id478642749?k=6&m=478642749&s=170667a&w=0&h=9e74cTmuWpiOVL51iewXnoBt34g4DcOJqBHm5Y9_IDA=",height:220,fit: BoxFit.cover, ),
                                 Row(
                                   children: [
                                     Text("  By Doing Sport....." ,style: TextStyle(
                                       fontSize: 30
                                     ),),
                                     IconButton(onPressed:(){
                                       Share.share("https://blog.pitchero.com/9-simple-steps-to-becoming-a-better-sports-player");
                                     }, icon:Icon(Icons.share ,size: 30,),color:Colors.black87, )
                                   ],
                                 ),
                                
                              ],
                            ),


                          )),
                      SizedBox(height: 10),
                      GestureDetector(
                    onTap :(){
                      openlink("https://www.skillshare.com/browse/language-learning?coupon=GOOG1MFREE&utm_source=Google&utm_medium=paidsearch&utm_campaign=Croud_Search_Google_ROW1_BOF_Non-Brand_DSA-Categories&utm_term=&matchtype=b&gclid=Cj0KCQjwm9yJBhDTARIsABKIcGZeHbrKg0Y-kuvq_rZKciJOIrfKiUTsEA7151Qbco56FFnaIBZJ65AaAnfHEALw_wcB");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20),topLeft: Radius.circular(20),bottomLeft:Radius.circular(20)),
                      ),
                      elevation: 20.0,
                      child: Column(
                        children: [
                          Image.network("https://blog.ted.com/wp-content/uploads/sites/2/2014/11/learning_a_language.png",height:220,fit: BoxFit.cover, ),
                          Row(
                            children: [
                              Text("  By Learning New Language..." ,style: TextStyle(
                                  fontSize: 23
                              ),),
                              IconButton(onPressed:(){
                                Share.share(" https://www.skillshare.com/browse/language-learning?coupon=GOOG1MFREE&utm_source=Google&utm_medium=paidsearch&utm_campaign=Croud_Search_Google_ROW1_BOF_Non-Brand_DSA-Categories&utm_term=&matchtype=b&gclid=Cj0KCQjwm9yJBhDTARIsABKIcGZeHbrKg0Y-kuvq_rZKciJOIrfKiUTsEA7151Qbco56FFnaIBZJ65AaAnfHEALw_wcB");
                              }, icon:Icon(Icons.share ,size: 30,),color:Colors.black87, )
                            ],
                          ),

                        ],
                      ),


                    )),
                      SizedBox(height: 10),
                      GestureDetector(
                    onTap :(){
                      openlink("https://www.eater.com/2020/4/3/21203517/easy-cooking-recipes-tips-tricks-roast-chicken-vegetables-rice-beans");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20),topLeft: Radius.circular(20),bottomLeft:Radius.circular(20)),
                      ),
                      elevation: 20.0,
                      child: Column(
                        children: [
                          Image.network("https://www.refinery29.com/images/9686482.jpg?crop=40%3A21",height:170,fit: BoxFit.cover, ),
                          Row(
                            children: [
                              Text("  learn how To Cook....." ,style: TextStyle(
                                  fontSize: 25
                              ),),
                              IconButton(onPressed:(){
                                Share.share("https://www.eater.com/2020/4/3/21203517/easy-cooking-recipes-tips-tricks-roast-chicken-vegetables-rice-beans");
                              }, icon:Icon(Icons.share ,size: 30,),color:Colors.black87, )
                            ],
                          ),

                        ],
                      ),


                    )),
                      SizedBox(height: 10),
                      GestureDetector(
                    onTap :(){
                      openlink("https://www.goskills.com/Soft-Skills#:~:text=If%20you're%20still%20unsure,your%20most%20desired%20soft%20skills.&text=Social%20skills%20(collaboration),Adaptability%20(leadership)");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.only(topRight:Radius.circular(20),bottomRight:Radius.circular(20),topLeft: Radius.circular(20),bottomLeft:Radius.circular(20)),
                      ),
                      elevation: 20.0,
                      child: Column(
                        children: [
                          Image.network("https://i.ytimg.com/vi/NSgh1UVfKTU/maxresdefault.jpg",height:180,fit: BoxFit.cover, ),
                          Row(
                            children: [
                              Text("  By learning new Skills..." ,style: TextStyle(
                                  fontSize:25
                              ),),
                              IconButton(onPressed:(){
                                Share.share("https://www.goskills.com/Soft-Skills#:~:text=If%20you're%20still%20unsure,your%20most%20desired%20soft%20skills.&text=Social%20skills%20(collaboration),Adaptability%20(leadership)");
                              }, icon:Icon(Icons.share ,size: 30,),color:Colors.black87, )
                            ],
                          ),

                        ],
                      ),


                    )),
              ],
            ),
          ),
              Card(
            elevation: 30,
            color: Color.fromRGBO(242, 238, 108, 1),
            margin: EdgeInsets.all(7),
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(30),
            ),
            child: Container(
              height: 44,
              width: 400,
              margin:EdgeInsets.all(4),
              alignment: Alignment.topLeft,
              child: Text("  Just Start HERO",style: TextStyle(
                  color: Colors.black87,fontSize: 35
              ),  ),
            ),
          ),
        ],
      ),
    );
  }
}
