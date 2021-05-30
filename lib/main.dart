import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: Text("Login Form")),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: 
              [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.all(20),
                  child: Image.asset(
                      'images/user.png'
                    )
                  ),

                  SizedBox(height:50),
                  Container(
                    width: 300,
                    child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            prefixIcon: const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.grey,
                            ),
                    ),
                  ),
                ),
                  SizedBox(height:20),
                  Container(
                    width: 300,
                    child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      labelText: 'Password',
                      hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            prefixIcon: const Icon(
                              Icons.lock_open_outlined,
                              color: Colors.grey
                            ),
                    ),
                  ),
                ),

                  SizedBox(height:50),
                  ElevatedButton(
                    onPressed: (){}, 
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                   ),
                )
              ],
            ),  
            
          ),
        ),
      ),
      );
  }
}
