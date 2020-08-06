import '../../import.dart';

class ProfilPhoto extends StatefulWidget{
  @override
  _ProfilPhotoState createState() => _ProfilPhotoState();
}

class _ProfilPhotoState extends State<ProfilPhoto>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              padding: EdgeInsets.only(top: 5, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Все Фотографии ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text(
                    '20',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                    'Фотографии находяться в разработке но скоро будут для примера!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),

          ],
        ),

      ),

    );
  }
}

///https://cdn.everypony.ru/storage/01/98/82/2015/10/15/01101d6ba6.png