

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/src/material/colors.dart';

class lattleScreen extends StatefulWidget {
  const lattleScreen({super.key});

  @override
  State<lattleScreen> createState() => _CappucinoScreenState();
}

class _CappucinoScreenState extends State<lattleScreen> {

  double _value = 20;
  double _values = 20;


 // RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
   // RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/pexels-chevanon-photography-302896.jpg'),
                      fit: BoxFit.cover,

                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 155,left: 10),
                      child: Text('Coffee\nEnyong',style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'Fontmain',

                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 155,left: 150),
                      child: Text('It,s Coffee\n          Time',style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontFamily: 'Fontmain',

                      ),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 240,left: 72),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blueGrey.shade600,
                  ),
                  height: 40,
                  width: 230,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 77),
                        child: Text('Lattle',style: TextStyle(
                             color: Colors.white,
                             fontSize: 30,
                             fontWeight: FontWeight.w600,
                             fontFamily: 'Fontmain'
                        ),),
                      ),
                    ],
                  ),
                ),

              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7,left: 75),
                child: Text('A latte or caffè latte is a milk coffee that is a made up\nof one or two shots of espresso, steamed milk and a final,\n                   thin layer of frothed milk on top.',style: TextStyle(
                    color: Colors.white,
                    fontSize: 9
                ),),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top:12,right:0,left: 45),
            child: Text('S          M         L',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Fontmain',
                fontSize: 20,

            ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 18),
                child: Text('Size',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Fontmain',
                    fontSize: 27,
                ),),
              ),
             Padding(
               padding: const EdgeInsets.only(top: 15,left: 50),
               child: Slider(
                   min: 5.0,
                   max: 100.0,
                   activeColor: Colors.blueGrey,
                   inactiveColor: Colors.white,
                   thumbColor: Colors.white,
                   value: _value,
                   onChanged: (value){
                     setState(() {
                       _value = value;
                     });
                   },),
             ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12,left: 18),
                child: Text('Temperature',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Fontmain',
                  fontSize: 27,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: ToggleSwitch(
                  labels: [
                    'Hot',
                    'Ice',
                  ],
                  fontSize: 18,
                  minWidth: 50,
                  minHeight: 50,

                  activeBgColors:   [[Colors.red.shade900], [Colors.blue.shade900]],
                  activeFgColor: Colors.white,
                  inactiveFgColor: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22,left: 18),
                child: Text('Shugar',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Fontmain',
                  fontSize: 27,

                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18,left: 16),
                child: Slider(
                    min: 0.0,
                    max: 100,
                    activeColor: Colors.blueGrey,
                    inactiveColor: Colors.white,
                    thumbColor: Colors.white,
                    value: _values,
                    divisions: 100,
                    label: '${_values.round()}',
                    onChanged: (value){
                    setState(() {
                      _values = value;
                    });
                    },
                    ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22,left: 18),
                child: Text('Milk',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Fontmain',
                  fontSize: 27,
                ),),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13,left: 35),
                child: Text('Oat Milk',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                ),),
              ),

              SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.only(top: 13,left: 18),
                child: Text('Soy Milk',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                ),),
              ),

              SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.only(top: 13,left: 18),
                child: Text('Almond Milk',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                ),),
              ),
            ],
          ),
          SizedBox(height: 35,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blueGrey.shade600,
                  ),
                  height: 40,
                  width: 145,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text('\$12,55',style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Fontmain'

                    ),),
                  ),
                ),
              ),
              SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blueGrey.shade600,
                  ),
                  height: 40,
                  width: 145,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Center(
                      child: Text('Buy Now',style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Fontmain'

                      ),),
                    ),
                  ),
                ),
              ),

            ],
          )

        ],

      ),
      
    );
  }
}
