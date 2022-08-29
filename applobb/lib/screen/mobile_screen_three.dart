import 'package:applobb/element/card_nft.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MobileScreenThree extends StatefulWidget {
  const MobileScreenThree({Key? key}) : super(key: key);

  @override
  _MobileScreenThreeState createState() => _MobileScreenThreeState();
}

class _MobileScreenThreeState extends State<MobileScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*.5,
                  child:  Image(image: AssetImage('assets/images/Group1.png'),fit: BoxFit.cover,),
                ),
                Positioned(
                  top: 120,
                  bottom: 10,
                  left: 100,
                  right: 100,
                  child: Image(image: AssetImage('assets/images/Polygon 3.png'),fit: BoxFit.cover,),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Saskehh Rio',style: Theme.of(context).textTheme.headline1!.merge(TextStyle(fontSize:32,color: Colors.white,fontWeight: FontWeight.w400)),),
                Text('Creator',style: Theme.of(context).textTheme.headline1!.merge(TextStyle(fontSize:24,color: Color(0xFFFFA14A),fontWeight: FontWeight.w400)),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Auction ending in',style: Theme.of(context).textTheme.headline1!.merge(TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.w400)),),
                  Text('Highest Bid',style: Theme.of(context).textTheme.headline1!.merge(TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.w400)),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('05 : 35 : 09',style: Theme.of(context).textTheme.headline1!.merge(TextStyle(fontSize:18,color: Color(0xFFCDCDCD),fontWeight: FontWeight.w400)),),
                  Text('290 ETH',style: Theme.of(context).textTheme.headline1!.merge(TextStyle(fontSize:18,color: Color(0xFFCDCDCD),fontWeight: FontWeight.w400)),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CardNft(onTap: (){},),
            )


          ],
        ),
      ),
    );
  }
}
