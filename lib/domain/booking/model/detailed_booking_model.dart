import 'dart:developer';

import 'package:profac/domain/booking/model/booking_model.dart';

class DetailedBookingModel {
  final bool success;
  final String message;
  final String id;
  final String transactionId;
  final String categoryName;
  final BookingUser user;
  final BookingSlot slot;
  final BookingAddress address;
  final double subtotal;
  final double totalTax;
  final double tip;
  final double discount;
  final double amount;
  final BookingStatus status;
  final String payMethod;
  final String payStatus;
  final List<BookingOption> options;
  final DateTime createdAt;
  DetailedBookingModel({
    required this.success,
    required this.message,
    required this.id,
    required this.transactionId,
    required this.categoryName,
    required this.user,
    required this.slot,
    required this.address,
    required this.subtotal,
    required this.totalTax,
    required this.tip,
    required this.discount,
    required this.amount,
    required this.status,
    required this.payMethod,
    required this.payStatus,
    required this.options,
    required this.createdAt,
  });

  factory DetailedBookingModel.fromJson(Map<String, dynamic> json) {
    // Safely extract and convert options
    final options = <BookingOption>[];

    if (json['data']?['item']?['subservices'] is List) {
      final subservices = json['data']['item']['subservices'] as List;
      for (final subservice in subservices) {
        if (subservice['options'] is List) {
          final optionList = subservice['options'] as List;
          options.addAll(optionList
              .map((optionJson) =>
                  BookingOption.fromJson(optionJson as Map<String, dynamic>))
              .toList());
        }
      }
    }

    return DetailedBookingModel(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      id: json['data']?['_id'] ?? '',
      transactionId: json['data']?['transactionId'] ?? '',
      categoryName: json['data']?['item']?['categoryId']?['name'] ?? '',
      user: BookingUser.fromJson(json['data']?['userId'] ?? {}),
      slot: BookingSlot.fromJson(json['data']?['slotId'] ?? {}),
      address: BookingAddress.fromJson(json['data']?['addressId'] ?? {}),
      subtotal: (json['data']?['subtotal'] as num?)?.toDouble() ?? 0.0,
      totalTax: (json['data']?['totalTax'] as num?)?.toDouble() ?? 0.0,
      tip: (json['data']?['tip'] as num?)?.toDouble() ?? 0.0,
      discount: (json['data']?['discount'] as num?)?.toDouble() ?? 0.0,
      amount: (json['data']?['amount'] as num?)?.toDouble() ?? 0.0,
      status: BookingStatus.values.firstWhere(
        (e) => e.name == (json['data']?['status'] ?? 'pending'),
        orElse: () => BookingStatus.pending,
      ),
      payMethod: json['data']?['payMethod'] ?? '',
      payStatus: json['data']?['payStatus'] ?? '',
      options: options,
      createdAt: DateTime.parse(
          json['data']?['createdAt'] ?? DateTime.now().toIso8601String()),
    );
  }
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

class BookingUser {
  final String id;
  final String name;
  final String email;

  BookingUser({
    required this.id,
    required this.name,
    required this.email,
  });

  factory BookingUser.fromJson(Map<String, dynamic> json) {
    return BookingUser(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
    );
  }
}

class BookingSlot {
  final String id;
  final DateTime date;
  final String time;

  BookingSlot({
    required this.id,
    required this.date,
    required this.time,
  });

  factory BookingSlot.fromJson(Map<String, dynamic> json) {
    log(json['_id'].toString());
    return BookingSlot(
      id: json['_id'] ?? '',
      date: DateTime.parse(json['date'] ?? DateTime.now().toIso8601String()),
      time: json['time'] ?? '',
    );
  }
}

class BookingAddress {
  final String id;
  final String type;
  final String shortName;
  final String formattedAddress;
  final String houseNumber;
  final String landmark;
  final String name;
  final String mobile;
  final List<double> coordinates;

  BookingAddress({
    required this.id,
    required this.type,
    required this.shortName,
    required this.formattedAddress,
    required this.houseNumber,
    required this.landmark,
    required this.name,
    required this.mobile,
    required this.coordinates,
  });

  factory BookingAddress.fromJson(Map<String, dynamic> json) {
    return BookingAddress(
      id: json['_id'] ?? '',
      type: json['type'] ?? '',
      shortName: json['short_name'] ?? '',
      formattedAddress: json['formatted_address'] ?? '',
      houseNumber: json['house_number'] ?? '',
      landmark: json['landmark'] ?? '',
      name: json['name'] ?? '',
      mobile: json['mobile'] ?? '',
      coordinates: (json['coordinates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
    );
  }
}

class BookingSubservice {
  final String id;
  final String name;
  final List<BookingOption> options;

  BookingSubservice({
    required this.id,
    required this.name,
    required this.options,
  });

  factory BookingSubservice.fromJson(Map<String, dynamic> json) {
    return BookingSubservice(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => BookingOption.fromJson(e))
              .toList() ??
          [],
    );
  }
}
