abstract class parents {
  parents() {
    print('This is a base class of parent');
  }
}

class friends {
  friends() {}
}

class relatives {
  relatives() {
    print('This ia relative class');
  }
}

class me extends parents implements friends, relatives {
  friends() {
    print('This is a interface friends class');
  }

  relatives() {
    print('This is a relative interface class');
  }
}

void main(List<String> args) {
  var Me = me();
  Me.friends();
  Me.relatives();
}
