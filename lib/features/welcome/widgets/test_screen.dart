import 'package:car_app/core/theme/app_validators.dart';
import 'package:car_app/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242530),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'EMAIL',
                    style: TextStyle(fontSize: 20, color: Color(0xff2B4C59)),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: AppValidators.emailValidator,
                    decoration: InputDecoration(
                      hintText: 'Example@mail.com',
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () 
                    async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                        _formKey.currentState!.validate();
                    },                  
                    child: const Text('LOG IN',),
                    if 
                    {
                    //   final userName = prefs.getString('userName');
                    //     final password = prefs.getString('password');
                    //     if (_emailController.text == userName &&
                    //         _passwordController.text == password) 
                    // {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Succesfully logged"),
                            ),
                          );
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const WelcomeScreen(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Такого пользователя не существует!"),
                          ),
                          );
                          }
                          ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
