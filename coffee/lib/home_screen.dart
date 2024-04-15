import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee/lattle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List imageList = [
    {"id":1,"image_path": 'assets/images/pexels-aykut-aktemur-19575357.jpg'},
    {"id":2,"image_path": 'assets/images/pexels-chevanon-photography-302896.jpg'},
    {"id":3,"image_path": 'assets/images/pexels-chevanon-photography-302899.jpg'},
    {"id":4,"image_path": 'assets/images/pexels-chevanon-photography-312418.jpg'},
    {"id":5,"image_path": 'assets/images/pexels-quang-anh-ha-nguyen-885021.jpg'},
    {"id":6,"image_path": 'assets/images/pexels-eyad-tariq-3879495.jpg'},

  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: Column(
        children: [
          Container(
            height: 210,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pexels-chevanon-photography-302899.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black26, BlendMode.dstATop)
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.black26
            ),
           child: Row(
             children: [
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 55,left: 7),
                     child: Text('COFFEE NYONG',style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.w600,
                         fontSize: 23),),
                   ),
                   SizedBox(height: 1,),
                   Padding(
                     padding: const EdgeInsets.only(right: 5),
                     child: Text('your daily coffee needs',style: TextStyle(
                         color: Colors.grey.shade400
                     ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 70),
                         child: SizedBox(width: 260,height: 35,child: TextFormField(
                           cursorHeight: 20,
                           cursorColor: Colors.white,
                           style: TextStyle(fontSize: 15),
                           decoration: InputDecoration(
                             enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(21),
                               borderSide: BorderSide(
                                   color: Colors.blueGrey.shade800,),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(21),
                               borderSide: BorderSide(
                                   color:
                                   Colors.blueGrey.shade800,),
                             ),
                             fillColor: Colors.blueGrey.shade800,
                             hoverColor: Colors.blueGrey.shade800,
                             filled: true,
                             hintText: ' search your favorite coffee',
                             suffixIcon: Icon(
                               Icons.coffee_outlined,
                               color: Colors.grey.shade300,
                             ),
                             hintStyle: TextStyle(fontSize: 11,color: Colors.grey.shade300)
                             ),

                           )
                         ),),
                     ]
                   )
                 ],
               ),
             ],
           ),
          ),
          SizedBox(height: 13,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Coffee',style: TextStyle(
                    color:Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Fontmain'
                ),),
              ),
              SizedBox(width: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Tea',style: TextStyle(
                    color:Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Fontmain'
                ),),
              ),
              SizedBox(width: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Choclate',style: TextStyle(
                    color:Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Fontmain'
                ),),
              ),
              SizedBox(width: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Food',style: TextStyle(
                    color:Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Fontmain'
                ),),
              ),
            ],
          ),
         // SizedBox(height: 15,),
          Column(
            children: [
              CarouselSlider(items: [
                Container(
                height: 300,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black, BlendMode.dstATop),
                    image: AssetImage('assets/images/pexels-aykut-aktemur-19575357.jpg',),
                    fit: BoxFit.cover
                  )
                ),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 175,left: 7),
                              child: Text('Cappucino',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                            SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 0),
                              child: Text("\$10,99",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                        
                        
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 155),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.grey
                                    ),
                                    height: 28,
                                    width: 28,
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                        child: Icon(Icons.add_outlined,color: Colors.white,)),
                        
                                  ),
                                )
                              ],
                            )
                        
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
                Container(
                  height: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black, BlendMode.dstATop),
                          image: AssetImage('assets/images/pexels-chevanon-photography-302896.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 175,left: 7),
                              child: Text('Lattle',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                            SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 0),
                              child: Text("\$10,55",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                        
                        
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 155),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey
                                    ),
                                    height: 28,
                                    width: 28,
                                    child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => lattleScreen()));
                                        },
                                        child: Icon(Icons.add_outlined,color: Colors.white,)),
                        
                                  ),
                                )
                              ],
                            )
                        
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                
                Container(
                  height: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/pexels-aykut-aktemur-19575357.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 175,left: 7),
                              child: Text('Cappucino',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                            SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 0),
                              child: Text("\$10,55",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),


                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 155),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey
                                    ),
                                    height: 28,
                                    width: 28,
                                    child: Icon(Icons.add_outlined,color: Colors.white,),

                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/pexels-chevanon-photography-312418.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 175,left: 7),
                              child: Text('Espresso',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                            SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 0),
                              child: Text("\$10,66",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),


                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 155),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey
                                    ),
                                    height: 28,
                                    width: 28,
                                    child: Icon(Icons.add_outlined,color: Colors.white,),

                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black, BlendMode.dstATop),
                          image: AssetImage('assets/images/pexels-quang-anh-ha-nguyen-885021.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 175,left: 7),
                              child: Text('Cortado',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                            SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 0),
                              child: Text("\$11,99",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),


                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 155),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey
                                    ),
                                    height: 28,
                                    width: 28,
                                    child: Icon(Icons.add_outlined,color: Colors.white,),

                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/pexels-eyad-tariq-3879495.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Row(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 175,left: 7),
                              child: Text('Macchiato',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),
                            SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,left: 0),
                              child: Text("\$12,99",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,fontFamily: 'Fontmain'),),
                            ),


                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 155),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey
                                    ),
                                    height: 28,
                                    width: 28,
                                    child: Icon(Icons.add_outlined,color: Colors.white,),

                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                 // carouselController: carouselController,
                  options: CarouselOptions(
                    height: 300,autoPlay: true,
                    viewportFraction: 0.55,
                    enlargeCenterPage: true,
                    pageSnapping: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  )),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(right: 265),
                child: Text('Popular',style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Fontmain',

                ),),
              ),
              SizedBox(height: 8,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blueGrey.shade800,
                  image: DecorationImage(
                    image: AssetImage('assets/images/pexels-lil-artsy-1132586.jpg'),
                    fit: BoxFit.cover

                  ),
                ),
                height: 190,
                width: 360,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7,left: 205),
                          child: Text('Americano',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Fontmain',
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0,left: 205),
                          child: Text('An Americano is made\n by pouring hot water\n over one or two espresso\n shots, resulting in a drink\n of similar volume and\n strength to regular coffee.',style: TextStyle(
                              color: Colors.white,
                              fontSize: 10
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4,left: 205),
                          child: Text('\$12,99',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Fontmain',
                              fontSize: 21,
                          ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 325),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey,
                            ),
                            height: 25,
                            width: 25,
                            child: Icon(Icons.add_outlined,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
