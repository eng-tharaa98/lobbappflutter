import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;

  CustomAppBar({ this.title});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20,top: 30),
              child: const Image(image: AssetImage('assets/images/menu.png'),fit: BoxFit.cover,width: 24,height: 21,)),
          Container(
             // color: Color(0xFFFFFFFF).withOpacity(.18),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(right: 20,top: 30),
              child: Container( color: Color(0xFFFFFFFF).withOpacity(.18),
                  padding: EdgeInsets.all(2),
                  child: Image(image: AssetImage('assets/images/search.png'),fit: BoxFit.cover))),
        ],
      ),
    );
  }
}
