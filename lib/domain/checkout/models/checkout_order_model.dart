class CheckoutOrderModel {
  final String categoryId;
  final String slotId;
  final String addressId;
  final int tip;
  final String couponCode;
  final String payMethod;
  String? receiverName;
  int? receiverPhone;
  CheckoutOrderModel({
    required this.categoryId,
    required this.slotId,
    required this.addressId,
    required this.tip,
    required this.couponCode,
    required this.payMethod,
    this.receiverName,
    this.receiverPhone,
  });

  Map<String, dynamic> toJson() {
    return {
      "categoryId": categoryId,
      "slotId": slotId,
      "addressId": addressId,
      "tip": tip,
      "couponCode": couponCode,
      "payMethod": payMethod,
      if (receiverName != null) "contactName": receiverName,
      if (receiverPhone != null) "contactPhone": receiverPhone,
    };
  }
}
