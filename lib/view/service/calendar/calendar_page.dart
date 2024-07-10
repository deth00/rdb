import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/base/mydialog.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:rdb_gro_app/utils/app_colors.dart';
import 'package:rdb_gro_app/utils/app_image.dart';
import 'package:rdb_gro_app/utils/dimensions.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  CalendarDatePicker? calendarDatePicker;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimensions.height55,
              width: double.infinity,
              color: AppColors.mainColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.width10, right: Dimensions.width10),
                      child: Image.asset(
                        AppImage.back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: Dimensions.width30 + Dimensions.width20,
                  // ),
                  Text(
                    'ປະຕິທຶນ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: Dimensions.width30 + Dimensions.width10,
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 2.0,
              child: TableCalendar(
                locale: 'lo_LO',
                calendarFormat: _calendarFormat,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                onDaySelected: _onDaySelected,
                onFormatChanged: _onFormatChanged,
                headerVisible: true,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: Dimensions.font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
                    weekendStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius30)),
                  selectedDecoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(Dimensions.radius30)),
                  defaultDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                  ),
                ),
              ),
            ),
            Image.asset(AppImage.logoRDB)
          ],
        ),
      ),
    );
  }

  _onDaySelected(selectedDay, focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  _onFormatChanged(format) {
    if (_calendarFormat != format) {
      setState(() => _calendarFormat = format);
    }
  }
}
