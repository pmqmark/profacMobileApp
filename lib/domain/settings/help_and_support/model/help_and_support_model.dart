class HelpAndSupportResponseModel {
  final bool success;
  final String message;
  final List<HelpTopicModel> result;
  final dynamic error;

  HelpAndSupportResponseModel({
    this.success = false,
    this.message = '',
    this.result = const [],
    this.error,
  });

  factory HelpAndSupportResponseModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return HelpAndSupportResponseModel();

    try {
      final data = json['data'] as Map<String, dynamic>? ?? {};
      final resultList = data['result'] as List? ?? [];

      return HelpAndSupportResponseModel(
        success: json['success'] as bool? ?? false,
        message: json['message'] as String? ?? '',
        result: resultList.map((e) => HelpTopicModel.fromJson(e)).toList(),
        error: json['error'],
      );
    } catch (e) {
      return HelpAndSupportResponseModel();
    }
  }
}

class HelpTopicModel {
  final String id;
  final String topic;
  final String subtopic;
  final List<HelpSubTopicModel> list;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int version;

  HelpTopicModel({
    this.id = '',
    this.topic = '',
    this.subtopic = '',
    this.list = const [],
    this.createdAt,
    this.updatedAt,
    this.version = 0,
  });

  factory HelpTopicModel.fromJson(dynamic json) {
    if (json is! Map<String, dynamic>) return HelpTopicModel();

    try {
      final subTopicList = json['list'] as List? ?? [];
      final createdAt = _parseDateTime(json['createdAt']);
      final updatedAt = _parseDateTime(json['updatedAt']);

      return HelpTopicModel(
        id: json['_id'] as String? ?? '',
        topic: json['topic'] as String? ?? '',
        subtopic: json['subtopic'] as String? ?? '',
        list: subTopicList.map((e) => HelpSubTopicModel.fromJson(e)).toList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
        version: (json['__v'] as num?)?.toInt() ?? 0,
      );
    } catch (e) {
      return HelpTopicModel();
    }
  }

  static DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    try {
      return DateTime.tryParse(value.toString());
    } catch (e) {
      return null;
    }
  }
}

class HelpSubTopicModel {
  final HelpButtonModel? button;
  final String title;
  final String content;
  final String screenType;
  final String id;

  HelpSubTopicModel({
    required this.button,
    this.title = '',
    this.content = '',
    this.screenType = '',
    this.id = '',
  });

  factory HelpSubTopicModel.fromJson(dynamic json) {
    return HelpSubTopicModel(
      button: HelpButtonModel.fromJson(json['button']),
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      screenType: json['screenType'] as String? ?? '',
      id: json['_id'] as String? ?? '',
    );
  }
}

class HelpButtonModel {
  final String text;
  final String route;

  const HelpButtonModel({
    required this.text,
    required this.route,
  });

  factory HelpButtonModel.fromJson(dynamic json) {
    return HelpButtonModel(
      text: json['text'] as String? ?? '',
      route: json['route'] as String? ?? '',
    );
  }
}
