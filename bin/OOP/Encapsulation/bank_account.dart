// Encapsulation is the concept of bundling data (attributes) and methods (functions) that operate
// on the data into a single unit (class) and restricting access to some of the object's components.

class BankAccount {
  double _balance = 0; // Private variable

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance.");
    }
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(1000); // Output: Deposited: 1000.0
  account.withdraw(500); // Output: Withdrawn: 500.0
  print("Balance: ${account.getBalance()}"); // Output: Balance: 500.0
}
