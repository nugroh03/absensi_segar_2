part of 'widgets.dart';

showresultscan(context, _outputController) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)), //this right here
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.all(20),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'asset/ceklist.png',
                      )),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'PRESENSI BERHASIL',
                          style: blackTextFont.copyWith(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Detail Presensi',
                          style: blackTextFont.copyWith(
                              fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nama',
                                style: blackTextFont.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Zamzam',
                                style: blackTextFont.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'NIK',
                                style: blackTextFont.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '1122233',
                                style: blackTextFont.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Waktu',
                                style: blackTextFont.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                _outputController,
                                style: blackTextFont.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: mainColor,
                            ),
                            child: Text(
                              "OK",
                              style: purpleTextFont.copyWith(
                                  color: white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
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
      });
}
