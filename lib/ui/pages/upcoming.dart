import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class UpComingPage extends StatefulWidget {
  const UpComingPage({super.key});

  @override
  State<UpComingPage> createState() => _UpComingPageState();
}

class _UpComingPageState extends State<UpComingPage> {
  late DateTime _focusedDay;
  late DateTime _firstDay;
  late DateTime _lastDay;
  late DateTime _selectedDay;
  late CalendarFormat _calendarFormat;
  late List<Event> _selectedEvents;

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _focusedDay = focusedDay;
        _selectedDay = selectedDay;
        _selectedEvents = _getEventsForDay(selectedDay);
      });
    }
  }

  void _onFormatChanged(CalendarFormat format) {
    setState(() {
      _calendarFormat = format;
    });
  }

  DateTime get focusedDay => _focusedDay;

  /*Map<DateTime, List<Event>> eventSource = {
    _focusedDay: <Event>[
      const Event('MTH300'),
      const Event('INF305'),
      const Event('Programmation Distribuée')
    ],
  };

   LinkedHashMap<DateTime, List<Event>> events = LinkedHashMap(
    equals: isSameDay,
  )..addAll(eventSource);*/

  List<Event> _getEventsForDay(DateTime day) => /*events[day] ??*/ [];

  @override
  void initState() {
    super.initState();

    _focusedDay = DateTime.now();
    _firstDay = DateTime.now().subtract(const Duration(days: 1000));
    _lastDay = DateTime.now().add(const Duration(days: 1000));
    _selectedDay = DateTime.now();
    _calendarFormat = CalendarFormat.month;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: AppColors.trueWhiteColor,
        child: TableCalendar(
          locale: 'fr_FR',
          rowHeight: 43,
          calendarFormat: _calendarFormat,
          onFormatChanged: _onFormatChanged,
          selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
          availableGestures: AvailableGestures.all,
          firstDay: _firstDay,
          lastDay: _lastDay,
          focusedDay: _focusedDay,
          onDaySelected: _onDaySelected,
          calendarStyle: const CalendarStyle(
            weekendTextStyle: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
          eventLoader: (day) => _getEventsForDay(day),
        ),
      ),
      _focusedDay == _selectedDay
          ? const Text('Cours du jour')
          : const Text('Cours à venir')
    ]);
  }
}

class Event {
  final String title;

  const Event(this.title);
}
