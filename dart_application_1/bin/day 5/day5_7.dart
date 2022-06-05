import 'dart:math';

class Bank {
  double balance;
  Bank(this.balance);
  void withdraw(double amount) {
    if (balance - amount < 5000) {
      throw Exception('Insufficient balance');
    } else {
      balance -= amount;
    }
  }
}

void main() {
  var account = Bank(7500);
  // try {
  //   account.withdraw(7000);
  //   print('Balance amount = ${account.balance}');
  // } catch (e) {
  //   print(e);
  // }

  try {
    account.withdraw(5000);
    print('Bank balance = ${account.balance}');
  } on Exception catch (e) {
    print(e);
  } finally {
    print('Transcation completed');
  }
}
