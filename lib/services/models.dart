import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable(explicitToJson: true)
class Option {
  String value;
  String detail;
  bool correct;

  Option({this.value = '', this.detail = '', this.correct = false});
  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Question {
  String text;
  List<Option> options;

  Question({this.text = '', this.options = const []});
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Quiz {
  String id;
  String title;
  String description;
  String video;
  String topic;
  List<Question> questions;

  Quiz({
    this.id = '',
    this.title = '',
    this.description = '',
    this.video = '',
    this.topic = '',
    this.questions = const [],
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  Map<String, dynamic> toJson() => _$QuizToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Topic {
  final String id;
  final String title;
  final String description;
  final String img;
  final List<Quiz> quizzes;

  Topic({
    this.id = '',
    this.title = '',
    this.description = '',
    this.img = 'default.png',
    this.quizzes = const [],
  });

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
  Map<String, dynamic> toJson() => _$TopicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Report {
  String uid;
  int total;
  Map topics;

  Report({this.uid = '', this.total = 0, this.topics = const {}});
  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
  Map<String, dynamic> toJson() => _$ReportToJson(this);
}
