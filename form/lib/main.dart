import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'ContactForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _formKey = GlobalKey<FormState>();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SignInForm(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  SignInFormState createState() {
    return SignInFormState();
  }
}

class SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerAddress = TextEditingController();

  var form = FormModel(
      name: '',
      email: '',
      message: '',
      );


  String password;
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
  ]);
  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: 'enter a valid email address'),
  ]);

  @override
  Widget build(BuildContext context) {


    _onPressed() async {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();
      }
    }

    return Container(
      width: 500,
      height: 600,
      child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [

                    Expanded(
                      child:buildPasswordFormField(),
                    ),
                    Expanded(
                        child: buildEmailFormField() ,
                    )

                  ],
                ),


                buildMessageFormField(),


                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    _onPressed();
                  },
                  child: AnimatedContainer(
                      margin: EdgeInsets.only(bottom: 10),
                      duration: Duration(milliseconds: 300),
                      height: 60,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xFFa6e76c),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Sign in ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Futura Heavy',
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

              ])),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      validator: passwordValidator,
      onSaved: (value) {
        form = FormModel(name: value, email: form.email,message: form.message);
      },
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your FullName",
        floatingLabelBehavior: FloatingLabelBehavior.always,

      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: emailValidator,
      onSaved: (value) {
        form = FormModel(name: form.name, email: value,message: form.message);
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: Padding(
        //   padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
        //   child: SvgPicture.asset(
        //     "assets/icons/Mail.svg",
        //     height: 18,
        //   ),
        // ),
      ),
    );
  }
  TextFormField buildMessageFormField() {
    return TextFormField(
      validator: emailValidator,
      onSaved: (value) {
        form = FormModel(name: form.name, email: form.email,message: value);
      },
      decoration: InputDecoration(
        labelText: "Message",
        hintText: "Enter your Message",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: Padding(
        //   padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
        //   child: SvgPicture.asset(
        //     "assets/icons/Mail.svg",
        //     height: 18,
        //   ),
        // ),
      ),
    );
  }
}