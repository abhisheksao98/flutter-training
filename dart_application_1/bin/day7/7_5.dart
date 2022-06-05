import 'dart:async';

class Stack<T> {
  final List<T> _stack = [];
  void push(T item) => _stack.add(item);
  pop() => _stack.removeLast();
  T getvalue(int position) => _stack[position];
  int getCount() => _stack.length;
}

void main() {
  final stack = Stack<String>();
  stack.push('one');
  stack.push('two');
  stack.push('three');
  stack.push('four');
  printStack(stack);

  stack.pop();
  printStack(stack);

  final intStack = Stack<int>();
  intStack.push(90);
  intStack.push(10);
  printStack(intStack);
}

void printStack(stack) {
  for (var i = 0; i < stack.getCount(); i++) {
    print(stack.getvalue(i));
  }
}
