import 'package:flutter/material.dart';
import 'package:name_the_code/views/home.dart';

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
            child: Image.asset("assets/logo.png"),
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

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
                               Navigator.push
                               (
                                  context,
                                  MaterialPageRoute(builder: (context)
                                  {
                                    return new Home();
                                  })
                               );
                            },
      child: Text(name,style: TextStyle(
        fontSize: 20.0,
      ),
    )
    );
  }
}