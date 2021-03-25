import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: NazwaKlasyStateful("Piłkarz"),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class NazwaKlasyStateful extends StatefulWidget {
  final String title;

  NazwaKlasyStateful(this.title);

  @override
  _NazwaKlasyStatefulState createState() => _NazwaKlasyStatefulState();
}

class _NazwaKlasyStatefulState extends State<NazwaKlasyStateful> {
  int number = 1;
  int number2 = 1;
  int number3 = 1;
  String photo =
      "https://cdn.ussoccer.com/-/media/project/ussf/players/mnt/jozy-altidore/altidore2-sitecoredata.ashx?h=580&la=en-US&w=580&rev=4c1254db1fb149bc930bbbbef0911ee8&hash=5F72F12CBA67B397F421ACC716B5B722";
  var primary = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: TextButton(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  child: CircleAvatar(
                      radius: 60, backgroundImage: NetworkImage(photo)),
                  onPressed: () {
                    setState(() {
                      if (number2 == 0) {
                        photo =
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/USMNT_vs._Trinidad_and_Tobago_%2848125005091%29_%28cropped%29.jpg/1200px-USMNT_vs._Trinidad_and_Tobago_%2848125005091%29_%28cropped%29.jpg";
                        number2++;
                      } else {
                        photo =
                            "https://cdn.ussoccer.com/-/media/project/ussf/players/mnt/jozy-altidore/altidore2-sitecoredata.ashx?h=580&la=en-US&w=580&rev=4c1254db1fb149bc930bbbbef0911ee8&hash=5F72F12CBA67B397F421ACC716B5B722";
                        number2 = 0;
                      }
                    });
                  }),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "Jozy Altidore",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Text(
                  "Reprezentant USA strzelał wiele goli w Holandii w barwach AZ, ale jego transfer do Premier League okazał się wielkim niewypałem. W Hull i Sunderlandzie rozegrał łącznie 70 meczów, w których strzelił... dwa gole. Wydawało się, że jest gwarancją goli, ale zupełnie rozczarował kibiców obu klubów. Obecnie gra w Toronto FC.",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Moja ocena:",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        child: StarsRow(number),
                        onPressed: () {
                          setState(() {
                            if (number == 3) {
                              number = 0;
                            }
                            number++;
                          });
                          ;
                        },
                      ),
                    )
                  ],
                ),
              ),
              white_box(
                  Icons.child_care, "06.11.1989", Icons.bolt, "12.06.2006"),
              white_box(Icons.star_border_rounded, "Toronto FC", Icons.star,
                  "AZ Alkmaar"),
              white_box(
                  Icons.arrow_upward, "1,85 m", Icons.line_weight, "79 kg"),
            ],
          )),
          onPressed: () {
            setState(() {
              if (number3 == 0) {
                primary = Colors.orange;
                number3++;
              } else {
                primary = Colors.red;
                number3 = 0;
              }
            });
          }),
    );
  }
}

class StarsRow extends StatefulWidget {
  final int rating;

  const StarsRow(
    this.rating, {
    Key key,
  }) : super(key: key);

  @override
  _StarsRowState createState() => _StarsRowState();
}

class _StarsRowState extends State<StarsRow> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for (int i = 0; i < 3; i++) {
      if (i < widget.rating) {
        stars.add(Icon(
          Icons.star,
          color: Colors.black,
        ));
      } else {
        stars.add(Icon(
          Icons.star_border,
          color: Colors.black,
        ));
      }
    }
    return Row(children: stars);
  }
}

class white_box extends StatefulWidget {
  final IconData icon;
  final String text;
  final IconData icon2;
  final String text2;

  const white_box(
    this.icon,
    this.text,
    this.icon2,
    this.text2, {
    Key key,
  }) : super(key: key);
  @override
  _white_boxState createState() => _white_boxState(
        this.icon,
        this.text,
      );
}

class _white_boxState extends State<white_box> {
  var curenticon;
  var curenttext;
  var number1 = 1;

  _white_boxState(this.curenticon, this.curenttext);
  @override
  Widget build(BuildContext context) {
    final List<Widget> box = [];
    return TextButton(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              curenticon,
              color: Colors.black,
            ),
            Expanded(
              child: Text(
                (curenttext),
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        setState(() {
          if (number1 == 0) {
            curenticon = widget.icon;
            curenttext = widget.text;
            number1++;
          } else {
            curenticon = widget.icon2;
            curenttext = widget.text2;
            number1 = 0;
          }
        });
      },
    );
  }
}
