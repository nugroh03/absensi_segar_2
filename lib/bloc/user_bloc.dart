import 'dart:async';
import 'dart:math';

import 'package:absensi_segar/model/models.dart';
import 'package:absensi_segar/service/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      AuthUser user = await User.getUser(event.id);
      yield UserLoaded(user);
    } else if (event is SingOut) {
      yield UserInitial();
    }
  }
}
