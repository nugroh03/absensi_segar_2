import 'dart:developer';

import 'package:absensi_segar/bloc/blocs.dart';
import 'package:absensi_segar/bloc/page_bloc.dart';
import 'package:absensi_segar/model/models.dart';
import 'package:absensi_segar/service/services.dart';
import 'package:absensi_segar/shared/shared.dart';
import 'package:absensi_segar/ui/widget/widgets.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:intl/intl.dart';

part 'login_page.dart';
part 'home_page.dart';
part 'wrapper.dart';
part 'riwayat_presensi.dart';
part 'profil_page.dart';
part 'editprofil_page.dart';
