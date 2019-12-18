import 'package:flutter/material.dart';

import 'package:name_the_code/views/home_page.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign UP',
      debugShowCheckedModeBanner: false,

      home: MyHomePage(title: 'Name The Code'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {



  int selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio=0;

  }

  setSelectedRadio(int val)
  {
    setState(() {
      selectedRadio=val;
    });
  }

  DateTime _dateTime;
  bool _sel=false;



  @override
  Widget build(BuildContext context) {

   

    return Scaffold(
      
      backgroundColor: Colors.cyan[50],
      body: Padding(
        padding: EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width /3.3,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.indigo[200],
                  child: Padding(
                    padding: EdgeInsets.only(top: 85.0, right: 50.0, left: 50.0), 
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: <Widget>[
                        
                          SizedBox(height: 60.0,),
                    
                          Container(
                            padding: EdgeInsets.only(
                              top: 5.0, 
                              bottom: 5.0
                            ),
                            child: Text(
                              "Name The Code",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),

                          SizedBox(height: 5.0,),


                          Container(
                            padding: EdgeInsets.only(
                              top: 5.0, 
                              bottom: 5.0
                            ),
                            child: Text(
                              "Already have an account ?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          SizedBox(height: 50.0,),


                          FlatButton(
                            color: Colors.lightBlue,
                            onPressed: ()
                            {
                               Navigator.push
                               (
                                  context,
                                  MaterialPageRoute(builder: (context)
                                  {
                                    return new HomeView();
                                  })
                               );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),




                Container(
                  padding: EdgeInsets.only(top: 15.0, right: 70.0, left: 70.0, bottom: 10.0),
                  child: Column(
                    children: <Widget>[

                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.lightBlue, fontWeight: FontWeight.w600, fontSize: 35.0, fontFamily: 'Merriweather'),
                      ),
                      const SizedBox(height: 21.0),
                      
                      //InputField Widget from the widgets folder
                      InputField(
                        label: "Name",
                        content: "Bharat Shrivastava"
                      ),

                      SizedBox(height: 20.0),

                      //Gender,
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                                
                      
                          Radio(
                            value: 0,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue,
                            
                            onChanged: (val)
                            {
                              setSelectedRadio(val);
                            },
                          ),
                           Container(
                      width: 50.0,
                      child: Text(
                        "Male",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                                  color: Colors.lightBlue
                                ),
                      ),
                    ),
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue,
                            onChanged: (val)
                            {
                              setSelectedRadio(val);
                            },
                          ),
                          Container(
                      width: 50.0,
                      child: Text(
                        "Female",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                                  color: Colors.lightBlue
                                ),
                      ),
                    ),

                        ],
                      ),
                      
                      //DOB Date Picker
                      Text(_dateTime==null?"D.O.B.":_dateTime.toString()),
                      RaisedButton(
                        child: new Text("Pick a Date"),
                        onPressed: (){
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1980),
                            lastDate: DateTime(2015),
                          ).then((date){
                              setState(() {
                                _dateTime=date;
                              });
                          });
                        },
                      ),

                      SizedBox(height: 20.0),


                      //InputField Widget from the widgets folder
                  
                    

                      

                     
                      //InputField Widget from the widgets folder
                      InputField(
                        label: "Email",
                        content: "example@gmail.com"
                      ),

                      SizedBox(height: 20.0),

                     
                Container(
                  
                width: 300,
                height:50,
                child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password Here',
                      ),
                      autofocus: false,
                      obscureText: true,
                    ),
                  ),

                  
                      

                      
                      //Membership Widget from the widgets folder
                     // As a mentor?
                     new Row(
                        children: <Widget>[
                          new Text("As a Mentor ?"),
                          new Checkbox(
                            onChanged: (bool response){
                              setState(() {
                                _sel=response;
                              });
                            },
                            value: _sel,
                          )
                        ],
                     ),
                      
                      SizedBox(height: 40.0,),

                      Row(
                        children: <Widget>[
                          SizedBox(width: 170.0,),
                          FlatButton(
                            color: Colors.grey[200],
                            onPressed: (){},
                            child: Text(
                              "Cancel"
                            ),
                          ),

                          SizedBox(width: 20.0,),

                          FlatButton(
                            color: Colors.lightBlue,
                            onPressed: (){},
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}


class InputField extends StatelessWidget {
  final String label;
  final String content;

  InputField({this.label, this.content});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Container(
              width: 80.0,
              child: Text(
                "$label",
                textAlign: TextAlign.left,
                style: TextStyle(
                        color: Colors.lightBlue
                      ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.7,
              color: Colors.blue[50],
              child: TextField(
                style: TextStyle(
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[50],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[50],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "$content",
                  fillColor: Colors.blue[50],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}





