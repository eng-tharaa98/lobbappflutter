import 'package:applobb/element/appbar.dart';
import 'package:applobb/element/card_collection.dart';
import 'package:applobb/element/card_nft.dart';
import 'package:flutter/material.dart';

import 'mobile_screen_three.dart';

class MobileScreenTwo extends StatefulWidget {
  const MobileScreenTwo({Key? key}) : super(key: key);

  @override
  _MobileScreenTwoState createState() => _MobileScreenTwoState();
}

class _MobileScreenTwoState extends State<MobileScreenTwo> {
  List<String> litems = [
    "Trending",
    "Popular",
    "Following",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70), child: CustomAppBar()),
        body: ListView(
          shrinkWrap: true,
          children: [ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // width: 290,
                  height: 90,
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 30,
                  ),
                  child: Image(
                      image:
                      AssetImage('assets/images/explorebrightness.png'))),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 30,
                ),
                height: 100,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Trending',
                        style: Theme.of(context).textTheme.headline1!.merge(TextStyle(color: Colors.white)),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(.26),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Color(0xFFFFFFFF),width: 1),

                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    Text(
                      'Popular',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Following',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              )
              ,
              CardNft(onTap: (){
                Navigator.of(context).pushNamed('/MobileScreenThree');

              },),
              Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 30,
                  ),
                  child: Image(
                      image:
                      AssetImage('assets/images/LatestCollection.png'))),

              CardCollection(isApparent:true)


            ],
          ),],


        ));
  }
}
