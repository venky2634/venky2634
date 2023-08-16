import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_5/first.dart';


void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const Home(),

      
    );
  }
}





class Action extends StatefulWidget {
  const Action({super.key});

  @override
  State<Action> createState() => _ActionState();
}

class _ActionState extends State<Action> {
  int counter = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating action button",style: TextStyle(fontSize: 25,color: Colors.black),),),
      floatingActionButton: 
      FloatingActionButton(
          onPressed: (){
           setState(() {
      
           }); 
          counter--;
          },
      child: Icon(Icons.remove),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Text("data $counter"),  
    );
  }
}




class Used extends StatefulWidget {
  const Used({super.key});

  @override
  State<Used> createState() => _UsedState();
}

class _UsedState extends State<Used> {

  List name = ["Delete","App data","Audio","music","watch","menu"];
  List memory = ["1.31GB","Total 45.6MB","Total 12.6GB","Used 918MB","30K","1.21GB"];
  List pics = ["assets/junk.png","assets/app.png","assets/sound.png","assets/music.png","assets/watch.png","assets/menu.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
     body: Stack(alignment: Alignment.center,
            children: [
          Positioned( right: 58,top: 460,
            child: Container(
              height: 65, width: 115,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Color.fromARGB(255, 6, 107, 121),borderRadius: BorderRadius.circular(20)),
              child: RichText(text: TextSpan(text: "31.11",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
              children: [
               TextSpan(text: " GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white ))
              ],))
            ),
          ),   
      SafeArea( 
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(25.0),
            child:Column(
              children: [
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
          children: [
          Icon(Icons.arrow_back_ios_new)
        ],),
        Row(
          children: [
          Icon(Icons.refresh),
          SizedBox(width: 30,),
          Icon(Icons.menu)
        ],),
        ],),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 135,
              width: 260,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 50,spreadRadius: 5,offset: Offset(10, 10))],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40))),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
             RichText(text: TextSpan(text: "1.31",style: TextStyle(fontSize: 57,fontWeight: FontWeight.bold,color: Colors.black),
                children: [
                  TextSpan(text: "GB",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)
                  ),]
                ),),
              ],),
              Text("Cleanup Suggested",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.black),)
              ],),
            ),
          ],),
          SizedBox(height: 50,),
          Row(
          children: [
          Container(
            height: 25,
            width: 100,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 25,
            width: 155,
            decoration: BoxDecoration(color: Color.fromARGB(255, 15, 135, 151),borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
          ),
             Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
          ),
          ],),
          SizedBox(height: 20,),
          Row(
            children: [
            Icon(Icons.circle_rounded),
            SizedBox(width: 7,),
            Text("Used 22 GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(width: 40,),
            Icon(Icons.circle_rounded,color: Colors.white,),
            SizedBox(width: 7,),
            Text("Used 22 GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
          ],),
              ],
            ) ,
          ),
        
          SizedBox(height: 25),
          Row(
            children: [
            Container(
              height: 60,width: 190,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
              child: Text("Can be deleted",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            )
          ],),
          
           Expanded(
            child: Container(
              height: double.infinity, width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(35))),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: ((context,index){
                return ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(pics[index]),),
                title: Text(name[index]),
                subtitle: Text(memory[index]),
                trailing: Icon(Icons.add_business),
                );
              }
              )),
            )
            )
      ],),
      ),
    ],),
    );
  }
}



class Quick extends StatefulWidget {
  const Quick({super.key});

  @override
  State<Quick> createState() => _QuickState();
}

