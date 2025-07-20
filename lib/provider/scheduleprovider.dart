import 'package:flutter/material.dart';
import '../model/schedulemodel.dart';

class ScheduleProvider with ChangeNotifier{
  final List<ScheduleModel> _schedulemodel = [];

  List<ScheduleModel> get schedulemodel => _schedulemodel;


  void addShedule(String title, 
  String subtitle,
  String desc ){
    _schedulemodel.add(ScheduleModel(
  title: title, 
  subtitle: subtitle, 
  desc: desc));
  }


  void toggleSchedule(int index){
    _schedulemodel[index].toggleDone();
    notifyListeners();
  }


void removeSchedule(int index){
  _schedulemodel.removeAt(index);
  notifyListeners();
}
}