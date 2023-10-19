import 'package:coffeestore/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:typed_data';


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  

  final colorPalette=ColorPalette();
  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width;
    var screenheight=MediaQuery.of(context).size.height;


    return Scaffold(
      body: Stack(
        children: [
          Container(
          height: screenheight,
          width: screenWidth,
          color: Colors.transparent,
          ),
          Container(
            height:screenheight,
            width: screenWidth/5,
            color: colorPalette.leftBarColor,
           
          ),
          Positioned(
            left: screenWidth/5,
            child: Container(
              height: screenheight,
              width: screenWidth-(screenWidth/5),
              color: Colors.white,

            )),
            Positioned(
              top: 35.0,
              left: 20.0,
              child: Icon(
                Feather.menu
              )),
               Positioned(
              top: 35.0,
              right: 20.0,
              child: Icon(
                Feather.shopping_bag
              )),
              Positioned(
                top: screenheight-(screenheight-100.0),
                left: (screenWidth/5)+25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CoffeeHouse',
                    style: GoogleFonts.bigShouldersText(
                      color: Color(0xFF23163D),
                      fontSize: 40.0),
                    ),
                     Text('A lot can happen over coffee',
                    style: GoogleFonts.bigShouldersText(
                      color: Color(0xFFA59FB0),
                      fontSize: 15.0),
                    ),
                  ],
                ),
              )


        ],
      ),
    );
    
  }
}