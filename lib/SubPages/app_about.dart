import 'package:flutter/material.dart';

class AboutAppPage extends StatefulWidget {

  final String title;
  AboutAppPage(this.title);

  @override
  _AboutAppPageState createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {

  Widget _greenColors() {
    return Positioned(
      top: 0,
      child: Container(
        color: Colors.deepPurple,
        height: 250,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  Widget _getInfo() {
    return Positioned(
      top: 100,
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 260,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("App information:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/logos/facebook.jpg"),
                    radius: 40,
                    
                  ),
                  
                  // Text("Dev"),
                ],
              ),
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text("My App",style: TextStyle(fontSize: 20),),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1.0",style: TextStyle(fontSize: 20),),
                  SizedBox(
                    width: 20,
                  ),
              ],),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email:"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("jeelsureja11@gmail.com")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         brightness: Brightness.dark,
        title: new Text('Profile'),
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed:() => Navigator.pop(context, false),
      )),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            _greenColors(),
            _getInfo(),
           
          ],
        ),
      ),
    );
  }
}