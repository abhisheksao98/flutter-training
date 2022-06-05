// ignore_for_file: non_constant_identifier_names

import 'dart:io';

class Account {
  int AccountNO;
  double Balance = 0.0;

  bool Ispremiumcustomer;

  Account(this.AccountNO, this.Balance, this.Ispremiumcustomer);

  void printDetails() {
    print(
        'Account no = $AccountNO\nBalance = $Balance\n Premium Customer = $Ispremiumcustomer\n');
  }

  void Depositc(double amount) => print('${Balance + amount}');

  void withdraw(double amount) {
    if (Balance < 0) {
      print('Insufficient amount $Balance');
    } else {
      Balance -= amount;
      print('Balance left $Balance');
    }
  }
}

class Savings extends Account {
  late String AccountType;
  Savings(AccountNo, Balance, Ispremiumcustomer, this.AccountType)
      : super(AccountNo, Balance, Ispremiumcustomer);
  @override
  void Deposit(double amount) {
    if (Ispremiumcustomer) {
      amount = Balance + (amount) * 2;
      print('Total amount $amount');
    } else {
      amount = Balance + amount;
    }
    print('Total amount $amount');
  }
}

class CurrentAccount extends Account {
  late String AccountType;
  CurrentAccount(AccountNO, Balance, Ispremiumcustomer, this.AccountType)
      : super(AccountNO, Balance, Ispremiumcustomer);
  @override
  void withdrawam(double amount) {
    if (Balance - amount < 5000) {
      print('Insufficient balance to withdraw');
    } else {
      Balance -= amount;
    }
  }
}

void main() {
  var sa1 = Savings(101, 5000.0, true, 'Savings');
  var sa2 = Savings(102, 10000.0, false, 'Savings');
  var sa3 = Savings(103, 100.0, true, 'Savings');
  sa1.printDetails();
  var sa1dep = double.parse(stdin.readLineSync()!);
  sa1.Deposit(sa1dep);
  sa1.withdraw(1000);
  print('----------------------------------');
  sa2.printDetails();
  sa2.Deposit(1000);
  sa2.withdraw(1000);
  print('-----------------------------------');
  var c1 = CurrentAccount(90, 800.0, false, 'current');
  c1.printDetails();
  c1.withdrawam(100);
  c1.Depositc(90000);
}
