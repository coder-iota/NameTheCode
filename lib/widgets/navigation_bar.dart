import 'package:flutter/material.dart';
import 'package:name_the_code/views/home.dart';
import 'package:name_the_code/views/about.dart';
import 'package:name_the_code/views/home_page.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 180,
            child: _HomeButton(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavStyle("Create Account"),
              SizedBox(width: 40,),
              _NavStyle("About"),
              SizedBox(width: 20,)
            ],
          )
        ],
      ),
    );
  }
}

class _NavStyle extends StatelessWidget {
  final String name;
  const _NavStyle(this.name);

  void registrationPageRoute(BuildContext context){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context){
        return new Home();
      })
    );
  }

  void aboutPageRoute(BuildContext context){
      Navigator.push(
      context, 
      MaterialPageRoute(builder: (context){
        return About();
      })
      );
      }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.name == 'About'?  () => aboutPageRoute(context) : () => registrationPageRoute(context),
      child: Text(name,style: TextStyle(
        fontSize: 20.0,
      ),
    )
    );
  }
}

class _HomeButton extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image.asset("assets/logo.png"),
      onPressed: () {
        Navigator.push(
        context, 
        MaterialPageRoute(builder: (context){
          return HomeView();
        })
        );
      } ,
    );
  }
}