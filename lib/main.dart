
import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    home:profil(),
    ),
  );
}


class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://cdn.ussoccer.com/-/media/project/ussf/players/mnt/jozy-altidore/altidore2-sitecoredata.ashx?h=580&la=en-US&w=580&rev=4c1254db1fb149bc930bbbbef0911ee8&hash=5F72F12CBA67B397F421ACC716B5B722"
              )
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Jozy Altidore",
                  style: TextStyle(fontSize: 22),
                )
            ),
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
                  Expanded(child: Text(
                    "Moja ocena:",
                    ),
                  ),
            StarsRow(1),
                ],

              ),
            ),
            white_box(Icons.child_care,"06.11.1989"),
            white_box(Icons.star_border_rounded, "Toronto FC"),
            white_box(Icons.arrow_upward,"1,85 m"),
          ],
        )
      )
    );

  }
  }
class StarsRow extends StatelessWidget {
  final int rating;

  const StarsRow(this.rating, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for(int i = 0; i < 3; i++)
    {
      if( i < rating){
        stars.add(Icon(Icons.star));
      }
      else
      {
stars.add(Icon(Icons.star_border));
}

}
return Row(
children:
stars
);
}
}


class white_box extends StatelessWidget {
  final IconData icon;
  final String text;
  const white_box(this.icon,this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> box = [];
     return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(icon),
            Expanded(child: Text(
              (text),
              textAlign: TextAlign.center,
            ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      );
    box.add(Icon(icon));
    box.add(Text(text));
    return Container(
      child: Row(
        children: box,
      ),
    );
  }
}


