import 'package:applobb/screen/mobile_screen_three.dart';
import 'package:flutter/material.dart';

import 'card_collection.dart';
class CardNft extends StatefulWidget {
  final VoidCallback onTap;
   CardNft({Key? key,required this.onTap}) : super(key: key);

  @override
  State<CardNft> createState() => _CardNftState();
}

class _CardNftState extends State<CardNft> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  List<String>_pages=[
    'assets/images/Rectangle 18025.png',
    'assets/images/Bitmap.png',
        'assets/images/image10.png',
  ];
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue=  pageController.page!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: PageView.builder(
        controller: pageController,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, position) {
          return _buildPageItem(position,context,widget.onTap);
        },
      ),
    );
  }

  _buildPageItem(int index,BuildContext context,VoidCallback onTap) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child:   GestureDetector(
        onTap: onTap
        ,
        child: Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(_pages[index]
                        )
                    )
                ),

              ),

              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(

                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF).withOpacity(.100),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Color(0xFFFFFFFF)),
                    ),
                    height: 40,
                    width: 88,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage('assets/images/heartIcon.png'),width: 16,height: 16,fit: BoxFit.cover,),
                        Text(
                            '230',
                            textScaleFactor: 1.5,
                            style: Theme.of(context).textTheme.headline1!.merge(TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 11))
                        ),
                      ],
                    ) ,
                  ),
                ),
              ),
              Positioned(
                  top: 120,
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: CardCollection(isApparent:false)),

            ],
          ),
        ),
      ),
    );
  }
}
