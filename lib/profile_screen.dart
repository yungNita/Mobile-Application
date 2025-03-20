import 'dart:math';
import 'package:flutter/material.dart';

class Profilio extends StatelessWidget {
  const Profilio({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 111, 25), 

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.lightbulb, color: Colors.black), // Logo Icon
                  SizedBox(width: 5),
                  Text(
                    "AeroVision",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              Icon(Icons.menu, size: 28), // Menu Icon
            ],
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),

              // Profile Image
              CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('assets/profile.png'), 
              ),
              SizedBox(height: 20),

              // Welcome Text
              Text(
                "Welcome to my Portfolio",
                style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Name & Title
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: "Hi I’m\n"),
                    TextSpan(
                      text: "Yung Nita\n",
                      style: TextStyle(color: Colors.blue[700], fontSize: 35),
                    ),
                    TextSpan(text: "Product\nDesigner"),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Description
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              SizedBox(height: 30),

              // Buttons
              Column(
                children: [
                  // Hire Me Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      log("Hire Me Clicked" as num);
                    },
                    child: Text("Hire Me!", style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  SizedBox(height: 10),

                  // Download CV Button
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue[700]!),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      log("Download CV Clicked" as num);
                    },
                    icon: Icon(Icons.download, color: Colors.blue[700]),
                    label: Text(
                      "Download CV",
                      style: TextStyle(color: Colors.blue[700], fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


