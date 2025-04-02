import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text(
              'Login to your \naccount',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 140, 255),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),

                SizedBox(width: 5),

                Container(
                  width: 10,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 140, 255),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),

              ],              
            ),
            
            SizedBox(height: 50),

            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                
              ),
              padding: EdgeInsets.all(20),
              
              child: TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 88, 88, 88),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 88, 88, 88),
                    fontWeight: FontWeight.w500,
                  ),
                  
                ),
              ),
            ),


            SizedBox(height: 30),


            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 88, 88, 88),
                  fontWeight: FontWeight.w500,
                ),

                obscureText: true,

                decoration: InputDecoration(
                  border: InputBorder.none,
                  
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 88, 88, 88),
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),

            SizedBox(height: 20),
            
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),

                Text(
                  'Remember Me',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
              ],
            ),
            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55), 
                backgroundColor: Colors.blue,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              onPressed: () {},
              child: Text(
                'Login', 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16, 
                  fontWeight: FontWeight.w600
                ),
              ),
            ),

            SizedBox(height: 25),

            Center(child: Text('OR')),

            SizedBox(height: 25),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55), 
                backgroundColor: Colors.grey[200],
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Login with Google', 
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 16, 
                  fontWeight: FontWeight.w500
                )
              ),
            ),

            SizedBox(height: 25),

            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),

                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterScreen()),
                        );
                      }
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
    const RegisterScreen({super.key});

    final bool _termsAccepted = false;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(height: 80),

                        Text(
                            'Register new \naccount',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lato',
                            ),
                        ),

                        SizedBox(height: 20),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                Container(
                                    width: 90,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 0, 140, 255),
                                        borderRadius: BorderRadius.circular(3),
                                    ),
                                ),

                                SizedBox(width: 5),
                                Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 0, 140, 255),
                                        borderRadius: BorderRadius.circular(3),
                                    ),

                                ),
                            ],
                        ),

                        SizedBox(height: 50),

                        Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15),
                            ),

                            padding: EdgeInsets.all(20),

                            child: TextField(
                                style: TextStyle(
                                    fontSize: 16,
                                    color: const Color.fromARGB(255, 88, 88, 88),
                                    fontWeight: FontWeight.w500,
                                ),

                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: const Color.fromARGB(255, 88, 88, 88),
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                            )
                        ),

                        SizedBox(height: 25),

                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200],
                          ),
                          padding: EdgeInsets.all(20),

                          child: TextField(
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 88, 88, 88),
                              fontWeight: FontWeight.w500,
                            ),
                            
                            obscureText: true,
                            
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 88, 88, 88),
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),

                        SizedBox(height: 25),

                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password Conformation',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 88, 88, 88),
                                fontWeight: FontWeight.w500,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),

                            style: TextStyle(
                              color: const Color.fromARGB(255, 88, 88, 88),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Row(
                          children: [
                            Checkbox(
                              value: _termsAccepted, 
                              onChanged: (value) {}
                            ),
                            
                            

                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'By creating an account, you agree to our\n',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                      TextSpan(
                                        text: 'Term & Condition',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                            ),
                          ],
                        ),

                        SizedBox(height: 30),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 55),
                            backgroundColor: Colors.blue,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),

                          ),

                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                        ),

                        SizedBox(height: 130),

                        
                        Center(
                          child:
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Already have an account?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromARGB(255, 100, 100, 100)
                                    ),
                                  ),

                                  TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    recognizer: TapGestureRecognizer()..onTap = () {
                                      Navigator.pop(context);
                                    },
                                  ),

                                  
                                ],
                              ),
                            ),
                          
                        ),
                    ],
                ),
            ),
        );
    }
}