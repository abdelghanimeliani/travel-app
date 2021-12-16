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
      home: Scaffold(
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



                
              
            ],
          ),
        ),
      ),
    );
  }
}