class _QuickState extends State<Quick> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
              children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Good Morning,",style: TextStyle(fontSize: 23,color: Colors.grey),),
                SizedBox(height: 12),
                 Text("Virat Kohli!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              ],)
              ],),
              Row(
                children: [
                Icon(Icons.notifications,size: 35,)
              ],),
              ],),
              SizedBox(height: 20,),
              Row(
                children: [
                ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 185,
                    width: 360,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Image.asset("assets/rcb.jpg",fit: BoxFit.cover),
                  ),
                ),
                ],),
                SizedBox(height: 20,),
                Container(
               //  height: double.infinity, width: double.infinity,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 30),),
                        Container(
                          height: 7,width: 90,
                          decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                        ),
                      ],),
                      SizedBox(height:15),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          height: 50,width: 50,
                          alignment: Alignment.center,
                          child: Image.asset("assets/plus.png"),
                        ),
                        Container(
                          height: 50,width: 50,
                          alignment: Alignment.center,
                          child: Image.asset("assets/exchange.png"),
                        ),
                        Container(
                          height: 50,width: 50,
                          alignment: Alignment.center,
                          child: Image.asset("assets/comments.png"),
                        ),
                        Container(
                          height: 50,width: 50,
                          alignment: Alignment.center,
                          child: Image.asset("assets/menu.png"),
                        ),
                      ],),
                      SizedBox(height: 5,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Text("Top Up",style: TextStyle(fontSize: 15,color: Colors.black),),
                         Text("Transfer",style: TextStyle(fontSize: 15,color: Colors.black),),
                          Text("Message",style: TextStyle(fontSize: 15,color: Colors.black),),
                           Text("More",style: TextStyle(fontSize: 15,color: Colors.black),),
                      ],),
                      SizedBox(height:20 ,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                             Container(
        
                              height: 55,width: 75,
                              decoration: BoxDecoration(color: Colors.grey),
                             ),
                             SizedBox(width: 10,),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("Hari",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 10,),
                            Text("Infosys",style: TextStyle(fontSize: 15,color: Colors.black),),
                             ],)
                          ],),
                          Row(
                            children: [
                          Container(
                            height: 50, width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
                           child: Text("Buy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          )
                          ],)
                        ],),
                      ),
                      SizedBox(height: 18,),
                        Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                             Container(
                              height: 55,width: 75,
                              decoration: BoxDecoration(color: Colors.grey),
                             ),
                             SizedBox(width: 10,),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("Yuvi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 10,),
                            Text("Alstom",style: TextStyle(fontSize: 15,color: Colors.black),),
                             ],)
                          ],),
                          Row(
                            children: [
                          Container(
                            height: 50, width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
                           child: Text("Buy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          )
                          ],)
                        ],),
                      ),
                       SizedBox(height: 18,),
                        Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                             Container(
                              height: 55,width: 75,
                              decoration: BoxDecoration(color: Colors.grey),
                             ),
                             SizedBox(width: 10,),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("Karthick",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 10,),
                            Text("Flex",style: TextStyle(fontSize: 15,color: Colors.black),),
                             ],)
                          ],),
                          Row(
                            children: [
                          Container(
                            height: 50, width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
                           child: Text("Buy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          )
                          ],)
                        ],),
                      ),
                        SizedBox(height: 18,),
                         Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                             Container(
                              height: 55,width: 75,
                              decoration: BoxDecoration(color: Colors.grey),
                             ),
                             SizedBox(width: 10,),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("Nandha",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 10,),
                            Text("ZTT",style: TextStyle(fontSize: 15,color: Colors.black),),
                             ],)
                          ],),
                          Row(
                            children: [
                          Container(
                            height: 50, width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
                           child: Text("Buy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          )
                          ],)
                        ],),
                      ),
                          SizedBox(height: 18,),
                         Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                             Container(
                              height: 55,width: 75,
                              decoration: BoxDecoration(color: Colors.grey),
                             ),
                             SizedBox(width: 10,),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("CJ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                             SizedBox(height: 10,),
                            Text("TCS",style: TextStyle(fontSize: 15,color: Colors.black),),
                             ],)
                          ],),
                          Row(
                            children: [
                          Container(
                            height: 50, width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
                           child: Text("Buy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          )
                          ],)
                        ],),
                      ),
                ],),
                ),
            ],),
          ),
        ),
      ),

    );
  }
}



