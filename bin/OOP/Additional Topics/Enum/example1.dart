// Enums (enumerations) are used to define a set of named constants.
// They make your code more readable and maintainable by replacing magic numbers or strings with meaningful names.

// Define an enum
enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

// Use the enum in a class
class Order {
  String id;
  OrderStatus status;

  Order(this.id, this.status);

  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
    print("Order $id status updated to: ${newStatus.name}");
  }

  void displayStatus() {
    switch (status) {
      case OrderStatus.pending:
        print("Order $id is pending.");
        break;
      case OrderStatus.processing:
        print("Order $id is being processed.");
        break;
      case OrderStatus.shipped:
        print("Order $id has been shipped.");
        break;
      case OrderStatus.delivered:
        print("Order $id has been delivered.");
        break;
      case OrderStatus.cancelled:
        print("Order $id has been cancelled.");
        break;
    }
  }
}

void main() {
  Order order = Order("12345", OrderStatus.pending);
  order.displayStatus(); // Output: Order 12345 is pending.

  order.updateStatus(OrderStatus.processing);
  order.displayStatus(); // Output: Order 12345 is being processed.

  order.updateStatus(OrderStatus.shipped);
  order.displayStatus(); // Output: Order 12345 has been shipped.
}

// Why Enums Are Useful:
// Readability:
//
// Enums make your code more readable by replacing magic values (e.g., 0, 1, 2) with meaningful names (e.g., OrderStatus.pending).
//
// Type Safety:
//
// Enums ensure that only valid values are used, reducing the risk of errors.
//
// Maintainability:
//
// If you need to add or remove statuses, you only need to update the enum definition.
//
// Switch Statements:
//
// Enums work seamlessly with switch statements, making it easy to handle different cases
