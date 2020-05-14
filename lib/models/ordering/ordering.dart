class CloverWrapper {
  Order createOrderInClover(Order orderToBeCreated) => throw Exception("Needs to be implemented");

  Order addItemToOrder(OrderItem item) => throw Exception("Needs to be implemented");

  Order updateItemCountOrder(OrderItem item) => throw Exception("Needs to be implemented");

  Order removeItemFromOrder(OrderItem item) => throw Exception("Needs to be implemented");

  TransactionDetails payOrder(Order order, PaymentInfo paymentInfo) => throw Exception("Needs to be implemented");
}

class Item {
  final String id; // item id
  final String name;
  final double price;
  // Define whatever else is needed

  Item({this.id, this.name, this.price});
}

class OrderItem {
  final Item orderItem;
  final int count;
  // Define whatever else is needed

  OrderItem({this.orderItem, this.count});
}

class Order {
  final String id; // order id
  final List<OrderItem> orderItems;
  // Define whatever else is needed

  Order(this.id, this.orderItems);
}

enum PaymentMethod {
  creditCard,
  giftCard,
  // Define whatever else is needed
}

class PaymentInfo {
  final CreditCardInfo ccInfo;
  final GiftCardInfo giftCard;
  final PaymentMethod paymentMethodToUse;
  // Define whatever else is needed

  PaymentInfo(this.ccInfo, this.giftCard, this.paymentMethodToUse);
}

class CreditCardInfo {
  final String nameOnCard;
  final String ccNumber;
  final String expiry;
  final String cvvCode;
  // Define whatever else is needed

  CreditCardInfo(this.nameOnCard, this.ccNumber, this.expiry, this.cvvCode);
}

class GiftCardInfo {
  // TODO - needs to be defined
}

class TransactionDetails {
  final String id;
  final String status;
  // Define whatever else is needed

  TransactionDetails(this.id, this.status);
}