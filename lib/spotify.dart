import 'package:flutter/material.dart';

import 'model.dart';
class spo extends StatefulWidget {
  const spo({super.key});

  @override
  State<spo> createState() => _spoState();
}

class _spoState extends State<spo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:NestedScrollView(
              headerSliverBuilder: (BuildContext context,bool innerBoxIsSrolled){
                return [
                  SliverAppBar(
                    leading: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xfffffff9),
                      ),
                    ),
                    pinned: true,
                    expandedHeight: 480,
                    stretch: true,
                    titleSpacing: 20,
                    backgroundColor: Colors.black38,

                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff77464c),
                              Colors.black,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                        ),
                      ),
                      child: Stack(
                        children: [
                          FlexibleSpaceBar(
                            centerTitle: false,
                            title:Column(
                              children: [
                                Center(
                                  child: Text("Romantic Yuvan",
                                    style: TextStyle(
                                        color: Color(0xfffffff9),
                                        fontSize: 20
                                    ),),
                                ),
                              ],
                            ),
                            background: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                          width: 300,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Color(0xfffffff9),
                                              ),
                                              hintText: "Find in playlist",
                                              hintStyle: TextStyle(
                                                color: Color(0xfffffff9),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.white.withOpacity(
                                                    (0.2),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(4),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: Colors.white.withOpacity(0.2),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Sort",
                                                  style: TextStyle(
                                                    color: Color(0xfffffff9),
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ]
                                  ),
                                ),
                                Container(
                                  height: 230,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff036a4),
                                  ),
                                  child:Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150,
                                              width: 250,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/u1.png'),
                                                    fit: BoxFit.fill
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage('assets/spoti logo.png'),
                                                      fit: BoxFit.fill
                                                  ),
                                                ),
                                              ),)
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          children: [
                                            Text('Romantic\nYuvan',style: TextStyle(color: Colors.white,fontSize: 18,
                                                fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ) ,
                                ),

                                Row(
                                  children: [
                                    Text('The Young Maestro at it',style: TextStyle(color: Color(0xffa9abaa)),),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage("assets/spoti logo.png")
                                            )
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RichText(text: TextSpan(
                                            text: "Made for ",
                                            style: TextStyle(
                                                color: Color(0xffa9abaa)
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: "....",
                                                  style: TextStyle(
                                                      color: Color(0xfff7fefc)
                                                  )
                                              )
                                            ]
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("3h 20min",
                                        style: TextStyle(
                                            color: Color(0xffa9abaa)
                                        ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  )
                ];
              },
              body: SingleChildScrollView(
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Icon(Icons.add_circle_outline_sharp,
                              color: Color(0xffa9abaa),),
                            SizedBox(width: 15,),
                            Icon(Icons.arrow_circle_down_outlined,
                              color: Color(0xffa9abaa),),
                            SizedBox(width: 15,),
                            Icon(Icons.share_outlined,
                              color: Color(0xffa9abaa),),
                            SizedBox(width: 15,),
                            Icon(Icons.more_vert,
                              color: Color(0xffa9abaa),),
                            SizedBox(width: 160),
                            Icon(Icons.shuffle_outlined,
                              color: Color(0xff25d861),),
                            SizedBox(width: 5,),
                            Icon(Icons.play_circle,
                              size: 30,
                              color: Color(0xff25d861),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: sam.length,
                            shrinkWrap: true,
                            itemBuilder: (context,index)=>
                                Card(
                                  color: Color(0xff121212),
                                  child: SingleChildScrollView(
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image(
                                          image: AssetImage(sam[index].image),
                                        ),
                                      ),
                                      title: Text(sam[index].text,
                                        style: TextStyle(
                                            color: Color(0xfff3f3f3)
                                        ),),
                                      subtitle: Container(
                                        height: 20,
                                        width: 20,
                                        child:Text(sam[index].song),
                                      ) ,
                                      trailing: Icon(Icons.more_vert,
                                        color: Color(0xffadadad),),
                                    ),
                                  ),
                                ),),

                        )],
                    ),
                  ),
                ),
              )
          )
      ),
    );
    ;
  }
}