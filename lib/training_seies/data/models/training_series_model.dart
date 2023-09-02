import 'package:task_flutter_mohamed_shaaban/core/extension_manager.dart';

import '../../domain/entities/training_series_entity.dart';

class TrainingSeriesModel extends TrainingSeriesEntity {
  TrainingSeriesModel({
    final List<Overview>? data,
  }) : super(
          trainingSeries: data.orEmptyList(),
        );

  factory TrainingSeriesModel.fromJson(Map<String, dynamic> json) =>
      TrainingSeriesModel(
        data: json["data"] == null
            ? []
            : List<Overview>.from(
                json["data"]!.map((x) => Overview.fromJson(x))),
      );
}

class Overview extends OverviewEntity {
  Overview({
    final int? id,
    final String? coverPhoto,
    final String? seriesName,
    final String? titleRunTime,
    final String? description,
    final String? difficulty,
    final String? intensity,
    final List<Coach>? coaches,
    final List<Class>? classes,
  }) : super(
          id: id.orZero(),
          coverPhoto: coverPhoto.orEmpty(),
          description: description.orEmpty(),
          seriesName: seriesName.orEmpty(),
          titleRunTime: titleRunTime.orEmpty(),
          difficulty: difficulty.orEmpty(),
          intensity: intensity.orEmpty(),
          classes: classes.orEmptyList(),
          coaches: coaches.orEmptyList(),
        );

  factory Overview.fromJson(Map<String, dynamic> json) => Overview(
        id: json["id"],
        coverPhoto: json["cover_photo"],
        seriesName: json["series_name"],
        titleRunTime: json["title_run_time"],
        description: json["description"],
        difficulty: json["difficulty"],
        intensity: json["intensity"],
        coaches: json["coaches"] == null
            ? []
            : List<Coach>.from(json["coaches"]!.map((x) => Coach.fromJson(x))),
        classes: json["classes"] == null
            ? []
            : List<Class>.from(json["classes"]!.map((x) => Class.fromJson(x))),
      );
}

class Coach extends CoachEntity {
  Coach({
    final int? id,
    final String? name,
    final String? bio,
  }) : super(
          id: id.orZero(),
          name: name.orEmpty(),
          bio: bio.orEmpty(),
        );

  factory Coach.fromJson(Map<String, dynamic> json) => Coach(
        id: json["id"],
        name: json["name"],
        bio: json["bio"],
      );
}

class Class extends ClassEntity {
  Class({
    final int? id,
    final String? title,
    final String? durations,
    final bool? isSeen,
    final String? description,
    final String? video,
    final Community? community,
  }) : super(
          id: id.orZero(),
          description: description.orEmpty(),
          title: title.orEmpty(),
          isSeen: isSeen.orEmptyB(),
          durations: durations.orEmpty(),
          video: video.orEmpty(),
          community: community,
        );

  factory Class.fromJson(Map<String, dynamic> json) => Class(
        id: json["id"],
        title: json["title"],
        durations: json["durations"],
        isSeen: json["isSeen"],
        description: json["description"],
        video: json["video"],
        community: json["community"] == null
            ? null
            : Community.fromJson(json["community"]),
      );
}

class Community extends CommunityEntity {
  Community({
    final int? countLikes,
    final List<UsersCommunity>? usersCommunity,
  }) : super(
          countLikes: countLikes.orZero(),
          usersCommunity: usersCommunity.orEmptyList(),
        );

  factory Community.fromJson(Map<String, dynamic> json) => Community(
        countLikes: json["count_likes"],
        usersCommunity: json["users_community"] == null
            ? []
            : List<UsersCommunity>.from(json["users_community"]!
                .map((x) => UsersCommunity.fromJson(x))),
      );
}

class UsersCommunity extends UsersCommunityEntity {
  UsersCommunity({
    final int? userId,
    final String? userName,
    final String? userPhoto,
    final String? timeComment,
    final String? desComment,
  }) : super(
            userId: userId.orZero(),
            userName: userName.orEmpty(),
            userPhoto: userPhoto.orEmpty(),
            desComment: desComment.orEmpty(),
            timeComment: timeComment.orEmpty());

  factory UsersCommunity.fromJson(Map<String, dynamic> json) => UsersCommunity(
        userId: json["user_id"],
        userName: json["user_name"],
        userPhoto: json["user_photo"],
        timeComment: json["time_comment"],
        desComment: json["des_comment"],
      );
}
