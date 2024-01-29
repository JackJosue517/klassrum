import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class UpComingPage extends StatefulWidget {
  const UpComingPage({super.key});

  @override
  State<UpComingPage> createState() => _UpComingPageState();
}

class _UpComingPageState extends State<UpComingPage> {
  DateTime today = DatTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState((){
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          locale: 'fr_FR',
          rowHeight: 43,
          selectedDayPredicate: (day) => isSameDay(day, today),
          availableGestures: AvailableGestures.all,
          firstDay: DateTime.utc(2020, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: today,
          onDaySelected: _onDaySelected,
        )
      ]
    )
  }
}
