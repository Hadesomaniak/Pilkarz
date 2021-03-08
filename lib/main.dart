
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
                  Icon(Icons.star),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.child_care),
                  Expanded(child: Text(
                    "06.11.1989",
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.star_border_rounded),
                  Expanded(child: Text(
                    "Toronto FC",
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.arrow_upward),
                  Expanded(child: Text(
                    "1,85 m",
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
          ],
        )
      )
    );
  }
}
