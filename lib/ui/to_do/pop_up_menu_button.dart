import 'package:flutter/material.dart';
import 'package:gully_network_task/provider/to_do_detail_provider.dart';
import 'package:gully_network_task/util/style.dart';
import 'package:provider/provider.dart';

class PopUpMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final toDoDetailProvider = Provider.of<ToDoDetailProvider>(context);
    return PopupMenuButton(
      onSelected: (String value) {
        debugPrint('selected value --- ${value}');
        toDoDetailProvider.updateSelectedFilterOption(value);
      },
      child: Image.asset('assets/filter.png'),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Today',
          child: Text('Today', style: textStyleBack14),
        ),
        const PopupMenuItem<String>(
          value: 'this week',
          child: Text(
            'This Week',
          ),
        ),
        const PopupMenuItem<String>(
          value: 'this month',
          child: Text('This Month'),
        ),
        PopupMenuItem<String>(
          value: 'this month',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('custom dates'),
              const SizedBox(
                height: 10,
              ),
              Text('From'),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'dd-mm-yyyy',
                      style: textStyle8Grey,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.grey,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'this month',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text('To'),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'dd-mm-yyyy',
                      style: textStyle8Grey,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.grey,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
