

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrl/views/welcome.dart';

class NewRegistrationPage extends StatelessWidget {
  const NewRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).primaryColor,
      body: Column(
        children: [
          myAppBar(context,"New Registration Page"),
          Expanded(
            child:Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(45)),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 0,top: 0,bottom: 500,right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: (){
                          launch(
                            "https://www.veritasregistrars.com/Downloads/online-access-individual.pdf",
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Theme.of(context).primaryColor),
                        ),
                        child: Text("New User"),
                      ),
                    ),
                    SizedBox(width:10),
                    SizedBox(
                      height: 80,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Theme.of(context).primaryColor),
                        ),
                        child: Text("Click to Register"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
