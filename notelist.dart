// flutter section 4 note keeper app note_list.dart

import 'package:flutter/material.dart';

class NoteList extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState(){
    
    return NoteListState();      
  }
}

class NoteListState extends State<NoteList> {

  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      ),
      
      body: getNoteListView(),
    );
  }


ListView getNoteListView(){
  
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
  
  return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
       return Card(
        color: Colors.white,
         elevation: 2.0,
         child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Icon(Icons.keyboard_arrow_right),
          ),
           title: Text('Dummy Title', style: titleStyle,),
           
           subtitle: Text('Dummy Date'),
           
           trailing: Icon(Icons.delete, color: Colors.grey,),
           
           onTap: (){
             debugPrint("ListTile tapped");
           },
         ),
        );
      }
    );
  }
}
  
