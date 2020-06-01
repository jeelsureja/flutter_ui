import 'package:flutter/material.dart';
import 'package:test_app/utilities/constants.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  Widget _buildUsernameTF(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
      Text(
        'UserName',
        style: kLabelStyle,
      ),
      SizedBox(height: 10.0,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0,
        child: TextField(keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white,fontFamily: 'OpenSans',),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
            hintText: 'Enter Your UserName',
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
    );
  }

  Widget _buildEmailTF(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
      Text(
        'Email',
        style: kLabelStyle,
      ),
      SizedBox(height: 10.0,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0,
        child: TextField(keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white,fontFamily: 'OpenSans',),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            hintText: 'Enter Your Email',
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
    );
  }

Widget _buildMobilenoTF(){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
    Text(
      'MobileNo',
      style: kLabelStyle,
    ),
    SizedBox(height: 10.0,),
    Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 60.0,
      child: TextField(keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white,fontFamily: 'OpenSans',),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.phone_iphone,
            color: Colors.white,
          ),
          hintText: 'Enter Your MobileNo',
          hintStyle: kHintTextStyle,
        ),
      ),
    ),
  ],
  );
}

Widget _buildPasswordTF(){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
    Text(
      'Password',
      style: kLabelStyle,
    ),
    SizedBox(height: 10.0,),
    Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 60.0,
      child: TextField(keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white,fontFamily: 'OpenSans',),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          hintText: 'Enter Your Password',
          hintStyle: kHintTextStyle,
        ),
      ),
    ),
  ],
  );
}

  Widget _buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color:Colors.white,
        child: Text(
          'REGISTER',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed:() => Navigator.pop(context, false),
      )),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,

                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 60.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12.0),
                      _buildUsernameTF(),
                      SizedBox(height: 12.0,),
                      _buildEmailTF(),
                      SizedBox(height: 12.0,),
                      _buildMobilenoTF(),
                      SizedBox(height: 12.0,),
                      _buildPasswordTF(),
                      SizedBox(height: 8.0,),
                      _buildLoginBtn()

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
