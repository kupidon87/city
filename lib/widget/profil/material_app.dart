
import '../../import.dart';


class Materialbar extends StatefulWidget{
  @override
  _MaterialbarState createState() => _MaterialbarState();
}

class _MaterialbarState extends State<Materialbar>{
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        height: 375,
        child: DefaultTabController(
          length: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonsTabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.web),),
                    Tab(icon: Icon(Icons.person),),
                    Tab(icon: Icon(Icons.image)),
                    Tab(icon: Icon(Icons.play_circle_outline)),
                    Tab(icon: Icon(Icons.settings))
                  ]),

              Divider(
                thickness: 0.9,
                color: Colors.black.withOpacity(0.3),
                indent: 32,
                endIndent: 32,
              ),


              Expanded(
                child:Container(
                  child: TabBarView(
                    children: <Widget>[

                      Container(child: LifeNews()),

                      Container(child: Friends()),

                      Container(child: ProfilPhoto()),

                      Container(child: ProfilVideo()),

                      Container(child: SitingP()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}