class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding:  EdgeInsets.all(15.0),
      child: SafeArea(
      child: Column(children: [
        Row(children: [
       Icon(Icons.arrow_back_ios_new_sharp),
       SizedBox(width: 100,),
       Text("Search",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)
        ],),
        SizedBox(height: 25,),
        Row(
          children: [
          ClipRRect(borderRadius: BorderRadius.circular(17),
            child: Container(
            height: 60,width: 360, 
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: TextFormField(
             decoration: InputDecoration(prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
             hintText: "Search transaction, fixed income, etc",fillColor: Colors.grey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
             ), 
            ),
            ),
          )
        ],),
        SizedBox(height: 30,),
        Row( mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Recently Tags",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
          ],),
          SizedBox(height: 15,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: 45,width: 140,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 233, 230, 230)),
              child: Align(alignment: Alignment.center,
              child: Text("# Money Market",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
              ), 
            ),
             Container(
              height: 45,width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 233, 230, 230)),
              child: Align(alignment: Alignment.center,
              child: Text("# Equity",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ), 
            ),
              Container(
              height: 45,width: 98,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 233, 230, 230)),
              child: Align(alignment: Alignment.center,
              child: Text("# Latest",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ), 
            ),
          ],),
          SizedBox(height: 15,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: 45,width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 233, 230, 230)),
              child: Align(alignment: Alignment.center,
              child: Text("# Trending",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ), 
            ),
             Container(
              height: 45,width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 233, 230, 230)),
              child: Align(alignment: Alignment.center,
              child: Text("# Popular",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ), 
            ),
              Container(
              height: 45,width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 233, 230, 230)),
              child: Align(alignment: Alignment.center,
              child: Text("# Low Price",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ), 
            ),
          ],), 
          SizedBox(height: 27,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Text("Popular",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
          Text("Latest",style: TextStyle(fontSize: 18,color: Colors.grey),),
          Text("Money Market",style: TextStyle(fontSize: 18,color: Colors.grey),),
          Text("Equity",style: TextStyle(fontSize: 18,color: Colors.grey),),
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
              Container(
              height: 50,width: 70,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 8,),
            Column(
              children: [
            Text("Mandiri Investasi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 8,),
            Text("Money Market",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],),
              ],), 
            Row(
            mainAxisSize: MainAxisSize.min,
              children: [
            Text("^1,54%",style: TextStyle(fontSize: 25,color: Colors.green),)
           ],),
             ],),
                       SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
              Container(
              height: 50,width: 70,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 8,),
            Column(
              children: [
            Text("Hari",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 8,),
            Text("Trending",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],),
              ],), 
            Row(
            mainAxisSize: MainAxisSize.min,
              children: [
            Text("^1,89%",style: TextStyle(fontSize: 25,color: Colors.green),)
           ],),
             ],),
            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
              Container(
              height: 50,width: 70,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 8,),
            Column(
              children: [
            Text("Vishnu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 8,),
            Text("Stock Market",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],),
              ],), 
            Row(
            mainAxisSize: MainAxisSize.min,
              children: [
            Text("^2,17%",style: TextStyle(fontSize: 25,color: Colors.green),)
           ],),
             ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
              Container(
              height: 50,width: 70,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 8,),
            Column(
              children: [
            Text("MRF",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 8,),
            Text("Latest",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],),
              ],), 
            Row(
            mainAxisSize: MainAxisSize.min,
              children: [
            Text("^5,19%",style: TextStyle(fontSize: 25,color: Colors.green),)
           ],),
             ],),
                       SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
              Container(
              height: 50,width: 70,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 8,),
            Column(
              children: [
            Text("TATA",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 8,),
            Text("Popular",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],),
              ],), 
            Row(
            mainAxisSize: MainAxisSize.min,
              children: [
            Text("^3,76%",style: TextStyle(fontSize: 25,color: Colors.green),)
           ],),
             ],),
          SizedBox(height: 20,),
         ],),
        ),
    ),
    );
  }
}



class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List number = [1,2,3,4,5,6,7,8,9,10];
    List hhh = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
      title: Text("listview",style: TextStyle(fontSize: 30,color: Colors.white),),
    ),
  body: Container(
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: number.length,
      itemBuilder: ((context,index){

        print(index.toString());
      return Container(
        child: ListTile(
          title: Text(number[index].toString()),
        ),
       // child: Text(index.toString()),
      );
      })
      ),
  ),

    );
  }
}


class Finance extends StatefulWidget {
  const Finance({super.key});

