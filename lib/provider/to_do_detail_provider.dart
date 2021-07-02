import 'package:flutter/material.dart';
import 'package:gully_network_task/util/style.dart';

class ToDoDetailProvider extends ChangeNotifier {
  DateTime _selectedDate = DateTime.now();

  int _selectedIndex = 4;

  String _filterOption = 'today';

  get selectedDate => _selectedDate;

  get selectedIndex => _selectedIndex;

  get filterOptions => _filterOption;

  void updateSelectedDate(DateTime selectedDate) {
    _selectedDate = selectedDate;
    notifyListeners();
  }

  void updateSelectedFilterOption(String selectedOption) {
    _filterOption = selectedOption;
  }

  TextStyle isSelectedOption(String option) {
    if (option.toLowerCase() == _filterOption.toLowerCase())
      return textStyleBack12;
    else
      return textStylePrimary12;
  }
}
