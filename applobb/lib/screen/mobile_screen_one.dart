
import 'package:applobb/element/card_nft.dart';
import 'package:applobb/screen/mobile_screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MobileScreenOne extends StatefulWidget {
  const MobileScreenOne({Key? key}) : super(key: key);

  @override
  _MobileScreenOneState createState() => _MobileScreenOneState();
}

class _MobileScreenOneState extends State<MobileScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: ListView(
shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Stack(
                    children: [
                      Container(
                          alignment:Alignment.topRight,
                          child: Image.asset('assets/images/Frame3.png',fit: BoxFit.cover)),
                      Container(
                          padding: EdgeInsets.only(right: 20),
                          alignment:Alignment.topCenter,child: Image.asset('assets/images/Frame2.png',fit: BoxFit.cover)),
                      Container(
                          padding: EdgeInsets.only(left: 0,top: 15),
                          alignment:Alignment.bottomLeft,child: Image.asset('assets/images/Frame1.png',fit: BoxFit.cover)),

                      // Image.asset('assets/Start.png',fit: BoxFit.cover),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),


                Container(
                  height: MediaQuery.of(context).size.height*.3,
                  width:  MediaQuery.of(context).size.height*.9,
                  padding: EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/fontpageone.png')),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/MobileScreenTwo');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height*.2,
                    width: MediaQuery.of(context).size.width*.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Polygon 2.png'), fit: BoxFit.cover),
                    ),
                    child: Image.asset('assets/images/Start.png',fit: BoxFit.cover),
                  ),
                ),


              ],
            ),
          ],



        ),
      ),
    );
  }
}
