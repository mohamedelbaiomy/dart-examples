// Payment System Using Interfaces
//
// Imagine you are building a payment system that supports multiple payment methods (e.g., Credit Card, PayPal, and Crypto).
// Each payment method has its own implementation, but they all follow a common interface for processing payments.

//

// Define the Interface
// The interface defines the contract that all payment methods must follow.

abstract class PaymentMethod {
  void processPayment(double amount);
  void refundPayment(double amount);
}

// Implement the Interface
// Each payment method implements the PaymentMethod interface and provides its own implementation.

class CreditCard implements PaymentMethod {
  @override
  void processPayment(double amount) {
    print("Processing Credit Card payment of \$$amount");
  }

  @override
  void refundPayment(double amount) {
    print("Refunding \$$amount to Credit Card");
  }
}

class PayPal implements PaymentMethod {
  @override
  void processPayment(double amount) {
    print("Processing PayPal payment of \$$amount");
  }

  @override
  void refundPayment(double amount) {
    print("Refunding \$$amount to PayPal");
  }
}

class Crypto implements PaymentMethod {
  @override
  void processPayment(double amount) {
    print("Processing Crypto payment of \$$amount");
  }

  @override
  void refundPayment(double amount) {
    print("Refunding \$$amount in Crypto");
  }
}

// Use the Interface
// The payment system doesn’t need to know the details of each payment method. It only interacts with the PaymentMethod interface.

class PaymentSystem {
  void makePayment(PaymentMethod paymentMethod, double amount) {
    paymentMethod.processPayment(amount);
  }

  void issueRefund(PaymentMethod paymentMethod, double amount) {
    paymentMethod.refundPayment(amount);
  }
}

// Test the System
// Now, let’s test the payment system with different payment methods.

void main() {
  PaymentSystem paymentSystem = PaymentSystem();

  PaymentMethod creditCard = CreditCard();
  PaymentMethod payPal = PayPal();
  PaymentMethod crypto = Crypto();

  // Process payments
  paymentSystem.makePayment(
      creditCard, 100.0); // Output: Processing Credit Card payment of $100.0
  paymentSystem.makePayment(
      payPal, 50.0); // Output: Processing PayPal payment of $50.0
  paymentSystem.makePayment(
      crypto, 200.0); // Output: Processing Crypto payment of $200.0

  // Issue refunds
  paymentSystem.issueRefund(
      creditCard, 30.0); // Output: Refunding $30.0 to Credit Card
  paymentSystem.issueRefund(payPal, 20.0); // Output: Refunding $20.0 to PayPal
  paymentSystem.issueRefund(
      crypto, 100.0); // Output: Refunding $100.0 in Crypto

  // Add New Payment Method
  PaymentMethod applePay = ApplePay();

  // Process payment with Apple Pay
  paymentSystem.makePayment(
      applePay, 75.0); // Output: Processing Apple Pay payment of $75.0

  // Issue refund with Apple Pay
  paymentSystem.issueRefund(
      applePay, 25.0); // Output: Refunding $25.0 to Apple Pay
}

// Why Interfaces Are Useful
// Consistency:
//
// The PaymentMethod interface ensures that all payment methods implement the processPayment and refundPayment methods. This makes the code predictable and easier to maintain.
//
// Flexibility:
//
// You can add new payment methods (e.g., Apple Pay, Google Pay) without modifying the PaymentSystem class. As long as the new payment method implements the PaymentMethod interface, it will work seamlessly.
//
// Decoupling:
//
// The PaymentSystem class doesn’t need to know the details of how each payment method works. It only interacts with the PaymentMethod interface, making the system loosely coupled.
//
// Testing:
//
// You can easily test the PaymentSystem by creating mock implementations of the PaymentMethod interface.

// Adding a New Payment Method
// Let’s add a new payment method (e.g., Apple Pay) to demonstrate the flexibility of interfaces.

class ApplePay implements PaymentMethod {
  @override
  void processPayment(double amount) {
    print("Processing Apple Pay payment of \$$amount");
  }

  @override
  void refundPayment(double amount) {
    print("Refunding \$$amount to Apple Pay");
  }
}

// Key Takeaways:
// Interfaces define a contract: They specify what methods a class must implement.
//
// Promote consistency: All implementations follow the same structure.
//
// Enable flexibility: New implementations can be added without modifying existing code.
//
// Support loose coupling: Classes depend on abstractions (interfaces) rather than concrete implementations.
