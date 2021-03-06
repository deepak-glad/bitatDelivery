import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static const routename = 'signIn-page';
  // SignIn(this.submitFn);
  // final void Function (String username, String email, String password,
  //     bool isLogin, BuildContext ctx) submitFn;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  var _username = '';
  var _passwordI = false;
  var valuefirst = false;
  var _password = '';
  void _trysave() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      print(_username);
      print(_password);

      // widget.submitFn(
      //   _username.trim(),
      //   _email.trim(),
      //   _password.trim(),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'SIGNIN',
            style: TextStyle(color: Colors.yellow[700]),
          ),
          iconTheme: IconThemeData(color: Colors.yellow[700]),
          centerTitle: true,
        ),
        body: Container(
          height: 400,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.0,
                  spreadRadius: .5,
                  color: Colors.blueAccent,
                )
              ]),
          child: Form(
            key: _formKey,
            child: Theme(
              data: ThemeData(primaryColor: Colors.black),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'WelCome!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Username or email address *',
                          style: TextStyle(fontSize: 16)),
                    ),
                    TextFormField(
                      key: ValueKey('username'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'username',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Password *', style: TextStyle(fontSize: 16)),
                    ),
                    TextFormField(
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value.isEmpty) return 'Please enter password';
                        return null;
                      },
                      onSaved: (value) {
                        _password = value;
                      },
                      obscureText: !_passwordI,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye,
                                  color: this._passwordI
                                      ? Colors.blue
                                      : Colors.grey),
                              onPressed: () {
                                setState(
                                    () => this._passwordI = !this._passwordI);
                              }),
                          labelText: 'Password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.greenAccent,
                          activeColor: Colors.blue,
                          value: this.valuefirst,
                          onChanged: (bool value) {
                            setState(() {
                              this.valuefirst = value;
                            });
                          },
                        ),
                        Text(
                          'Remember me!',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FlatButton(
                          // minWidth: MediaQuery.of(context).size.width / 2,
                          color: Colors.blue,
                          // hoverColor: Theme.of(context).cardColor,
                          child: Text('LOGIN',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
                          onPressed: () {
                            // Navigator.of(context).pushNamed(HomePage.routeName);
                          }),
                    ),
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Lost Your Password ?',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
