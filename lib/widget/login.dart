
import '../import.dart';


class Login extends StatefulWidget{
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _email;
  String _password;
  bool showLogin = true;

  AuthService _authService = AuthService();




  @override
  Widget build(BuildContext context) {


    Widget _logo(){
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/nadymlife.png',
              ),
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.scaleDown,
            ),
          ),
          child: Align(
            child: Text('',
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
            ),
            ),
          ),
        ),
      );
    }

    Widget _input(Icon icon, String hint, TextEditingController controller, bool obscure){
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          decoration: InputDecoration(
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
              ),
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 3,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
            ),
          ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: IconTheme(
              data: IconThemeData(
              color: Colors.black87),
                child: icon,
              ),
              ),
           ),
        ),
      );
    }
//кнопка на вход
    Widget _button(String text, void func()){
      return RaisedButton(
        splashColor: Theme.of(context).dividerColor,
        highlightColor: Theme.of(context).dividerColor,
        color: Colors.green[700],
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        onPressed: (){
          func();
        },
      );
    }

//формы заполнения поля для Email & Password
    Widget _form(String label, void func()){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 10,),
              child: _input(Icon(Icons.email), email, _emailController, false),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _input(Icon(Icons.lock), pass, _passwordController, true),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20,),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: _button(label, func),
              ),
            ),
          ],
        ),
      );
    }



//вывод сообщения для логина
    void _loginButtonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return;

      User user = await _authService.signInWithEmailAndPassword(
          _email.trim(), _password.trim());
      if (user == null) {
      //сообщение на авторизацию

      } else {
        _emailController.clear();
        _passwordController.clear();
      }
    }

//вывод сообщения для пароля
    void _registerButtonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return;

      User user = await _authService.registerWithEmailAndPassword(
          _email.trim(), _password.trim());
      if (user == null) {
        //сообщение на регистрацию

      } else {
        _emailController.clear();
        _passwordController.clear();
      }
    }




    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
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
              ]
          ),
        ),

          child: Column(
            children: <Widget>[
              _logo(),
              SizedBox(height: 100,),
              (
                  showLogin
                  ? Column(
                    children: <Widget>[
                      _form(openB, _loginButtonAction),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          child: Text(
                            onClick,
                            style: TextStyle(
                              fontSize: 14,
                            color: Colors.black87,
                            ),
                          ),
                          onTap: (){
                            setState((){
                            showLogin = false;
                            }
                            );
                         },
                        ),
                      ),
                    ],
                  )


                  : Column(
                  children: <Widget>[
                  _form(regB, _registerButtonAction),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: GestureDetector(
                            child: Text(
                              onClicb,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                            onTap: (){
                              setState(() {
                            showLogin = true;
                                }
                              );
                            },
                          ),
                         ),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      }


