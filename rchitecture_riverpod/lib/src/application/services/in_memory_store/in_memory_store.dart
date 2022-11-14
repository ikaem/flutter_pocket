// this is used only for faking

// note that we can accept generic type here and then reuse it in the class
import 'package:rxdart/rxdart.dart';

class InMemoryStore<T> {
  // here we immeidatelly assign sibject to have some value
  InMemoryStore(T initial) : _subject = BehaviorSubject<T>.seeded(initial);

  // this is the behavior subject that holds the data
  final BehaviorSubject<T> _subject;

  // we can also get a stream emitting the data
  Stream<T> get stream => _subject.stream;

  // we can get a syncronous getter for the current value in the subject
  T get value => _subject.value;

  // and we expose setter for setting the value - ntoe that this is actually a setter
  // note that getter and setter can be with same name
  // but, calling them is different - setter is called as a function so we can pass it an argument
  set value(T value) => _subject.add(value);

  // and a function to close the im memory store - close the subject actually, becuase it is an observable it seems
  void close() => _subject.close();
}
