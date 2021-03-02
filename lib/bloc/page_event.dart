part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToHomePage extends PageEvent {
  // final UserModel user;

  //GoToHomePage(this.user);
  @override
  List<Object> get props => [];
}

class GoToRiwayatPresensi extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToProfilPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToEditProfilPage extends PageEvent {
  @override
  List<Object> get props => [];
}
