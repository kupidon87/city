import '../import.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final String title;

  const MenuItem({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //padding: const EdgeInsets.all(10.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.grey[500],
              size: 35,
            ),
//            Text(
//              title,
//              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16, color: Colors.white),
//            )
          ],
        ),
      ),
    );
  }
}
