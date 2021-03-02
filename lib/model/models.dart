import 'package:absensi_segar/service/services.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'riwayat_presensi.dart';

part 'user_model.dart';


class Responses {
  String success;
  String message;
  String data;
  Responses(Map<String, dynamic> item) {
    success = item['success'];
    message = item['message'];
    data = item['data'];
  }
}
