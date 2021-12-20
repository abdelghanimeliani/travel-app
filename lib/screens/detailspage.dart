import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/costumtheme.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children:[
            Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
            image:AssetImage(
            "assets/detailsimage.jpg",
        ),
                fit: BoxFit.cover
        )


            ),
          ),


          Padding(
            padding: EdgeInsets.only(left: 20 , right: 20 , top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 50 ,
                  width: 50 ,
                  decoration: BoxDecoration(
                    color: Colors.white54 ,
                    shape: BoxShape.circle ,
                  ),
                  child: Icon(
                    Icons.fullscreen_exit ,
                    color: CustomTheme.primaryColor,
                    size: 40,
                  ),
                ),

                Container(
                  height: 50 ,
                  width: 50 ,
                  decoration: BoxDecoration(
                    color: Colors.white54 ,
                    shape: BoxShape.circle ,
                  ),
                  child: Icon(
                    Icons.save ,
                    color: CustomTheme.primaryColor,
                    size: 40,
                  ),
                ),
              ],
            ),
          ) ,


            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Center(
                child: Positioned(

                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 320,
                        height: 320,
                        child: Stack(
                          children: [
                            BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 7.0,
                                sigmaY: 7.0,
                              ),
                              child: Container(width: 320, height: 320, child: Text(" ")),
                            ),
                            Opacity(
                                opacity: 0.15,
                                child: Image.asset(
                                  "assets/noise.png",
                                  fit: BoxFit.cover,
                                  width: 350,
                                  height: 350,
                                )),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 30, offset: Offset(2, 2))],
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
                                  gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                                    CustomTheme.primaryColor.withOpacity(0.5),
                                    CustomTheme.primaryColor.withOpacity(0.1),
                                  ], stops: [
                                    0.0,
                                    1.0,
                                  ])),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 20 , bottom: 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
    Row(
    children: [
    Icon(
    Icons.pin,
    size: 50,
    color: Colors.white,
    )
    ],
    ),
    SizedBox(
      width: 20,
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text("Nusa Penida", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25 , color: Colors.white),),
    Text("Bali , Indenusia", style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 18 , color: Colors.white),)
    ],
    )
    ],
    ),
                                  ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Divider(
                                    color: Colors.white54,
                                    thickness: 2,
                                  ),
                                ) ,


                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star , color: Colors.white,size: 30,) ,
                                            Text('4.5' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , color: Colors.white),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon( IconData(0xf864,), color: Colors.white,size: 30,) ,
                                            Text('22°C' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , color: Colors.white),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon( IconData(0xe122, fontFamily: 'MaterialIcons'), color: Colors.white,size: 30,) ,
                                            Text('7 days' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500 , color: Colors.white),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ) , 
                                  
                                  Padding(
                                    padding: EdgeInsets.only(left: 20 , top: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Descreption" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w600 , fontSize: 20),)
                                        ,Text("hello ro berk hadi description dertha ghir bech ntesti en ui ida rah yekhdem w normalement sde9 yedkhem " , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w400 , fontSize: 16),)
                                      ],
                                    ),
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(22.0),
                                    child: CupertinoButton(

                                      color: Colors.white,
                                      onPressed: () {  },
                                      child: Text('Book Now' ,style: TextStyle(fontSize: 20 , color: CustomTheme.primaryColor , fontWeight: FontWeight.bold),),),
                                  )

                                ],
                                  )

                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ),
            )

          ]
        ),
      ),
    );
  }
}
