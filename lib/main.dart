
import 'import.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  StreamProvider<User>.value(
      value: AuthService().currentUser,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<ProductDataProvider>(
            create: (context) => ProductDataProvider(),
          ),
        ],

        child: MaterialApp(
          //задали цвет на весь проект
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.green,
            textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black)),
          ),
          debugShowCheckedModeBanner: false,
          title: appname,
          home: Fon(),
        ),
      ),
    );
  }
}


class Fon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nadym.jpg'),
                fit: BoxFit.fill,
              ),
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                Color(0xfffffaab),
                Color(0xfffaf684),
                Color(0xfffcf9ca),
                Color(0xfffffde0),
                ],
                ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SideBarLayout()),
          );
        },
        label: Text(nextB),
      ),
    );
  }
}