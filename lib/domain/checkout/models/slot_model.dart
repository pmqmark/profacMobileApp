class SlotDateModel {
  final DateTime date;
  final String day;
  final List<SlotModel> slots;

  SlotDateModel({required this.date, required this.day, required this.slots});
}

class SlotModel {
  final String id;
  final String time;
  final String status;
  final DateTime date;

  SlotModel({
    required this.id,
    required this.time,
    required this.status,
    required this.date,
  });

  factory SlotModel.fromJson(Map<String, dynamic> json) {
    // Parse date and handle exceptions
    final String dateString = json['date'];
    DateTime parsedDate;
    try {
      parsedDate = DateTime.parse(dateString);
    } catch (e) {
      throw FormatException('Invalid date format: $dateString');
    }

    return SlotModel(
      id: json['_id'],
      time: json['time'],
      status: json['status'],
      date: parsedDate,
    );
  }
}

List<SlotDateModel> parseSlotApiResponse(Map<String, dynamic> response) {
  // Check for response validity
  if (response['success'] != true ||
      response['data'] == null ||
      response['data']['slots'] == null) {
    throw FormatException('Invalid API response format');
  }

  final List<dynamic> slotsData = response['data']['slots'];

  // Group slots by date
  final Map<DateTime, List<SlotModel>> groupedSlots = {};

  for (var slotData in slotsData) {
    try {
      // Create SlotModel
      final slot = SlotModel.fromJson(slotData);

      // Add slot to grouped map
      if (!groupedSlots.containsKey(slot.date)) {
        groupedSlots[slot.date] = [];
      }
      groupedSlots[slot.date]!.add(slot);
    } catch (e) {
      // Log and skip invalid entries
      print('Error parsing slot data: $e');
      continue;
    }
  }

  // Convert grouped slots into SlotDateModel list
  return groupedSlots.entries.map((entry) {
    final parsedDate = entry.key;
    final day = getDayOfWeek(parsedDate);
    return SlotDateModel(date: parsedDate, day: day, slots: entry.value);
  }).toList();
}

String getDayOfWeek(DateTime date) {
  const daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  return daysOfWeek[date.weekday - 1];
}

String getMonthName(int month) {
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  return months[month];
}