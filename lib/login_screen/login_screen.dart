import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safera/provider/auth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final GlobalKey<FormState> _formKey = GlobalKey();
  // AuthMode _authMode = AuthMode.Login;
  // Map<String, String> _authData = {
  //   'email': '',
  //   'password': '',
  // };
  var _isLoading = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  Future<void> _submit() async {
    print("Submit Run !!!");
    // if (!_formKey.currentState.validate()) {
    //   // Invalid!
    //   return;
    // }
    // _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    try {
      // Login user
      await Provider.of<Auth>(context, listen: false)
          .login(_emailController.text, _passwordController.text);
    } catch (error) {
      _showErrorDialog("Login failed !!");
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    var expanded = Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              // id field
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                // border: Border.all(color: Colors.grey[400], width: 1.8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      spreadRadius: 1.0),
                ],
              ),

              child: TextFormField(
                cursorColor: Colors.grey,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 25, bottom: 11, top: 11, right: 25),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              margin: EdgeInsets.only(
                  left: data.size.width * 0.2,
                  right: data.size.width * 0.2,
                  top: data.size.height * 0.106),
            ),
            Container(
              // password filed
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  // border:
                  //     Border.all(color: Colors.grey[600], width: 1.2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        spreadRadius: 1.0),
                  ]),
              child: TextFormField(
                cursorColor: Colors.grey,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 25, bottom: 11, top: 11, right: 25),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              margin: EdgeInsets.only(
                  left: data.size.width * 0.2,
                  right: data.size.width * 0.2,
                  top: data.size.height * 0.03),
            ),
            Container(
              // login button
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: Colors.black,
              ),

              child: Column(
                children: [
                  if (!_isLoading)
                    FlatButton(
                      onPressed: _submit,
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: data.size.width * 0.03),
                      ),
                      padding: EdgeInsets.only(left: 40, right: 40),
                    )
                  else
                    Container(
                      child: CircularProgressIndicator(),
                    )
                ],
              ),
              margin: EdgeInsets.only(
                  left: data.size.width * 0.2,
                  right: data.size.width * 0.2,
                  top: data.size.height * 0.035,
                  bottom: data.size.height * 0.02),
            ),
            InkWell(
              // frogot password
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/dashborad");
              },
              child: Container(
                child: Text(
                  'Forgot Password? Reset it',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: data.size.width * 0.021,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200.0),
                ),
                margin: EdgeInsets.only(top: data.size.height * 0.08),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(300.0),
                        border:
                            Border.all(color: Colors.teal[200], width: 4.0)),
                    margin: EdgeInsets.all(6.0),
                    padding: EdgeInsets.all(18.0),
                    child: Image(
                      image: AssetImage('assets/images/sefera_logo_tablet.png'),
                      width: data.size.width * 0.22,
                      height: data.size.width * 0.22,
                    )),
              ),
            ),
            expanded
          ],
        ),
      ),
    );
  }
}
