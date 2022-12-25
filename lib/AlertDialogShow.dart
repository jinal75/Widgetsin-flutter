import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';



void main() => runApp(AlertDialogShow());

class AlertDialogShow extends StatelessWidget {
  // It is the root widget of your application.  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Application', theme: ThemeData(
      primarySwatch: Colors.green,),
      home: MyHomePage(title: 'Complex layout example',),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product List")),

        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
         ElevatedButton(
           style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
           onPressed: () {
             showDialog(context: context, builder: (BuildContext context) =>
                 AlertDialog(
                   title: Text(
                     'Sample aleret',
                   ),
                   actions: [
                     TextButton(
                       onPressed: () => Navigator.pop(context, 'Cancel')
                       , child: Text('Cancel'),
                     ),
                     TextButton(onPressed: () => Navigator.pop(context, 'OK'),
                       child: Text('OK'),
                     ),
                   ],
                 ),

             ).then((retutnVal) {
               if (retutnVal != null) {
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('You click :$retutnVal'),
                     action: SnackBarAction(label: 'OK', onPressed: () {}),
                   ),
                 );
               }
             });
           },
           child: Text('Alert Dialog'),
             ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context) =>
                    SimpleDialog(
                      title: Text(
                        'Dialog title',
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text('jinalpatel@gmail.com'),
                          onTap: ()=>Navigator.pop(context,'jinalpatel@gmail.com'
                          ),

                        ),
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text('jinalpatel@gmail.com'),
                          onTap: ()=>Navigator.pop(context,'jinalpatel@gmail.com'
                          ),

                        ),
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text('jinalpatel@gmail.com'),
                          onTap: ()=>Navigator.pop(context,'jinalpatel@gmail.com'
                          ),

                        ),
                      ],


                    ),

                ).then((retutnVal) {
                  if (retutnVal != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('You click :$retutnVal'),
                        action: SnackBarAction(label: 'OK', onPressed: () {}),
                      ),
                    );
                  }
                });
              },
              child: Text('Simple Dialog'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                final DateTime now=DateTime.now();
                showTimePicker(context: context, initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
                ).then((TimeOfDay? value){
                  if(value !=null){
                    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(value.format(context)),
    action: SnackBarAction(label: 'OK', onPressed: (){}),
    ),
                    );

                  }

     




                });
              },
              child: Text('Time Dialog'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                showDatePicker(context: context, 
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2018),
                  lastDate: DateTime(2025),
                ).then((DateTime? value){
                  if(value !=null){
                    DateTime _fromDate = DateTime.now();
                    _fromDate=value;
                    final String date=DateFormat.yMMMd().format(_fromDate);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected date :$date'),
                        action: SnackBarAction(label: 'OK', onPressed: (){}),
                      ),
                    );

                  }

                });
              },
              child: Text('Date Dialog'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                showDateRangePicker(context: context,

                  firstDate: DateTime(2018),
                  lastDate: DateTime(2025),
                ).then((DateTimeRange? value){
                  if(value !=null){
                    DateTimeRange _fromRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
                    _fromRange=value;
                    final String range='${DateFormat.yMMMd().format(_fromRange.start)} - ${DateFormat.yMMMd().format(_fromRange.end)}';
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(range)),


                    );

                  }

                });
              },
              child: Text('Date Range Picker Time Dialog'),
            ),



          ]



          
        ),
    );
  }
}



class DateFormat {
  static yMMMd() {}
}