  @override
  State<Finance> createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  List days = ["Date","open Price","Day High","Day Low","Min.Purchase","Min.Transfer","Volume","Revenue","Balance"];
  List money = [2022,3.4284,863.65,314.99,50.0000,50.0000,8.34100084,2365474,2.01446532];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: EdgeInsets.all(12.0),
      child: SafeArea(
        child: Column(
          children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Icon(Icons.arrow_back_ios_new),
           Text("Detail",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
           Icon(Icons.menu)
          ],),
          SizedBox(height: 35),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
            Text("1D",style: TextStyle(fontSize: 17,color: Colors.black),),
            Text("1W",style: TextStyle(fontSize: 17,color: Colors.black),),
            Text("1M",style: TextStyle(fontSize: 17,color: Colors.black),),
            Text("3M",style: TextStyle(fontSize: 17,color: Colors.black),),
            Text("1Y",style: TextStyle(fontSize: 17,color: Colors.black),),
            Text("All",style: TextStyle(fontSize: 17,color: Colors.black),),
          ],),
         SizedBox(height: 30,),
         ClipRRect(borderRadius: BorderRadius.circular(30),
           child: Container(
            height: 230,
            width: 400,
            decoration: BoxDecoration(color: Colors.black),
            child: Image.network("https://lh4.googleusercontent.com/OVnEMWIFN_bwoyiEGYu2xsFdTuG9pF4sR4k4-CTx9EN7zZ5Ee47dSWjaWwg4gLqchJoB7no18KEpxVXcaAAKvrVpuq_82lEoMj6D0Dg7gIxXNoiZ7kbEgMN81OA8ySNJArYGirhqYCTB1M9B_vC-jKvaNDCOZqEnNBq-j9OkZDCWRQhqMBZfSdr8vg",fit: BoxFit.cover,)
           ),
         ),
         SizedBox(height: 25,),
         Row(
          children: [
          Text("Additional Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
         ],),
         SizedBox(height: 15),
         Container(
        height: 270, width: 400,
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
         child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: days.length,
          itemBuilder: ((context,index){
            print(index);
          return Container(
            height: 30,width: 400,
            child: ListTile(
            title: Text(days[index]),
            trailing: Text(money[index].toString())
            
            ),
          );
          })
          ),
         ),
         SizedBox(height: 11,),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 43,width: 140,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(255, 211, 201, 201)),
            child: Align(alignment: Alignment.center,
            child: Text("Sell",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
          ),
            Container(
            height: 43,width: 140,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black),
            child: Align(alignment: Alignment.center,
            child: Text("Buy",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
         ],)
        ],),
      ),
    ),
    );
  }
}


class List1 extends StatefulWidget {
  const List1({super.key});

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {

  List bike = ["yamaha","honda","tvs"];
  List milage = ["Mt15","Hornet","Jupiter"];
  List model = ["assets/1.jpg","assets/2.jpg","assets/3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Friends",style: TextStyle(fontSize: 30,color: Colors.white),),
    ),
    body: Padding(
      padding:  EdgeInsets.all(15.0),
      child: Container(
        height: 80,
        width: 450,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 5),
              margin: EdgeInsets.all(5),
              height: 60,width: 200,
              color: Colors.blue,
              child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(model[index])),
              title: Text(bike[index]),
              subtitle: Text(milage[index]),
              trailing: Icon(Icons.chat_sharp),
              ),
            );
          })),
      ),
    ),
    



    );
  }
}


class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _normalIndex = 0;
  List  products = [ "Arjun","Hari","Muruga"];
  List details = ["acting","working","studying"];
  List price = [1000,2000,3000];
  List image = ["assets/2.jpg","assets/1.jpg","assets/7.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview",style: TextStyle(fontSize: 20,color: Colors.black),)
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex :_normalIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shortcut),
           backgroundColor: Colors.pink,
           label: "Short" ),
           BottomNavigationBarItem(
            icon: Icon(Icons.class_),
           backgroundColor: Colors.blue,
           label: "Class" ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
           backgroundColor: Colors.yellow,
           label: "Circle" ),
           BottomNavigationBarItem(
            icon: Icon(Icons.airlines),
           backgroundColor: Colors.purple,
           label: "Airline" )
        ],
        onTap: (value) {
         setState(() {
          _normalIndex = value; 
         }); 
        },
        ),
        body: Container(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),),
                title: Text(products[index]),
                subtitle: Text(details[index]),
               trailing: Text(price[index].toString()),
              );
            }
            ),
        ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _presentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Home",style: TextStyle(fontSize: 30,color: Colors.pink),),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex :_presentindex,
    
      backgroundColor: Colors.yellow,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.red,
          label: "home"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          backgroundColor: Colors.blue,
          label: "Shop"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.library_add),
          backgroundColor: Colors.pink,
          label: "Library"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.folder),
          backgroundColor: Colors.purple,
          label: "Folder"
          )
      ],
        onTap: (value){
       setState(() {
         _presentindex = value;
       });
      },
      ),
      body: 
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                       height: 100,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: 10,
                         itemBuilder: (context,index) =>Container(
                         height: 60,width: 60,
                         margin: EdgeInsets.all(10),
                         child: Center(
                           child: Text("box ${index+1}"),
                         ),
                         color: Colors.green,
                         )
                         ),
                      ),
                    ],),
                ),
              ),
            ),
              
        ], ),
    );
  }
}


class Bar extends StatefulWidget {
  const Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Navigationbar",style: TextStyle(fontSize: 30,color: Colors.pink),),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentindex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.blue,
          label: "Home",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.search),
          backgroundColor: Colors.green,
          label: "Search",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          backgroundColor: Colors.red,
          label: "Notification",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          backgroundColor: Colors.blue,
          label: "Acount",
          )
      ],
      onTap: (index) {
        setState(() {
         _currentindex = index; 
        });
      },
      ),

    );
  }
}















