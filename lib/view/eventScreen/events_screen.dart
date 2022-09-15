import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../model/component/components.dart';
import '../newsScreen/news_layout.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.deepOrange,
            size: 30,
          ),
          onPressed: () {
            popTo(context, NavLayout());
          },
        ),
        title: Text(
          "Events",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              TableCalendar(
                calendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
                  tableBorder: TableBorder.all(
                    color: Colors.black12,
                  ),
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                ),

                rowHeight: height / 6.4,
                //daysOfWeekHeight: height/6,
                focusedDay: DateTime.now(),
                firstDay: DateTime(1900),
                lastDay: DateTime(2050),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
