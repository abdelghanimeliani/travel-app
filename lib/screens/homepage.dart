import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/costumtheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50 , left: 25  , right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                              IconData(0xe3ab, fontFamily: 'MaterialIcons' ) ,
                            color: CustomTheme.primaryColor,
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Blida , Algeria" ,
                          style: TextStyle(
                            color: CustomTheme.primaryColor,
                            fontSize: 20 ,
                            fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      ) ,

                      CircleAvatar(
                        radius: 27,
                        foregroundImage: AssetImage("assets/photodeprofile.PNG"),
                      )
                    ],
                  ),
                ) ,

                Padding(
                  padding: const EdgeInsets.only(top: 15 , left: 40  , right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Discover", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),) ,
                      Text("New Destination", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),) ,
                    ],
                  ),
                ) ,
                  Padding(
                    padding: const EdgeInsets.only(left: 30 , top: 22 , right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            width: 260,
                            height: 44,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                focusColor: CustomTheme.primaryColor,
                                fillColor: Colors.white54,
                                hoverColor:CustomTheme.primaryColor ,
                                prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)
                                  ),
                                  labelText: 'Search Places',
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle ,
                            color: CustomTheme.primaryColor
                          ),
                          child: Icon(
                            Icons.filter_list,
                            size: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12 , top: 25),
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    isScrollable: true,
                    automaticIndicatorColorAdjustment: true,
                    tabs: [
                    Text("All" , style: TextStyle(fontSize: 20 , color: Colors.black54),) ,
                    Text("Beach" , style: TextStyle(fontSize: 20 , color: CustomTheme.primaryColor),) ,
                    Text("Mountin",style: TextStyle(fontSize: 20 , color: Colors.black54),) ,
                    Text("Temple",style: TextStyle(fontSize: 20 , color: Colors.black54),) ,
                    Text("city",style: TextStyle(fontSize: 20 , color: Colors.black54),) ,
                  ],),
                ),


                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Item(context,  "assets/detailsimage.jpg", "Nusa Penida" , 'Bali , Indenuia'),
                        Item(context,  "assets/detailsimage.jpg", "Nusa Penida" , 'Bali , Indenuia'),
                        Item(context,  "assets/detailsimage.jpg", "Nusa Penida" , 'Bali , Indenuia'),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}



Widget Item(BuildContext context , String link , String place , String location){

    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Container(
          width: 150,
          height: 220,
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                            (link)),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 150,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0),
                        ],
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15 , bottom: 5),
                      child: Text(
                        place,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15 , bottom: 20),
                      child: Text(
                        location,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
}