

import '../import.dart';

class Profill extends StatefulWidget with NavigationStates {
  @override
  _ProfillState createState() => _ProfillState();

}

class _ProfillState extends State<Profill>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[


              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

//потолок или верхний контейнер с иконкой и именем и фамилей
                    ProffilTop(),
//конец потолка

//                  Иконное меню
                    Materialbar(),


//конец иконого меню


//                  Text(
//                    "Друзья",
//                    style: TextStyle(
//                      color: Colors.black87,
//                      fontSize: 16,
//                      fontWeight: FontWeight.bold,
//                    ),
//                    textAlign: TextAlign.center,
//                  ),
//
//                  Container(
//                    height: 70,
//                    child: ListView.builder(
//                        padding: EdgeInsets.all(8),
//                        physics: BouncingScrollPhysics(),
//                        scrollDirection: Axis.horizontal,
//                        itemCount: 9,
//                        itemBuilder: (BuildContext context, int index) {
//                          return Container(
//                              height: 56,
//                              width: 56,
//                              margin: EdgeInsets.symmetric(horizontal: 4),
//                              decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.circular(30),
//                                  image: DecorationImage(
//                                    fit: BoxFit.cover,
//                                    image: AssetImage('images/friends/photo_'+index.toString()+'.jpg'),
//                                  )
//                              )
//                          );
//                        }
//                    ),
//                  ),
//
//                  SizedBox(
//                    height: 8,
//                  ),
//
//                  Text(
//                    "Фото",
//                    style: TextStyle(
//                      color: Colors.black87,
//                      fontSize: 16,
//                      fontWeight: FontWeight.bold,
//                    ),
//                    textAlign: TextAlign.center,
//                  ),
//
//
//
//
//                  Container(
//                    height: size.height * 0.60 - 56,
//                    padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24),
//                    child: GridView.count(
//                        crossAxisCount: 3,
//                        crossAxisSpacing: 8,
//                        mainAxisSpacing: 8,
//                      physics: BouncingScrollPhysics(),
//                      children: List.generate(12, (index) {
//                        return Container(
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(10),
//                            ),
//                            image: DecorationImage(
//                              image: AssetImage('images/photo/photo_'+index.toString()+'.jpg'),
//                              fit: BoxFit.cover,
//                            ),
//                          ),
//                        );
//                      }),
//                    ),
//                  ),

//                  Positioned(
//                      height:16,
//
//
//                    child: GestureDetector(
//                      onTap: (){
//                        },
//
//                      child: Icon(
//                        Icons.keyboard_arrow_left,
//                        color: Colors.white,
//                        size: 32,
//                      ),
//                    ),
//
//                  ),

                  ],
                ),
            ),
          ],

        ),
      ),
      );
  }

}


