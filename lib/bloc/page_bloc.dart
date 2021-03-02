import 'dart:async';
import 'package:absensi_segar/model/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageBloc() : super(OnInitialPage());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToLoginPage) {
      yield OnLoginPage();
    } else if (event is GoToHomePage) {
      yield OnHomePage();
    } else if (event is GoToRiwayatPresensi) {
      yield OnRiwayatPresensi();
    } else if (event is GoToProfilPage) {
      yield OnProfilPage();
    } else if (event is GoToEditProfilPage) {
      yield OnEditProfilPage();
    }
  }
}
