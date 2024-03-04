


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(
      MyApp()
  );
}

final Uri myWebsiteUrl=Uri.parse('https://dhruvb.xyz/');
Future<void> launchWebsiteUrl() async{
  try{
    await launchUrl(myWebsiteUrl);
  }catch(err){

  }
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/dhruv.png'),
                ),
                Text('Dhruv Bhagatkar',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('TY EXTC STUDENT',
                  style: TextStyle(
                    fontFamily: 'Teko',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+91 9867229860',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email_rounded,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'bhagatkardhruv2003@gmail.com',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.language_sharp,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'dhruvdb.xyz',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    // onTap: (){
                    //   launchWebsiteUrl();
                    // },
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}

