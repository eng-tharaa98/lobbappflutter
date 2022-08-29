import 'dart:ui';

import 'package:flutter/material.dart';

class CardCollection extends StatelessWidget {
 final bool ? isApparent ;

  const CardCollection({Key? key, this.isApparent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 30, right: 20),
      child: Container(
        decoration: BoxDecoration(
          color: isApparent!? Color(0xFFCDCDCD).withOpacity(.100): Color(0xFFFFFFFF).withOpacity(.08),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Color(0xFFFFFFFF)),
        ),
        height: 150,
        width: 400,
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            isApparent!
                ? ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    child: Image(
                      image: AssetImage('assets/images/image 113.png'),
                      width: 132,
                      height: 100,
                      fit: BoxFit.cover,
                    ))
                : Padding(padding: EdgeInsets.all(2)),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Radis Rosbery',
                        textScaleFactor: 1.5,
                        style: Theme.of(context).textTheme.headline1!.merge(
                            TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300))),
                  ),

                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Saskehh Rio',
                        style: Theme.of(context).textTheme.headline1!.merge(
                            TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0,20ETH',
                        style: Theme.of(context).textTheme.headline1!.merge(
                            TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                     isApparent !? Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF).withOpacity(.100),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(color: Color(0xFFFFFFFF)),
                          ),
                          height: 32,
                          width: 72,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/heartIcon.png'),
                                width: 16,
                                height: 16,
                                fit: BoxFit.cover,
                              ),
                              Text('230',
                                  textScaleFactor: 1.5,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .merge(TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11))),
                            ],
                          ),
                        ),
                      ):Padding(padding: EdgeInsets.all(2)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
