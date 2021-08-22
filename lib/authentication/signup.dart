import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:irctcapp/constants.dart/constants.dart';

class SignUpForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  Map<String, String> _authData = {
    "name": "",
    "email": "",
    "password": "",
    "mobile": "",
  };

  @override
  Widget build(BuildContext context) {
    String _password = "";
    return Scaffold(
      appBar: AppBar(
        title: Text("AuthForm"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Sign Up via",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          child: Image.asset(
                            "assests/google_image.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "aniket",
                        hintTextDirection: TextDirection.rtl,
                      ),
                      validator: (value) {
                        final validCharacters = RegExp('a-zA-Z0-9');
                        if (value!.isEmpty) return requiredField;
                        if (validCharacters.hasMatch(value)) return null;
                      },
                      onSaved: (newValue) {
                        _authData["name"] = newValue.toString();
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: MultiValidator(
                          [
                            RequiredValidator(errorText: requiredField),
                            EmailValidator(
                                errorText:
                                    "Please enter a valid email address"),
                          ],
                        ),
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "aniket123@gmail.com",
                          hintTextDirection: TextDirection.rtl,
                        ),
                        onSaved: (newvalue) {
                          _authData["email"] = newvalue.toString();
                        },
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        hintText: "123456789",
                        hintTextDirection: TextDirection.rtl,
                      ),
                      onSaved: (newval) {
                        _authData["mobile"] = newval.toString();
                      },
                      validator: (value) {
                        if (value!.isEmpty) return requiredField;
                        if (value.length != 10)
                          return "Please enter a valid phone number";
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                        onSaved: (newval) {
                          _authData["password"] = newval.toString();
                        },
                        onChanged: (val) {
                          _password = val;
                        },
                        validator: passwordValidator,
                      ),
                    ),
                    TextFormField(
                      validator: (val) =>
                          MatchValidator(errorText: 'passwords do not match')
                              .validateMatch(val!, _password),
                      obscureText: true,
                      onSaved: (newValue) {
                        _authData["password"] = newValue.toString();
                      },
                      decoration:
                          InputDecoration(labelText: "Confirm password"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          FloatingActionButton.extended(
                            onPressed: () {},
                            label: Text("I'm a Railyatri"),
                            icon: Icon(Icons.directions_railway),
                          ),
                          Spacer(),
                          FloatingActionButton.extended(
                            onPressed: () {},
                            label: Text("Sign up"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
