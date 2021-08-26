abstract class TodoEvent {
  String text;

  TodoEvent(this.text);

  factory TodoEvent.Init(var text)=> InitEvent(text);
  factory TodoEvent.add(var text)=> AddEvent(text);
  factory TodoEvent.delete(var text)=> DeleteEvent(text);
}

class InitEvent extends TodoEvent {
  InitEvent(text) : super(text);
}

class AddEvent extends TodoEvent {
  AddEvent(text) : super(text);
}

class DeleteEvent extends TodoEvent {
  DeleteEvent(text) : super(text);
}
