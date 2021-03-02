part of 'pages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.user}) : super(key: key);

  final user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _outputController = "";

  Future _scan() async {
    await Permission.camera.request();
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      setState(() {
        _outputController = barcode;
      });
      showresultscan(context, _outputController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: white,
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: (BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)))),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.30,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image:
                                              AssetImage('asset/icon_qr.png'))),
                                ),
                                Container(
                                  height: 40,
                                  margin: EdgeInsets.only(left: 15),
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BlocBuilder<UserBloc, UserState>(
                                        builder: (_, userState) =>
                                            (userState is UserLoaded)
                                                ? Text(userState.user.name)
                                                : SizedBox(),
                                      ),

                                      // Text(
                                      //   'Aditya',
                                      //   style: blackTextFont.copyWith(
                                      //       color: Colors.black, fontSize: 18),
                                      //),
                                      Text(
                                        'ID 112211',
                                        style: blackTextFont.copyWith(
                                            color: Colors.black, fontSize: 13),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Presensi Hari ini :',
                                            style: purpleTextFont.copyWith(
                                                fontSize: 14),
                                          ),
                                        ),
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                (40),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(right: 5),
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          right: BorderSide(
                                                              width: 2,
                                                              color:
                                                                  mainColor))),
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.5 -
                                                      (40),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          child:
                                                              Text('Datang:')),
                                                      Container(
                                                          child: Text(
                                                              _outputController))
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.5 -
                                                      (40),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          child:
                                                              Text('Pulang:')),
                                                      Container(
                                                        child: Text('16:38:13'),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    height: 30,
                                    width: 130,
                                    margin: EdgeInsets.only(top: 10),
                                    child: RaisedButton(
                                        elevation: 0,
                                        color: buttonscan,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset('asset/icon_qr.png'),
                                            Container(
                                              child: Text(
                                                'ABSEN',
                                                style: editText.copyWith(
                                                    color: white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          _scan();
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                    height: 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            context.bloc<PageBloc>().add(GoToProfilPage());
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 60,
                                  child: Image.asset(
                                    'asset/edit_profil.png',
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  child: Text('Edit Profil',
                                      style: blackTextFont.copyWith(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            context.bloc<PageBloc>().add(GoToRiwayatPresensi());
                          },
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 60,
                                  child: Image.asset(
                                    'asset/riwayat_absensi.png',
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 100,
                                  child: Text('Riwayat Presensi',
                                      textAlign: TextAlign.center,
                                      style: blackTextFont.copyWith(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
