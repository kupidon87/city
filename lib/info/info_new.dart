import 'dart:math' as math;

import '../import.dart';


class InfoNew extends StatefulWidget with NavigationStates{

  @override
  _InfoNewState createState() => _InfoNewState();
}

class _InfoNewState extends State<InfoNew>{

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 39,
                        ),
                        Container(
                          height: 85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'images/nadymlife.png',
                              ),
                            ),
                          ),
                        ),

                        Divider(
                          height: 30,
                          thickness: 1,
                          color: Colors.black.withOpacity(0.3),
                          indent: 32,
                          endIndent: 32,
                        ),
                      ],
                    ),
                ),


                ListView(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[

                    Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 12,
                                left: 12),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '16:56',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(''),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                    left: 10,
                                    right: 40,
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
                                                      'Первый запуск!',
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
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.blue,
                                                      ),
                                                        child: Icon(Icons.done_outline, color: Colors.white),
                                                    ),
                                                    SizedBox(width: 10),
                                                    Flexible(
                                                      child: Text('Flutter Tutorial предлагает лучшие учебники по флаттеру, дартсу, java, J2EE и kotlin. Учебник по флаттеру является кроссплатформенным языком. Учебник по флаттеру обеспечивает настройку виджетов и т. Д.'),
                                                    ),
                                                    SizedBox(height: 22),
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
                                Positioned(
                                  right: 10,
                                  bottom: 10,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Indicator(compact: false),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),



          ],
        ),
      ),
    ),
  );
}

class Indicator extends StatelessWidget {
  const Indicator({
    Key key,
    @required this.compact,
  }) : super(key: key);
  final bool compact;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !compact,
      child: _Triangle(color: Colors.blue),
    );
  }
}


class _Triangle extends StatelessWidget {
  const _Triangle({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: _ShapesPainter(color),
        child: Container(
            height: 50,
            width: 50,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 16),
                    child: Transform.rotate(
                        angle: math.pi / 4,
                        child: Text('Новый пост',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w800)))))));
  }
}
class _ShapesPainter extends CustomPainter {
  final Color color;

  _ShapesPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}