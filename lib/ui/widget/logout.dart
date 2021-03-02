part of 'widgets.dart';

showDialogLogout(
  context,
) {
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
                        'asset/logout2.png',
                      )),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Keluar?',
                          style: blackTextFont.copyWith(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Anda yakin akan keluar?',
                          style: blackTextFont.copyWith(
                              fontSize: 15, color: Colors.black),
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
                              "Keluar",
                              style: purpleTextFont.copyWith(
                                  color: white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: white,
                              border: Border.all(width: 1, color: mainColor),
                            ),
                            child: Text(
                              "Batal",
                              style: purpleTextFont.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
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
