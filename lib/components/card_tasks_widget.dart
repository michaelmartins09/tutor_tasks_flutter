import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CardTaskWidget extends StatelessWidget {
  final String title;
  final String description;
  final String hour;

  const CardTaskWidget({ this.title, this.description, this.hour });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(hour),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            children: <Widget>[
              Divider(),
              Container(
                height: 85,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          Text(description, style: TextStyle(fontSize: 16)),
                        ]
                      ),
                    ),
                    Icon(FeatherIcons.moreHorizontal)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
