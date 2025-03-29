class BookingResponseModel {
  final List<BookingModel> bookings;
  final PaginationInfo pagination;

  BookingResponseModel({
    required this.bookings,
    required this.pagination,
  });

  factory BookingResponseModel.fromJson(Map<String, dynamic> json) {
    return BookingResponseModel(
      bookings: (json['data']?['result'] as List?)
              ?.map((item) => BookingModel.fromJson(item))
              .toList() ??
          [],
      pagination: PaginationInfo.fromJson(json['data']?['pagination'] ?? {}),
    );
  }
}

class PaginationInfo {
  final int total;
  final int? currentPage;
  final int? totalPages;
  final int? limit;

  PaginationInfo({
    required this.total,
    this.currentPage,
    this.totalPages,
    this.limit,
  });

  factory PaginationInfo.fromJson(Map<String, dynamic> json) {
    return PaginationInfo(
      total: json['total'] ?? 0,
      currentPage: json.containsKey('currentPage') ? json['currentPage'] : null,
      totalPages: json.containsKey('totalPages') ? json['totalPages'] : null,
      limit: json.containsKey('limit') ? json['limit'] : null,
    );
  }
  bool get hasMore => total > (currentPage ?? 1) * (limit ?? 10);
}

class BookingModel {
  final String bookingId;
  final String categoryId;
  final String categoryName;
  final List<BookingOption> options;
  final String transactionId;
  final double subtotal;
  final double totalTax;
  final double tip;
  final double discount;
  final double amount;
  final BookingStatus status;
  final String payMethod;
  final String payStatus;
  final DateTime createdAt;
  final DateTime updatedAt;

  BookingModel({
    required this.bookingId,
    required this.categoryId,
    required this.categoryName,
    required this.options,
    required this.transactionId,
    required this.subtotal,
    required this.totalTax,
    required this.tip,
    required this.discount,
    required this.amount,
    required this.status,
    required this.payMethod,
    required this.payStatus,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    // Extract options from all subservices
    List<BookingOption> options = [];
    if (json['item'] != null && json['item']['subservices'] != null) {
      for (var subservice in json['item']['subservices']) {
        final subserviceId = subservice['subserviceId']['_id'] ?? '';
        if (subservice['options'] != null) {
          for (var option in subservice['options']) {
            final o = BookingOption.fromJson(option);
            o.subServiceId = subserviceId; // Set the subServiceId
            options.add(o);
          }
        }
      }
    }

    return BookingModel(
      bookingId: json['_id'] ?? '',
      categoryId: json['item']?['categoryId']?['_id'] ?? '',
      categoryName: json['item']?['categoryId']?['name'] ?? '',
      options: options,
      transactionId: json['transactionId'] ?? '',
      subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0.0,
      totalTax: (json['totalTax'] as num?)?.toDouble() ?? 0.0,
      tip: (json['tip'] as num?)?.toDouble() ?? 0.0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      status: BookingStatus.values.firstWhere(
        (e) => e.name == (json['status'] ?? 'pending'),
        orElse: () => BookingStatus.pending,
      ),
      payMethod: json['payMethod'] ?? '',
      payStatus: json['payStatus'] ?? '',
      createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now().toString()),
      updatedAt: DateTime.parse(json['updatedAt'] ?? DateTime.now().toString()),
    );
  }
}

class BookingOption {
  final String optionId;
  final String name;
  final int quantity;
  final double price;
  final int duration;
  final String id; // Add this if you need the _id field
  String? subServiceId; // Add this if you need the subServiceId field
  BookingOption({
    required this.optionId,
    required this.name,
    required this.quantity,
    required this.price,
    required this.duration,
    required this.id, // Add this
    this.subServiceId,
  });

  factory BookingOption.fromJson(Map<String, dynamic> json) {
    return BookingOption(
      optionId: json['optionId'] ?? '',
      name: json['name'] ?? '',
      quantity: json['quantity'] ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      duration: json['duration'] ?? 0,
      id: json['_id'] ?? '', // Add this
    );
  }
}

enum BookingStatus { pending, confirmed, completed, cancelled }
