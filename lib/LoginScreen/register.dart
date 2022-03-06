import 'package:flutter/material.dart';
import 'package:flutter_covid_app/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('E-mail', style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator: EmailValidator(errorText: 'this field is required e-mail'),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String? email) {
                        profile.email = email!;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Password', style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator: RequiredValidator(errorText: 'this field is required password'),
                      obscureText: true,
                      onSaved: (String? password) {
                        profile.password = password!;
                      },
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: const Text('Register',
                            style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          print(formKey.currentState?.validate());
                          if(formKey.currentState?.validate() == true){
                              formKey.currentState?.save();
                              print("email = ${profile.email} password = ${profile.password}");
                             formKey.currentState?.reset();
                          }
                        },
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
