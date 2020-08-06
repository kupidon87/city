import '../import.dart';

class Auth extends StatelessWidget with NavigationStates{

  const Auth ({Key key /*@required this.userSnapshot*/}) : super(key: key);
//  final AsyncSnapshot<User> userSnapshot;

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    final bool isLoggedin = user != null;
//    if (userSnapshot.connectionState == ConnectionState.active){
    if (isLoggedin) {
      return Profill();
    } else {
      return Login();
    }


  }

}