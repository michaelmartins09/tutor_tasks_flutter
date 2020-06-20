import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:tasks_tutor_flutter/components/card_day_widget.dart';
import 'package:tasks_tutor_flutter/components/card_tasks_widget.dart';
import 'package:tasks_tutor_flutter/model/task_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TaskModel> _listTasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        leading: IconButton(
          onPressed: () { },
          icon: Icon(FeatherIcons.menu),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){ },
            icon: Icon(FeatherIcons.user),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 180,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Welcome Yury", style: Theme.of(context).textTheme.headline5),
                SizedBox(height: 5),
                Text("Schedule", style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CardDayWidget(isCurrent: true, weekDay: "mo", day: "10"),
                    CardDayWidget(weekDay: "mo", day: "10"),
                    CardDayWidget(weekDay: "mo", day: "10"),
                    CardDayWidget(weekDay: "mo", day: "10"),
                    CardDayWidget(weekDay: "mo", day: "10"),
                    Icon(FeatherIcons.chevronsRight, color: Theme.of(context).primaryColor)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Daily Tasks", style: Theme.of(context).textTheme.headline4),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: _listTasks.map((item) => CardTaskWidget(
                    hour: item.hour,
                    title: item.title,
                    description: item.description,
                  )).toList(),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _listTasks.add(
              TaskModel(hour: "10:00", title: "Estudar", description: "Sem procastinar"),
            );
          });
        },
        child: Icon(FeatherIcons.plus),
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
