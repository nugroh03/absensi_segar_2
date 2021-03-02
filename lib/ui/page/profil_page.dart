part of 'pages.dart';

class ProfilPage extends StatefulWidget {
  ProfilPage({Key key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToHomePage());
      },
      child: SafeArea(
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
                margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: white,
                              ),
                              onPressed: () {
                                context.bloc<PageBloc>().add(GoToHomePage());
                              },
                            ),
                          ),
                          Container(
                            child: Text(
                              'Profil',
                              style: editText.copyWith(
                                  color: white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                                            image: AssetImage(
                                                'asset/icon_qr.png'))),
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
                                        Text(
                                          'Aditya',
                                          style: blackTextFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          'ID 112211',
                                          style: blackTextFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  FlatButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      context
                                          .bloc<PageBloc>()
                                          .add(GoToEditProfilPage());
                                    },
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Image.asset(
                                                  'asset/ubah_akun.png'),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 4,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Text('Ubah Akun',
                                                  style: blackTextFont.copyWith(
                                                      fontSize: 15)),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 15,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  FlatButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      showDialogLogout(context);
                                    },
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Image.asset(
                                                  'asset/logout_icon.png'),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 4,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Text('Keluar',
                                                  style: blackTextFont.copyWith(
                                                      fontSize: 15)),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 15,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
