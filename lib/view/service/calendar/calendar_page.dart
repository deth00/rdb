import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat calendarFormat = CalendarFormat.month;
  CalendarDatePicker? calendarDatePicker;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Text(
          'calendar'.tr,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: TableCalendar(
          locale: 'lo_LO',
          calendarFormat: calendarFormat,
          headerStyle: const HeaderStyle(formatButtonVisible: false),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
