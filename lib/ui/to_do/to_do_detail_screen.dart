import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/to_do_detail_provider.dart';
import 'package:gully_network_task/ui/to_do/event_timing.dart';
import 'package:gully_network_task/ui/to_do/pop_up_menu_button.dart';
import 'package:gully_network_task/util/colors.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:gully_network_task/widget/table_calendar/shared/utils.dart';
import 'package:gully_network_task/widget/table_calendar/table_calendar.dart';
import 'package:provider/provider.dart';

class ToDoDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final toDoDetailProvider = Provider.of<ToDoDetailProvider>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: hambergerColor),
        backgroundColor: Colors.white,
        title: Text(
          'To-do',
          style: textStyleBack14,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(' Jun 29'), PopUpMenuButtonWidget()],
            ),
            const SizedBox(
              height: 15,
            ),
            Selector<ToDoDetailProvider, DateTime>(
              builder: (context, data, child) {
                return TableCalendar(
                  headerVisible: false,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: toDoDetailProvider.selectedDate,
                  calendarFormat: CalendarFormat.week,
                  selectedDayPredicate: (day) =>
                      isSameDay(toDoDetailProvider.selectedDate, day),
                  onDaySelected: (selected, focused) {
                    toDoDetailProvider.updateSelectedDate(selected);
                  },
                );
              },
              selector: (buildContext, provider) => provider.selectedDate,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext ctxt, int index) =>
                        EventTimingWidget(
                            time: '${index}:00 PM',
                            title: 'test tile',
                            hour: '${index}',
                            checkStatus:
                                index == toDoDetailProvider.selectedIndex,
                            backgroundColor: index % 2 == 0
                                ? primaryColor
                                : sktechEditColor)))
          ],
        ),
      ),
    );
  }
}
