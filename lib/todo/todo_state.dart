class TodoState {
  List<String> text;

  TodoState(this.text);

  factory TodoState.init(var text) => InitState(text);
  factory TodoState.added(var text)=> AddState(text);
  factory TodoState.deleted(var text)=> DeleteState(text);
}

class InitState extends TodoState {
  InitState(text): super(text);
}

class AddState extends TodoState {
  AddState(text) : super(text);
}

class DeleteState extends TodoState {
  DeleteState(text) : super(text);
}
