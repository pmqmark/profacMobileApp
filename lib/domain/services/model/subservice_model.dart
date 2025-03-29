import 'package:profac/domain/services/model/option_model.dart';
import 'package:profac/domain/services/model/review_model.dart';

class SubServiceModel {
  final String id;
  final bool isPackage;
  final String name;
  final List<OptionModel> options;
  final List<AboutProcess> about;
  final String steps;
  final List<String> brands;
  final List<Tip> tips;
  final List<Included> included;
  final List<Excluded> excluded;
  final List<String> notes;
  final List<FAQModel> faqs;
  final List<Media> media;
  final bool isArchived;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int v;
  final double avgRating;
  final int? reviewCount;
  final Map<String, int>? ratingCount;
  final String thumbnailUrl;
  SubServiceModel({
    required this.id,
    required this.isPackage,
    required this.name,
    required this.options,
    required this.about,
    required this.steps,
    required this.brands,
    required this.tips,
    required this.included,
    required this.excluded,
    required this.notes,
    required this.faqs,
    required this.media,
    required this.isArchived,
    this.createdAt,
    this.updatedAt,
    required this.v,
    required this.avgRating,
    this.reviewCount,
    this.ratingCount,
    required this.thumbnailUrl,
  });

  factory SubServiceModel.fromJson(Map<String, dynamic> json) {
    return SubServiceModel(
        id: json['_id'] ?? '',
        isPackage: json['isPackage'] ?? false,
        name: json['name'] ?? '',
        options: List<OptionModel>.from(
            json['options'].map((x) => OptionModel.fromJson(x))),
        about: json.containsKey('about') && json['about'] != null
            ? List<AboutProcess>.from(
                json['about'].map((x) => AboutProcess.fromJson(x)))
            : [],
        steps: json['steps'] ?? '',
        brands: json.containsKey('brands') && json['brands'] != null
            ? List<String>.from(json['brands'])
            : [],
        tips: json.containsKey('tips') && json['tips'] != null
            ? List<Tip>.from(json['tips'].map((x) => Tip.fromJson(x)))
            : [],
        included: json.containsKey('included') && json['included'] != null
            ? List<Included>.from(
                json['included'].map((x) => Included.fromJson(x)))
            : [],
        excluded: json.containsKey('excluded') && json['excluded'] != null
            ? List<Excluded>.from(
                json['excluded'].map((x) => Excluded.fromJson(x)))
            : [],
        notes: json.containsKey('notes') && json['notes'] != null
            ? List<String>.from(json['notes'])
            : [],
        faqs: json.containsKey('faqs') && json['faqs'] != null
            ? List<FAQModel>.from(json['faqs'].map((x) => FAQModel.fromJson(x)))
            : [],
        media: json.containsKey('media') && json['media'] != null
            ? List<Media>.from(json['media'].map((x) => Media.fromJson(x)))
            : [],
        isArchived: json['isArchived'] ?? false,
        createdAt: json.containsKey('createdAt') && json['createdAt'] != null
            ? DateTime.parse(json['createdAt'])
            : null,
        updatedAt: json.containsKey('updatedAt') && json['updatedAt'] != null
            ? DateTime.parse(json['updatedAt'])
            : null,
        v: json['__v'] ?? 0,
        avgRating:
            json.containsKey('avgRating') && json['avgRating'] != null ? double.tryParse(json['avgRating'].toStringAsFixed(1)) ?? 0.0 : 0,
        reviewCount: json.containsKey('reviewCount') ? json['reviewCount'] : null,
        ratingCount: json.containsKey('ratingCount') ? Map<String, int>.from(json['ratingCount']) : null,
        thumbnailUrl: json.containsKey('thumbnail') && json['thumbnail'] != null ? json['thumbnail']['location'] as String : '');
  }
}

class DetailedSubServiceModel {
  final List<ReviewModel> reviews;
  final SubServiceModel subServiceModel;

  DetailedSubServiceModel(
      {required this.reviews, required this.subServiceModel});
  factory DetailedSubServiceModel.fromJson(Map<String, dynamic> t) {
    final json = t['data']['result']['subservice'];
    return DetailedSubServiceModel(
        reviews: json.containsKey('reviews')
            ? List<ReviewModel>.from(
                json['reviews'].map((x) => ReviewModel.fromJson(x)),
              )
            : [],
        subServiceModel: SubServiceModel.fromJson(json));
  }
}

class AboutProcess {
  final String title;
  final String description;

  AboutProcess({
    required this.title,
    required this.description,
  });

  factory AboutProcess.fromJson(Map<String, dynamic> json) {
    return AboutProcess(
      title: json['title'],
      description: json['description'],
    );
  }
}

class Tip {
  final bool flag;
  final String text;
  final String id;

  Tip({
    required this.flag,
    required this.text,
    required this.id,
  });

  factory Tip.fromJson(Map<String, dynamic> json) {
    return Tip(
      flag: json['flag'],
      text: json['text'],
      id: json['_id'],
    );
  }
}

class Included {
  final bool flag;
  final String text;
  final String id;

  Included({
    required this.flag,
    required this.text,
    required this.id,
  });

  factory Included.fromJson(Map<String, dynamic> json) {
    return Included(
      flag: json['flag'],
      text: json['text'],
      id: json['_id'],
    );
  }
}

class Excluded {
  final bool flag;
  final String text;
  final String id;

  Excluded({
    required this.flag,
    required this.text,
    required this.id,
  });

  factory Excluded.fromJson(Map<String, dynamic> json) {
    return Excluded(
      flag: json['flag'],
      text: json['text'],
      id: json['_id'],
    );
  }
}

class FAQModel {
  final String ques;
  final String ans;
  final String id;

  FAQModel({
    required this.ques,
    required this.ans,
    required this.id,
  });

  factory FAQModel.fromJson(Map<String, dynamic> json) {
    return FAQModel(
      ques: json['ques'],
      ans: json['ans'],
      id: json['_id'],
    );
  }
}

class Media {
  final String location;
  final String name;
  final String key;
  final String id;

  Media({
    required this.location,
    required this.name,
    required this.key,
    required this.id,
  });

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
      location: json['location'],
      name: json['name'],
      key: json['key'],
      id: json['_id'],
    );
  }
}
