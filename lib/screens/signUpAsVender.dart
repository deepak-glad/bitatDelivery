import 'package:flutter/material.dart';

class SignUpAsVender extends StatefulWidget {
  static const routename = 'SignUpAsVender-page';
  @override
  _SignUpAsVenderState createState() => _SignUpAsVenderState();
}

class _SignUpAsVenderState extends State<SignUpAsVender> {
  final _formKey = GlobalKey<FormState>();
  var _username = '';
  var _storeName = '';
  var _address = '';
  var _country = '';
  var _storePhone = '';
  var _tradeLicenseNumber = '';
  var _expiry = '';
  var _idNumber = '';
  var _password = '';
  var _confirmPassword = '';
  var _uploadId = '';
  var _uploadLicenses = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'VENDOR REGISTRATION',
            style: TextStyle(color: Colors.yellow[700]),
          ),
          iconTheme: IconThemeData(color: Colors.yellow[700]),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white10,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.0,
                    spreadRadius: .5,
                    color: Colors.grey[300],
                  )
                ]),
            child: Form(
              key: _formKey,
              child: Theme(
                data: ThemeData(primaryColor: Colors.yellow[700]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('REGISTRATION',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue[800],
                          fontWeight: FontWeight.w500,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Email *',
                        style: TextStyle(fontSize: 17),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'First Name ',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('first Name'),
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
                          labelText: 'first name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Last name',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('lastName'),
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
                          labelText: 'Last Name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Store Name *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('storename'),
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
                          labelText: 'Store Name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Address 1 *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('address1'),
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
                          labelText: 'Address1',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Address 2',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('address2'),
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
                          labelText: 'Address2',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'City/Town',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('city'),
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
                          labelText: 'City Name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'State/Country',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('state'),
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
                          labelText: 'State name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Store Phone *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('phone'),
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
                          labelText: 'Store Phone number',
                          prefix: Text('+971'),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trading License Number *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('TradeLicenseNumber'),
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
                          labelText: 'Trade Licenses Number',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trading License Expiry*',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('Trading License Expiry'),
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
                          labelText: 'Trading License Expiry',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
