import 'package:age/age.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  selectTodayData(BuildContext context);
  selectDOBDate(BuildContext context);
  calculateAge(DateTime today, DateTime birthDay);
  calculateNextBirthday(DateTime today, DateTime birthDay);
  nextbDay(DateTime today, DateTime birthDay);
}

class HomePageControllerImp extends HomePageController {
  AgeDuration ageDuration;
  AgeDuration nextBirthDate;
  int nextWeekDay;
  DateTime todayDate = DateTime.now();
  DateTime dOB = DateTime(2000, 01, 01);
  List months = [
    "months",
    "January",
    "Febuary",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "Novmber",
    "December"
  ];

  List weeks = [
    "weeks",
    "Sunday",
    "Mondy",
    "Tuesday",
    "Wedensday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  @override
  selectTodayData(context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: todayDate,
        firstDate: dOB,
        lastDate: DateTime(2100));

    if (picked != null && picked != todayDate) {
      todayDate = picked;
      ageDuration = calculateAge(todayDate, dOB);
      nextBirthDate = calculateNextBirthday(todayDate, dOB);
      nextWeekDay = nextbDay(todayDate, dOB);
      update();
    }
  }

  @override
  selectDOBDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: dOB,
        firstDate: DateTime(1900),
        lastDate: todayDate);

    if (picked != null && picked != todayDate) {
      dOB = picked;
      ageDuration = calculateAge(todayDate, dOB);
      nextBirthDate = calculateNextBirthday(todayDate, dOB);
      nextWeekDay = nextbDay(todayDate, dOB);

      update();
    }
  }

  @override
  void onInit() {
    ageDuration = calculateAge(todayDate, dOB);
    nextBirthDate = calculateNextBirthday(todayDate, dOB);
    nextWeekDay = nextbDay(todayDate, dOB);
    update();
    super.onInit();
  }

  // Calculate Age OF Person
  @override
  calculateAge(DateTime today, DateTime birthDay) {
    AgeDuration age;
    age = Age.dateDifference(
      fromDate: birthDay,
      toDate: today,
    );
    update();
    return age;
  }

  @override
  calculateNextBirthday(today, birthDay) {
    DateTime temp = DateTime(today.year, birthDay.month, birthDay.day);
    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    AgeDuration nextBirthdayDuration =
        Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);
    update();
    return nextBirthdayDuration;
  }

  @override
  nextbDay(today, birthDay) {
    DateTime temp = DateTime(today.year, birthDay.month, birthDay.day);
    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    update();
    return nextBirthdayDate.weekday;
  }
}
