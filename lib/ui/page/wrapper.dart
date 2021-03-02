part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //UserBloc userBloc = BlocProvider.of<UserBloc>(context);

    //userBloc.add(LoadUser());

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnHomePage
            ? HomePage()
            : pageState is OnRiwayatPresensi
                ? RiwayatPresensi()
                : pageState is OnProfilPage
                    ? ProfilPage()
                    : pageState is OnEditProfilPage
                        ? EditProfilPage()
                        : LoginPage()));
  }
}
