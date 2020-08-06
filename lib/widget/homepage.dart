
import '../import.dart';


class HomePage extends StatelessWidget with NavigationStates{
  const HomePage({Key key}) : super (key: key);
  @override
  Widget build(BuildContext context) {

    //final productData = Provider.of<ProductDataProvider>(context);


    return Scaffold(
      body: SafeArea(
        child: Container(
          //фон
        decoration: BoxDecoration(
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
          //закончился фон
          //height: MediaQuery.of(context).size.height - 85, отступ снизу на 85 мм
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5.0),
                height: 670,
                child: NewsApp(),
              )
            ],
          ),
        ),
      ),
    );
  }
}