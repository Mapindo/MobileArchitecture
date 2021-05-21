import 'package:flutter/material.dart';

class DateDiff {
  final String date;
  final String dateDiff;
  DateTime firstDate;
  DateDiff({
    this.date,
    @required this.dateDiff,
  }) {
    firstDate = date != null
        ? DateTime.parse(date).toLocal()
        : DateTime.now().toLocal();
  }

  DateTime get _secondDate => DateTime.parse(dateDiff);

  Duration get _diff => firstDate.difference(_secondDate);

  String get since {
    if (_diff.inHours.toInt() < 1) {
      return '${_diff.inMinutes}m';
    } else if (_diff.inHours.toInt() < 1.toDay) {
      return '${_diff.inHours}h';
    } else if (_diff.inHours.toInt() < 7.toDay) {
      return '${_diff.inDays}d';
    } else if (_diff.inHours.toInt() < 30.toDay) {
      return '${_diff.inDays.toWeek}w';
    } else {
      return '${_diff.inDays.toMonth}ay';
    }
  }
}

extension TimeSwitch on num {
  int get toDay => this * 24;
  int get toWeek => this ~/ 7;
  int get toMonth => this ~/ 30;
}
