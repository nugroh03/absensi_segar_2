part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthUser user;

  final notlp = TextEditingController();

  final password = TextEditingController();

  @override
  void initState() {
    notlp.text = '';
    password.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _alert(title, message) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(message),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return WillPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToHomePage());
      },
      child: SafeArea(
        child: Scaffold(
          /*appBar: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.3,
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'asset/logo tokosegar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),*/
          body: Container(
            child: ListView(children: <Widget>[
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'asset/logo tokosegar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MASUK',
                          style: purpleTextFont.copyWith(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text('Masukkan data anda dengan benar',
                            style: greyTextFont.copyWith(
                              fontSize: 15,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('USER NAMA',
                                    style: greyTextFont.copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Container(
                                    height: 35,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: TextFormField(
                                      controller: notlp,
                                      decoration: InputDecoration(
                                          hintStyle: greyTextFont.copyWith(
                                              fontSize: 13),
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
                                          hintText: 'Masukkan Username',
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(width: 1))),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('PASSWORD',
                                    style: greyTextFont.copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Container(
                                    height: 35,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    child: TextFormField(
                                      controller: password,
                                      decoration: InputDecoration(
                                          suffixIcon:
                                              Image.asset('asset/password.png'),
                                          hintStyle: greyTextFont.copyWith(
                                              fontSize: 13),
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
                                          hintText: 'Password',
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(width: 1))),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Text(
                        'Lupa Password?',
                        style: editText.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.75,
                    margin: EdgeInsets.only(top: 40, bottom: 20),
                    child: RaisedButton(
                      elevation: 0,
                      color: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'MASUK',
                        style: editText.copyWith(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        AuthUser.login(notlp.text, password.text)
                            .then((result) {
                          user = result;
                          print(user.toString());

                          if (user.id != null) {
                            context.bloc<PageBloc>().add(GoToHomePage());
                          } else {
                            _alert('Info', 'Login Gagal!');
                          }
                        });

                        /*final user = fetchUser();
                        user.then((result) {
                          if (result.user_id != null) {
                            print(result.toString());
                            context.bloc<PageBloc>().add(GoToHomePage());
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           HomeMember(result)),
                            // );
                          } else {
                            _alert('Info', 'Login Gagal!');
                          }
                        });*/
                      },
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(bottom: 0),
                    child: Image.asset(
                      'asset/login_image.png',
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
