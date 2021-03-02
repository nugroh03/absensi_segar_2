part of 'models.dart';

class Presensi extends Equatable {
  final String date;
  final String datang;
  final String pulang;

  Presensi({@required this.date, @required this.datang, @required this.pulang});

  @override
  List<Object> get props => [date, datang, pulang];
}

List<Presensi> dummyPresensi = [
  Presensi(date: "7 Februari 2021", datang: "07:25:10", pulang: "16:00:05"),
  Presensi(date: "8 February 2021", datang: "07:25:10", pulang: "16:00:05"),
  Presensi(date: "9 February 2021", datang: "07:25:10", pulang: "16:00:05"),
  Presensi(date: "10 February 2021", datang: "07:25:10", pulang: "16:00:05"),
];
