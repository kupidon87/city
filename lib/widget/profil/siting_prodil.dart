

import '../../import.dart';

//форма ввода
enum Genders{male, female}

class SitingP extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SitingPState();
  }
}

class SitingPState extends State<SitingP>{
  final _formKey = GlobalKey<FormState>();
  Genders _gender;
  bool _agreement = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ///настройки

            Container(
              padding: EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Text(
                      nameS,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    TextFormField(
                        validator: (value){
                          if (value.isEmpty) return 'Пожалуйста введите свое имя';
                          return null;
                        }),
                    Text(
                      email,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    TextFormField(
                        validator: (value){
                          if (value.isEmpty) return 'Пожалуйста введите свой Email';
                          if(!EmailValidator.validate(value)) return 'Это не Email';
                          return null;
                        }),
                    Text(
                      floor,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    RadioListTile(
                      title: Text(men),
                      value: Genders.male,
                      groupValue: _gender,
                      onChanged: (value){
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(famele),
                      value: Genders.female,
                      groupValue: _gender,
                      onChanged: (value){
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                    SizedBox(height: 6.0),
                    CheckboxListTile(
                      value: _agreement,
                      title: Text(familiar +
                          (_gender == null ? '(a)'
                              : _gender == Genders.male ? '': 'a') + consent),
                      onChanged: (value) => setState(() => _agreement = value),
                    ),
                    SizedBox(height: 6.0),
                    RaisedButton(onPressed: (){
                      if(_formKey.currentState.validate()){
                        Color color = Colors.red;
                        String text;
                        if(_gender == null)
                          text = floo;
                        else if(_agreement != true)
                          text = appcons;
                        else {
                          text = formgood;
                          color = Colors.green;
                        }
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(text),
                          backgroundColor: color,
                        ));
                      }
                      print(_formKey.currentState.toString());
                      }, child: Text(seve),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            )
            ///конец настройкам

          ],
        )
      ),
    );
  }

}