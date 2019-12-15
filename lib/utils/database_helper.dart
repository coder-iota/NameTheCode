import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:name_the_code/models/namethecode.dart';

class DatabaseHelper
{
  static DatabaseHelper _databaseHelper;
  static Database _database;

  //tables
  String profile_Table ='Profile';
  String mentor_Table ='Mentor';
  String student_Table ='Student';
  String puzzelInfo_Table ='Puzzel_Info';
  String studentRecord_Table ='Student_Record';

  //columns
    //Profile
    String col_email='email';
    String col_name='name';
    String col_pass='pass';
    String col_university='university';
    String col_gender='gender';
    
    //Mentor
    String col_mentor_ID='mentor_ID';
    String col_no_Of_Q_Posted='no_Of_Q_Posted';
    String col_verified='verified';

    //Student
    String col_student_ID='student_ID';
    String col_no_Of_Q_Ans='no_Of_Q_Ans';
    String col_total_Points='total_Points';

    //PuzzelInfo
    String col_puzzel_code='puzzel_code';
    String col_time_limit='time_limit';
    String col_head='head';
    String col_puzzelQ='puzzelQ';
    String col_point='point';
    String col_date_of_posting='date_of_posting';
    String col_level='level';

    //Student_Record
    String col_point_awarded='point_awarded';
    String col_time_taken='time_taken';

  DatabaseHelper._createInstance();
  factory DatabaseHelper()
  {
    if(_databaseHelper==null)
      _databaseHelper=DatabaseHelper._createInstance();

    return _databaseHelper;
  }

  Future<Database> get database async
  {
    if(_database==null)
    {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async
  {
    Directory directory=await getApplicationDocumentsDirectory();
    String path=directory.path+'namethecode.db';

    var namethecodeDatabase = await openDatabase(path, version: 1, onCreate: _createDB);

    return namethecodeDatabase;
  }

  void _createDB(Database db,int newVersion) async
  {
      await db.execute('CREATE TABLE $profile_Table'
      '($col_email TEXT PRIMARY KEY,'
      ' $col_name TEXT,'
      ' $col_pass TEXT,'
      ' $col_university TEXT,'
      ' $col_gender TEXT)');

      await db.execute('CREATE TABLE $mentor_Table'
      '($col_mentor_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
      ' $col_email TEXT ,'
      ' $col_no_Of_Q_Posted INTEGER,'
      ' $col_verified TEXT)');
      
      await db.execute('CREATE TABLE $student_Table'
      '($col_student_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
      ' $col_email TEXT ,'
      ' $col_no_Of_Q_Ans INTEGER,'
      ' $col_total_Points INTEGER)');
      
      await db.execute('CREATE TABLE $puzzelInfo_Table'
      '($col_puzzel_code INTEGER PRIMARY KEY AUTOINCREMENT,'
      ' $col_mentor_ID INTEGER ,'
      ' $col_time_limit INTEGER,'
      ' $col_point INTEGER,'
      ' $col_date_of_posting DATE,'
      ' $col_level TEXT,'
      ' $col_head TEXT,'
      ' $col_puzzelQ)');
      
      await db.execute('CREATE TABLE $studentRecord_Table'
      '($col_puzzel_code INTEGER ,'
      ' $col_student_ID INTEGER,'
      ' $col_point_awarded INTEGER ,'
      ' $col_time_taken INTEGER,'
      ' PRIMARY KEY($col_puzzel_code,$col_student_ID))');
      
      
      

  }

    // code for INSERT, UPDATE, DELETE need to complete

}

