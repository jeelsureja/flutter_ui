import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Pages/Login_page.dart';
import 'package:test_app/Pages/new_page.dart';
import 'package:test_app/SubPages/profile_page.dart';
import 'package:test_app/SubPages/app_about.dart';
import 'package:flutter/cupertino.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My App"),
        
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              accountName: new Text("Jeel Sureja"),
              accountEmail: new Text("jeelsureja11@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("J",style: TextStyle(fontSize: 40,color: Colors.white),),
              ),

            ),
            new ListTile(
              title: new Text("Profile"),
              trailing: new Icon(Icons.account_circle),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new ProfilePage("Profile")));
              },
            ),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new ListTile(
              title: new Text("Share"),
              trailing: new Icon(Icons.share),
              onTap: (){
                
              },
            ),
            new ListTile(
              title: new Text("About"),
              trailing: new Icon(Icons.announcement),
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new AboutAppPage("About App")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(child: new Text("Home Page"),)
      ),
    );
  }
}
