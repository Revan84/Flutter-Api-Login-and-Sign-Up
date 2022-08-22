import 'package:intl/intl.dart';

class CalendarData {
  final String name;

  final DateTime date;
  final String position;
  final String rating;

  String getDate() {
    final formatter = DateFormat('kk:mm');

    return formatter.format(date);
  }

  CalendarData({
    required this.name,
    required this.date,
    required this.position,
    required this.rating,
  });
}

final List<CalendarData> calendarData = [
  CalendarData(
    name: 'Melvin Bruhat',
    date: DateTime.now().add(Duration(days: -16, hours: 5)),
    position: "Récolteur",
    rating: '₽',
  ),
  CalendarData(
    name: 'John Doe',
    date: DateTime.now().add(Duration(days: -5, hours: 8)),
    position: "Collaborateur",
    rating: '₽',
  ),
  CalendarData(
    name: 'Joy Barker',
    date: DateTime.now().add(Duration(days: -10, hours: 3)),
    position: "Producteur",
    rating: '\$',
  ),
  CalendarData(
    name: 'Kate Hartley',
    date: DateTime.now().add(Duration(days: 6, hours: 6)),
    position: "Récolteur",
    rating: '\$',
  ),
  CalendarData(
    name: 'Fletcher Robson',
    date: DateTime.now().add(Duration(days: -18, hours: 9)),
    position: "Collaborateur",
    rating: '\$',
  ),
  CalendarData(
    name: 'Aldrich Mason',
    date: DateTime.now().add(Duration(days: -12, hours: 2)),
    position: "Récolteur",
    rating: '\$',
  ),
  CalendarData(
    name: 'Phyllis Leonard',
    date: DateTime.now().add(Duration(days: -8, hours: 4)),
    position: "Producteur",
    rating: '\$',
  ),
  CalendarData(
    name: 'Ken Rehbein',
    date: DateTime.now().add(Duration(days: -3, hours: 6)),
    position: "Producteur",
    rating: '₽',
  ),
  CalendarData(
    name: 'Sydney Blake',
    date: DateTime.now().add(Duration(days: -2, hours: 6)),
    position: "Récolteur",
    rating: '₽',
  ),
  CalendarData(
    name: 'Megan Salazar',
    date: DateTime.now().add(Duration(days: -2, hours: 7)),
    position: "Récolteur",
    rating: '₽',
  ),
  CalendarData(
    name: 'Celeste Pena',
    date: DateTime.now().add(Duration(days: -14, hours: 5)),
    position: "Récolteur",
    rating: '₽',
  ),
];
