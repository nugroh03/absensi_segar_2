part of 'pages.dart';

class EditProfilPage extends StatefulWidget {
  EditProfilPage({Key key}) : super(key: key);

  @override
  _EditProfilPageState createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToProfilPage());
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: white,
          body: Stack(
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
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 30, right: 30),
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
                                    context
                                        .bloc<PageBloc>()
                                        .add(GoToProfilPage());
                                  },
                                ),
                              ),
                              Container(
                                child: Text(
                                  'EditProfil',
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
                          height: MediaQuery.of(context).size.height * 0.75,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 95),
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            color: white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                              'asset/Icon.png',
                                              scale: 0.8,
                                            ),
                                            Text('CHANGE PHOTO',
                                                style: blackTextFont.copyWith(
                                                    fontSize: 12))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Nama',
                                                  style: greyTextFont.copyWith(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 7),
                                                child: Container(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.75,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        hintStyle: greyTextFont
                                                            .copyWith(
                                                                fontSize: 13),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        hintText: 'Nama',
                                                        border:
                                                            OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                        width:
                                                                            1))),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('USER NAMA',
                                                  style: greyTextFont.copyWith(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 7),
                                                child: Container(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.75,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        hintStyle: greyTextFont
                                                            .copyWith(
                                                                fontSize: 13),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        hintText: 'User Name',
                                                        border:
                                                            OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                        width:
                                                                            1))),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('PASSWORD',
                                                  style: greyTextFont.copyWith(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 7),
                                                child: Container(
                                                  height: 35,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.75,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        suffixIcon: Image.asset(
                                                            'asset/password.png'),
                                                        hintStyle: greyTextFont
                                                            .copyWith(
                                                                fontSize: 13),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        hintText: 'Password',
                                                        border:
                                                            OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                        width:
                                                                            1))),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        margin: EdgeInsets.only(
                                            top: 10, left: 95, right: 80),
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            color: white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                              'asset/Icon.png',
                                              scale: 0.8,
                                            ),
                                            Text('CHANGE PASSWORD',
                                                style: blackTextFont.copyWith(
                                                    fontSize: 12))
                                          ],
                                        ),
                                      ),
                                      FlatButton(
                                        onPressed: () {
                                          showDialogFunc(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          margin: EdgeInsets.only(
                                              top: 40, left: 30, right: 30),
                                          height: 30,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 1),
                                              color: mainColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4))),
                                          child: Text('SIMPAN',
                                              style: editText.copyWith(
                                                  color: white, fontSize: 15)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
