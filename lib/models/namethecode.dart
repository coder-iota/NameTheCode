class namethecode
{
  //Profile
  String _email;
  String _name;
  String _pass;
  String _university;
  String _gender;
  
  //Mentor
  int _mentor_ID;
  int _no_Of_Q_Posted;
  int _verified;

  //Student
  int _student_ID;
  int _no_Of_Q_Ans;
  int _total_Points;

  //PuzzelInfo
  int _puzzel_code;
  int _time_limit;
  String _head;
  String _puzzelQ;
  int _point;
  int _date_of_posting;
  String _level;

  //Student_Record
  int _point_awarded;
  int _time_taken;


  namethecode.profile(this._email,this._name,this._pass,this._university,this._gender);
  namethecode.mentor(this._mentor_ID,this._email,this._no_Of_Q_Posted,this._verified);
  namethecode.student(this._student_ID,this._email,this._no_Of_Q_Ans,this._total_Points);
  namethecode.puzzelInfo(this._puzzel_code,this._mentor_ID,this._head,this._puzzelQ,this._time_limit,this._point,this._date_of_posting,this._level);
  namethecode.studentRecord(this._puzzel_code,this._student_ID,this._point,this._time_taken);

  //getters for profile

  String get email => _email;
  String get name => _name;
  String get pass => _pass;
  String get university => _university;
  String get gender => _gender;
  
  //getters for mentor
  int get mentor_ID =>_mentor_ID;
  int get no_Of_Q_Posted =>_no_Of_Q_Posted;
  int get verified =>_verified;

  //getters for student
  int get student_ID => _student_ID;
  int get no_Of_Q_Ans => _no_Of_Q_Ans;
  int get total_Points => _total_Points;

  //getters for PuzzelInfo
  int get puzzel_code => _puzzel_code;
  int get time_limit => _time_limit;
  String get head => _head;
  String get puzzelQ => _puzzelQ;
  int get point => _point;
  int get date_of_posting => _date_of_posting;
  String get level => _level;

  //getters for StudentRecord
  int get point_awarded => _point_awarded;
  int get time_taken => _time_taken;

  //setters for profile
  set email(String New_email)
  {
      this.email=New_email;
  }
  set name(String New_name)
  {
    this.name=New_name;
  }
  set pass(String New_pass)
  {
    if(New_pass.length>=8)
    this.pass=New_pass;
  }
  set university(String New_University)
  {
    this.university=New_University;
  }
  set gender(String New_gender)
  {
    this.gender=New_gender;
  }

  //setters for mentor
  set verified(int New_verified)
  {
    if(New_verified>=0 && New_verified<=1)
      this.verified=New_verified;
  }

  //setters for student
  set total_Points(int New_total_Points)
  {
      this.total_Points=New_total_Points;
  }

  //setters for puzzelInfo
  set time_limit(int New_time_limit)
  {
      this.time_limit=New_time_limit;
  }
  set head(String New_head)
  {
      this.head=New_head;
  }
  set puzzelQ(String New_puzzelQ)
  {
      this.puzzelQ=New_puzzelQ;
  }
  set point(int New_point)
  {
      this.point=New_point;
  }
  set level(String New_level)
  {
      this.level=New_level;
  }

  //setters for StudentRecord
  set point_awarded(int New_point_awarded)
  {
      this.point_awarded=New_point_awarded;
  }
  set time_taken(int New_time_taken)
  {
      this.time_taken=New_time_taken;
  }


  //convert namethecode object into map object
  Map<String,dynamic>toMap()
  {
    var map=Map<String,dynamic>();
    //for profile:
    map['email']=_email;
    map['name']=_name;
    map['pass']=_pass;
    map['university']=_university;
    map['gender']=_gender;
    
    //for Mentor:
    if(mentor_ID!=null)
      map['mentor_ID']=_mentor_ID;
    map['no_Of_Q_Posted']=_no_Of_Q_Posted;
    map['verified']=_verified;

    //for student:
    if(student_ID!=null)
      map['student_ID']=_student_ID;
    map['no_Of_Q_Ans']=_no_Of_Q_Ans;
    map['total_Points']=_total_Points;

    //for puzzelInfo:
    map['puzzel_code']=_puzzel_code;
    map['time_limit']=_time_limit;
    map['head']=_head;
    map['puzzelQ']=_puzzelQ;
    map['point']=_point;
    map['date_of_posting']=_date_of_posting;
    map['level']=_level;

    //for StudentRecord:
    map['point_awarded']=_point_awarded;
    map['time_taken']=_time_taken;


    return map;
  }

  namethecode.fromMapObject(Map<String,dynamic> map)
  {
      
      //for profile:
    this._email=map['email'];
    this._name=map['name'];
    this._pass=map['pass'];
    this._university=map['university'];
    this._gender=map['gender'];
    
    //for Mentor:
    this._mentor_ID=map['mentor_ID'];
    this._no_Of_Q_Posted=map['no_Of_Q_Posted'];
    this._verified=map['verified'];

    //for student:
    this._student_ID=map['student_ID'];
    this._no_Of_Q_Ans=map['no_Of_Q_Ans'];
    this._total_Points=map['total_Points'];

    //for puzzelInfo:
    this._puzzel_code=map['puzzel_code'];
    this._time_limit=map['time_limit'];
    this._head=map['head'];
    this._puzzelQ=map['puzzelQ'];
    this._point=map['point'];
    this._date_of_posting=map['date_of_posting'];
    this._level=map['level'];

    //for StudentRecord:
    this._point_awarded=map['point_awarded'];
    this._time_taken=map['time_taken'];

  }

}