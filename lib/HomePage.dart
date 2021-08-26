import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/todo/todo_state.dart';
import 'todo/todo_bloc.dart';


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) => TodoBloc()..add(InitEvent()),
//       child: Builder(builder: (context) => _buildPage(context)),
//     );
//   }
//
//   Widget _buildPage(BuildContext context) {
//     final bloc = BlocProvider.of<TodoBloc>(context);
//
//     return Container();
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TodoBloc bloc = TodoBloc(TodoState.InitState);



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Todo List')
      ),
      body: Center(
        child: BlocBuilder(builder: bloc),
      ),

    );
  }


  // floatingActionButton: new FloatingActionButton(
  // onPressed: _pushAddTodoScreen,
  // tooltip: 'Add task',
  // child: new Icon(Icons.add)
  // ),

}


