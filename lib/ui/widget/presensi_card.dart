part of 'widgets.dart';

class PresensiCard extends StatelessWidget {
  final UserModel users;

  PresensiCard(this.users);

  @override
  Widget build(BuildContext context) {
    print('ini users');
    print(users.toString());
    print('ini name');
    print(users.name.toString());

    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                users.name,
                style: blackTextFont.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Datang :',
                        style: purpleTextFont,
                      ),
                      Text(
                        '',
                        style: purpleTextFont,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Pulang :',
                          style: purpleTextFont,
                        ),
                      ),
                      Container(
                        child: Text(
                          '',
                          style: purpleTextFont,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
