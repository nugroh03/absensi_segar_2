part of 'widgets.dart';

showDialogFunc(
  context,
) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
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
                          'Sukses!',
                          style: blackTextFont.copyWith(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Password berhasil dirubah',
                          style: blackTextFont.copyWith(
                              fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
