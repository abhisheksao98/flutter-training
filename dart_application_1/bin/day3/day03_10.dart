void outerfunction() {
  print('outer function');
  void inneerfunction() {
    print('inner function');
  }

  inneerfunction();
}

void main() {
  outerfunction();
}
