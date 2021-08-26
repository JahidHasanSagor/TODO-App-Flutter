
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'todo_event.dart';
import 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(TodoState initialState) : super(initialState);
  List<String> _todoItems = [];


  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is InitEvent) {
      // yield TodoState(text) ;
    }
    else if(event is AddEvent){
      if (event.text.length > 0){
        _todoItems.add(event.text);
      }
      yield TodoState(_todoItems);
    }
  }



  // void _addTodoItem(String task) {
  //   // Only add the task if the user actually entered something
  //   if(task.length > 0) {
  //     // Putting our code inside "setState" tells the app that our state has changed, and
  //     // it will automatically re-render the list
  //     setState(() => _todoItems.add(task));
  //   }
  // }
  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if(index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index], index);
        }
        return _buildTodoItem(_todoItems[index], index);
      },
    );
  }

  Widget _buildTodoItem(String todoText, int index) {
    return new ListTile(
      title: new Text(todoText),
      // onTap: () => _promptRemoveTodoItem(index)
    );
  }
  void _pushAddTodoScreen() {
    // Push this page onto the stack
    Navigator.of(context).push(
      // MaterialPageRoute will automatically animate the screen entry, as well as adding
      // a back button to close it
        new MaterialPageRoute(
            builder: (context) {
              return new Scaffold(
                  appBar: new AppBar(
                      title: new Text('Add a new task')
                  ),
                  body: new TextField(
                    autofocus: true,
                    onSubmitted: (val) {
                      _addTodoItem(val);
                      Navigator.pop(context); // Close the add todo screen
                    },
                    decoration: new InputDecoration(
                        hintText: 'Enter something to do...',
                        contentPadding: const EdgeInsets.all(16.0)
                    ),
                  )
              );
            }
        )
    );
  }
}