class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
    child: Column(
      children: [   
        Align(alignment: Alignment.center,),  
       Image.asset("assets/illustration-1.png",width: 240,),
       SizedBox(height: 5,), 
       Text("Let's get start",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
       SizedBox(height: 5,),
       Text("Landing page for your business",style: TextStyle(fontSize: 18,color: Colors.black),),
       SizedBox(height: 15,),
      SizedBox(width: 300,
      child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP() ));
      },
       style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
       ), 
       child: Padding(padding: EdgeInsets.all(14),
       child: Text("Create Account",style: TextStyle(fontSize: 20),),
       ),
       ),),
       SizedBox(height: 25),
      SizedBox(width: 250,
      child: ElevatedButton(onPressed: (){},
       style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
       ), 
       child: Padding(padding: EdgeInsets.all(14),
       child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black),),
       ),
       ),),
      ],),
    ),
    ),
    );
  }
}








class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           _top(),
           _body(),
        ],),
      ),
    );
  }

  Widget _top(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       Text("Chat with \nyour friends",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),), 
      Row(
        children: [
        Container(
          padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 126, 125, 125)),  
        child: Icon(Icons.search,size: 33,color: Colors.white,),
        ),
        SizedBox(width: 15,),
        Expanded(
          child: Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index){
                return Avatar(margin: EdgeInsets.only(right: 20),
                image: "assets/1.jpg",

                );
              }
              ),
          )
          )
      ],)
      
      ],),
    );
  }
  Widget _body(){
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45)),color: Colors.white),
    child: ListView(
           padding: EdgeInsets.only(top: 35),
           children: [
            _itemchats(
              avatar : "assets/2.jpg",
              name : "BRO",
              chat : "it is sample dummy text of the printing in flutter application ",
              time : "19:00"
            ),
            _itemchats(
              avatar : "assets/7.jpg",
              name : "Hari",
              chat : "He is working on infosys since 2021",
              time : "07:08"
            ),
            _itemchats(
              avatar : "assets/4.jpg",
              name : "Nandha",
              chat : "😎 He is going bangalore by next month ",
              time : "05:00"
            ),
            _itemchats(
              avatar : "assets/5.jpg",
              name : "Karthick",
              chat : "He is living in padirivedu village",
              time : "21:00"
            ),
            _itemchats(
              avatar : "assets/2.jpg",
              name : "Yuvi",
              chat : "He is working on Alstom in sricity",
              time : "14:12"
            ),
           ],),
    ),
  );
}
Widget _itemchats({
String avatar = "", name = "", chat = "",time = "00.00"}){
return GestureDetector(onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Chatpage()));
},
  child:   Card(margin: EdgeInsets.symmetric(vertical: 20),elevation: 0,
  
  child: Row(
  
    children: [
  
    Avatar(margin: EdgeInsets.only(right: 20),size: 60,image: avatar,),
  
    Expanded(
  
      child: Column(
  
      children: [
  
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: [
  
        Text("$name",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
  
        Text("$time",style: TextStyle(fontSize: 17,color: Colors.grey),),
  
       ],),
  
       SizedBox(height: 10,),
  
       Text("$chat",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20,color: Colors.black),)
  
      ],)
  
    )
  
  ],),
  
  ),
);
}
}

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
        children: [
          _topchat(),
        _bodychat()
        ], 
      )
      ),
    );
  }

  Widget _topchat(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Row(
        children: [
          Icon(Icons.arrow_back,size: 25,), 
          SizedBox(width: 10,),
          Text("Buddy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          ],),    
          Row(
            children: [
          Container(
            padding:EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 216, 213, 213)),
           child: Icon(Icons.call,size: 25,),
          ),
          SizedBox(width: 15,),
          Container(
            padding:EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 216, 213, 213)),
           child: Icon(Icons.video_call,size: 25,),
          )
       ],),
     ],),  
  ); 
  }
  Widget _bodychat(){
  return Expanded(
    child: Container(
    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))),
    child: ListView(
      physics: BouncingScrollPhysics(),
    children: [

     ],),
    ),
  );
  }

}





class Avatar extends StatelessWidget {
  final double size;
  final image;
  final margin;
  Avatar({super.key, this.image,this.size = 50,required this.margin });
  @override
  Widget build(BuildContext context) {
    return Padding( padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(image)),
        ),
      ),
    );
  }
}
