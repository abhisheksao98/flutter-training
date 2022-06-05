abstract class AbstractClass {
  void withDefinition() {
    print('This is a abstract class');
  }

  void withoutDefinition();
}

class dervivedclass extends AbstractClass {
  void withoutnoDefinition() {
    print('this is come from baseclass ');
  }

  void withoutDefinition() {
    print('abstract method from base class');
  }
}

void main() {
  var dc = dervivedclass();
  dc.withDefinition();
  dc.withoutnoDefinition();
  dc.withDefinition();
}
