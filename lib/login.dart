import 'package:flutter/material.dart';
import 'package:test1/routing.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var myController1 = TextEditingController();
  var myController2 = TextEditingController();

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home:Scaffold(
            backgroundColor: Colors.blue[200],
            body:
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: SingleChildScrollView(
                  child:  Form(
                    key: formkey,
                    child: Column(
                      children: [
                      const Text(
                        "My Home",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: myController1,
                        validator: (val){
                          if(val!.isEmpty) return "prière de saisir une valeur";
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Enter email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: myController2,
                        validator: (val){
                        if(val!.isEmpty) return "prière de saisir une valeur";
                        },

                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
                        ),
                        child: MaterialButton(
                          onPressed: (){

                            if(formkey.currentState!.validate()){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (c) => Routing()));
                              });
                            } else{
                              setState(() {
                                print("Prière de fixer les erreurs");

                              });
                            }

                            /*
                            setState(() {
                              if(formkey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (c) => Routing()));
                              }else{
                                print("form not valid");
                              }
                            }); */

                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),

                        ),
                      ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Icon(Icons.fingerprint , size: 60, color: Colors.teal,),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          height: 30,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                    ],
                  ),
                  ),
                ),
              ),
            )));
  }
}



