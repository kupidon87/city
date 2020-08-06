import 'dart:ui';

import '../../import.dart';


class LifeNews extends StatefulWidget{
  @override
  _LifeNewsState createState() => _LifeNewsState();
}


class _LifeNewsState extends State<LifeNews>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            ListView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10),
                            bottom: Radius.circular(10)
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
//                           onTap: cancelTurn,
                              child: Align(
                                child: Icon(
                                    Icons.close
                                ),
                                widthFactor: 2,
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                padding: EdgeInsets.only(top: 13, left: 95),
                                child: Text(
                                  'Поле ввода',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),

                              ),
                            ),
                            InkWell(
//                           onTap: confirmTurn,
                              child: Align(
                                child: Icon(
                                  Icons.send,
                                ),
                                widthFactor: 2,
                              ),
                            ),

                          ],
                        ),

                      ),


                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Container(
                    height: 202,
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Container(
                            child: Card(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Flexible(
                                    child: Stack(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[

                                            Container(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[

                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Stack(
                                                      children: <Widget>[

                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(40),
                                                          child: CachedNetworkImage(
                                                            imageUrl: 'https://avatars.mds.yandex.net/get-vh/1496358/5016224721268348117-worGoMgJoJuTyjcIZm3gzQ-1556390012/936x524',
                                                            width: 50,
                                                            height: 50,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )

                                                      ],
                                                    ),
                                                  )

                                                ],
                                              ),
                                            ),

                                          ],
                                        ),

                                        SingleChildScrollView(
                                          child: Container(
//
                                            child: Flexible(
                                              child: Stack(
                                                children: <Widget>[

                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 15,
                                                        left: 70,
                                                      ),
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisSize: MainAxisSize.min,
                                                            children: <Widget>[
                                                              Row(
                                                                children: <Widget>[
                                                                  Flexible(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.only(right: 18.0),
                                                                      child: Text(
                                                                        'И.Ф. Автора',
                                                                        style: TextStyle(
                                                                          fontSize: 16,
                                                                          fontWeight: FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                              Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: <Widget>[
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(top: 6.0),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        Container(
                                                                          child: Text(
                                                                            '28 июл в 21:14',
                                                                            style: TextStyle(
                                                                              fontSize: 11,
                                                                              color: Colors.black38,
                                                                            ),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              )

                                                            ],
                                                          )
                                                        ],
                                                      )
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 15,
                                                    ),
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: <Widget>[
                                                            Row(
                                                              children: <Widget>[
                                                                Flexible(
                                                                  child: Padding(
                                                                    padding: EdgeInsets.only(left: 350.0),
                                                                    child: Container(
                                                                      child: Icon(Icons.linear_scale),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),

                                                            Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: <Widget>[
                                                                Padding(
                                                                  padding: const EdgeInsets.only(left: 10),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    children: <Widget>[
                                                                      Container(
                                                                        height: 145,
                                                                      ),
                                                                      Flexible(
                                                                        child: Text('Всем привет, я являюсь разработчиком данного приложения надеюсь данный тест появиться в нужно месте и с нужной высатой =). Так же скоро у нас появятся лайки/дизлайк коментарии и репосты на деюсь на ваше понимание.'),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 150,
                                                    ),
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: <Widget>[

                                                            Row(
                                                              children: <Widget>[
                                                                Flexible(
                                                                  child: Padding(
                                                                    padding: EdgeInsets.only(left: 20.0),
                                                                    child: Container(
                                                                      child: Icon(Icons.favorite_border),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),


                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),


                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),








                                ],
                              ),
                            ),
                          ),

                      ],
                    ),
                  ),
                ),



              ],
            )






          ],
        ),
      ),
    );
  }
}