part of 'pages.dart';

class RiwayatPresensi extends StatelessWidget {
  const RiwayatPresensi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToHomePage());
      },
      child: SafeArea(
          child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
              padding: EdgeInsets.only(left: 20),
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomLeft,
              color: mainColor,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.bloc<PageBloc>().add(GoToHomePage());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: white,
                    ),
                  ),
                  Container(
                    child: Text(
                      'RIWAYAT PRESENSIKU',
                      style: editText.copyWith(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height - 80,
          // child: BlocBuilder<UserBloc, UserState>(
          //   builder: (_, userState) {
          //     if (userState is UserLoaded) {
          //       List<UserModel> users = userState.user;
          //       print(userState.toString());
          //       print(users.toString());

          //       return ListView.builder(
          //           scrollDirection: Axis.vertical,
          //           itemCount: users.length,
          //           itemBuilder: (_, e) => PresensiCard(
          //                 users[e],
          //               ));
          //     } else {
          //       return SpinKitFadingCircle(
          //         color: mainColor,
          //         size: 50,
          //       );
          //     }
          //   },
          // ),
        ),
      )),
    );
  }
}
