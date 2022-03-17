import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class CalendarPageView extends StatelessWidget {
  CalendarPageView({Key? key}) : super(key: key);
  final calendarController = CleanCalendarController(
      rangeMode: false,
      minDate: DateTime.now().subtract(const Duration(days: 365)),
      maxDate: DateTime.now().add(const Duration(days: 365)),
      
      // onRangeSelected: (firstDate, secondDate) {},
      onDayTapped: (date) {},
      onPreviousMinDateTapped: (date) {},
      onAfterMaxDateTapped: (date) {},
      weekdayStart: DateTime.monday,
      initialDateSelected: DateTime.now(),
      endDateSelected: DateTime.now());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(

      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(

              height: getUniqueH(360),
              width: getUniqueW(370),

              child: ScrollableCleanCalendar(
                dayRadius: getUniqueW(25),
                monthTextStyle: getBoldStyle(fontSize: 24),
                daySelectedBackgroundColor: MyColors.green,
                calendarController: calendarController,
                layout: Layout.DEFAULT,
                calendarCrossAxisSpacing: 0,

                
              ),
            ),
            const Divider(
              color: MyColors.grey,
              thickness: 1,
            ),
            Padding(

                padding: EdgeInsets.symmetric(vertical: getUniqueH(15)),
                child: MyTextRegular(
                  text: "Bu erda sizning eslatmangiz bo'ladi",
                  size: 16,
                ))

          
          ],
        ),
      ),
    );
  }
}
