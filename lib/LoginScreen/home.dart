import 'package:flutter/material.dart';
import 'package:flutter_covid_app/LoginScreen/register.dart';
import 'package:flutter_covid_app/LoginScreen/login.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register/Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Register", style: TextStyle(fontSize: 20)),
                  onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context){
                        return const RegisterScreen();
                      }));
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text("Login", style: TextStyle(fontSize: 20)),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return const LoginScreen();
                        }));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
