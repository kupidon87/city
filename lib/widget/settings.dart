
import '../import.dart';

class Settings extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return ListView(
//        child: Column(
          children: <Widget>[
            SizedBox(
              height: 199,
            ),

              Center(
                child: SitingP(),
            ),
          ],
//        ),
    );
  }
}