class CartReponseModel {
  final List<CartModel> cartModels;
  CartReponseModel({required this.cartModels});
  factory CartReponseModel.fromJson(Map<String, dynamic> json) {
    return CartReponseModel(
      cartModels: List<CartModel>.from(
          json["data"]["items"].map((x) => CartModel.fromJson(x))),
    );
  }
}

class CartModel {
  final String categoryId;
  final String categoryName;
  final List<SubServiceCartModel> subServiceModels;
  CartModel({
    required this.categoryName,
    required this.subServiceModels,
    required this.categoryId,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      categoryName: json["categoryId"]["name"],
      categoryId: json["categoryId"]["_id"],
      subServiceModels: List<SubServiceCartModel>.from(
          json["subservices"].map((x) => SubServiceCartModel.fromJson(x))),
    );
  }
}

class SubServiceCartModel {
  final String id;
  final String name;
  final List<OptionCartModel> optionModels;
  SubServiceCartModel(
      {required this.id,
      required this.name,
      required this.optionModels});

  factory SubServiceCartModel.fromJson(Map<String, dynamic> json) {
    return SubServiceCartModel(
      id: json["subserviceId"]["_id"],
      name: json["subserviceId"]["name"],
      optionModels: List<OptionCartModel>.from(
          json["options"].map((x) => OptionCartModel.fromJson(x))),
    );
  }
}

class OptionCartModel {
  final String id;
  final String name;
  final double price;
  final int quantity;
  OptionCartModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity});

  factory OptionCartModel.fromJson(Map<String, dynamic> json) {
    return OptionCartModel(
      id: json["optionId"]["_id"],
      name: json["optionId"]["name"],
      price: json["optionId"]["price"].toDouble(),
      quantity: json["quantity"],
    );
  }
}