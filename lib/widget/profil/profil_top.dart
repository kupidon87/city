import '../../import.dart';

class ProffilTop extends StatefulWidget {
  @override
  _ProffilTopState createState() => _ProffilTopState();
}
class _ProffilTopState extends State<ProffilTop>{


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        height: size.height * 0.45, //высота логотипа и профеля.
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fon.jpg'),
            fit: BoxFit.cover,
          ),

        ),
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 36,
            ),

            CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('images/nadymlifelogo.jpg'),
            ),

            SizedBox(
              height: 12,
            ),

            Text(
              'Тут будет Email/Ф.О.' ,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            SizedBox(
              height: 4,
            ),

            ///информация о пользователе
            GestureDetector(
                child: Text(pinfo,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(context, PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (BuildContext context, _, __) => PInfo(),
                  ),
                  );
                }
            ),

            ///выход
            FlatButton.icon(
                onPressed: (){
                  AuthService().logOut();
                },
                icon: Icon(
                    Icons.exit_to_app
                ),
                label: Text(exit)),

            ///пустое пространство для отстыпов
            Expanded(
              child: Container(),
            ),

            ///Выводим количество друзей фото и видео
            Container(
              height: 64,
              color: Colors.black.withOpacity(0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[


                  Expanded(
                    child: Container(),
                  ),

                  Container(
                    width: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text(
                          'Друзья',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),


                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          '2307', //Количество
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text(
                          photo,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          '2307', //Количество
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                      ],
                    ),
                  ),

                  Container(
                    width: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Text(
                          video,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          '2307', //Количество
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                      ],
                    ),
                  ),


                  Expanded(
                    child: Container(),
                  ),

                  Divider(
                    color: Colors.grey[400],
                  ),



                ],
              ),
            ),



          ],
        ),
      ),
    );
  }

}