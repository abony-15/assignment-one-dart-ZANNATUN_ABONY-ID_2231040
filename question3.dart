// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
// TODO: Complete the following requirements:

// Create a BankAccount class with the following specifications:
class BankAccount {
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking
  
  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  // TODO: Implement the constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;
  
  // 3. Methods:
  //    - deposit(double amount): Add money to account
  // TODO: Implement the deposit method
  void deposit(double amount) {
    // TODO: Add the amount to balance
    if (amount > 0) {
      balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)} to account $accountNumber");
    } else {
      print("Invalid deposit amount");
    }
  }
  
  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  // TODO: Implement the withdraw method
  void withdraw(double amount) {
    // TODO: Check for sufficient funds and subtract amount
    // TODO: Print error message if insufficient funds
    if (amount > 0) {
      if (amount <= balance) {
        balance -= amount;
        print("Withdrawn: \$${amount.toStringAsFixed(2)} from account $accountNumber");
      } else {
        print("Insufficient funds for withdrawal of \$${amount.toStringAsFixed(2)} from account $accountNumber");
      }
    } else {
      print("Invalid withdrawal amount");
    }
  }
  
  //    - getBalance(): Return current balance
  // TODO: Implement the getBalance method
  double getBalance() {
    // TODO: Return the current balance
    return balance; // TODO: Replace with actual balance
  }
  
  //    - displayAccountInfo(): Show account details
  // TODO: Implement the displayAccountInfo method
  void displayAccountInfo() {
    // TODO: Display account information
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario
  
  // TODO: Create 3 bank accounts
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");

  print("=== Initial Deposits ===");
  
  // TODO: Demonstrate depositing money
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);

  print("\n=== Withdrawals ===");
  
  // TODO: Demonstrate withdrawing money
  account1.withdraw(200.0);
  account2.withdraw(100.0);

  print("\n=== Account Information ===");
  
  // TODO: Display account information
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  print("\n=== Insufficient Funds Test ===");
  
  // TODO: Demonstrate insufficient funds scenario
  account2.withdraw(1000.0); // This should show insufficient funds message

  print("\n=== Final Balances ===");
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();
}
