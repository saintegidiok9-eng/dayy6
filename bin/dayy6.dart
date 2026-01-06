class BankAccount {
  String ownerName;
  double _balance;

  // Constructor
  BankAccount(this.ownerName, this._balance);

  // Deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("$ownerName deposited GH₵$amount");
    } else {
      print("Invalid deposit amount");
    }
  }

  // Withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("$ownerName withdrew GH₵$amount");
    } else {
      print("Insufficient balance or invalid amount");
    }
  }

  // Show balance
  void showBalance() {
    print("Account Owner: $ownerName");
    print("Current Balance: GH₵$_balance");
  }
}

void main() {
  BankAccount account1 = BankAccount("Kwame", 1000);

  account1.showBalance();
  account1.deposit(500);
  account1.withdraw(300);
  account1.showBalance();

  print("--------------");

  BankAccount account2 = BankAccount("Ama", 2000);
  account2.withdraw(2500); // invalid
  account2.deposit(1000);
  account2.showBalance();
}
