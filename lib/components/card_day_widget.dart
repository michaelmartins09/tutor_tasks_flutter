import 'package:flutter/material.dart';

class CardDayWidget extends StatelessWidget {
  final String weekDay;
  final String day;
  final bool isCurrent;

  CardDayWidget({this.weekDay, this.day, this.isCurrent = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: isCurrent? Theme.of(context).primaryColor : Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(weekDay??'', style: TextStyle(
            color: isCurrent? Colors.white : Colors.grey,
            fontSize: 16
          )),
          Text(day??'', style: TextStyle(
            color: isCurrent? Colors.white : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )),
        ],
      ),
    );
  }
}
