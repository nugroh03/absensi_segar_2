import 'package:absensi_segar/ui/page/pages.dart';
import 'package:flutter/material.dart';
import 'package:absensi_segar/bloc/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PageBloc>(create: (_) => PageBloc()),
        BlocProvider<UserBloc>(create: (_) => UserBloc()..add(LoadUser(''))),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper()),
    );
  }
}
