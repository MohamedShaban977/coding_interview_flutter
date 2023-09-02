import 'package:equatable/equatable.dart';

class TrainingSeriesEntity extends Equatable {
  final List<OverviewEntity> trainingSeries;

  const TrainingSeriesEntity({required this.trainingSeries});

  @override
  List<Object?> get props => [trainingSeries];
}

/*  {
      "id": 1,
      "cover_photo": "Ahmed Khaled",
      "series_name": "Series",
      "title_run_time":"",
      "description": "",
      "difficulty": "",
      "intensity":"",
      "coaches": [
        {
          "name": "",
          "bio" : ""
        }
      ],
      "classes":[
        {
          "id":"",
          "title": "",
          "durations":"",
          "isSeen": false,
          "dis": "",
          "video": "",
          "community": {
            "count_likes":0,
            "users_community":  [
              {
                "user_id": "",
                "user_name": "",
                "user_photo": "",
                "time_comment": "",
                "dis_comment": ""
              }
            ]
          }
        },

        }
      ]

    },*/
class OverviewEntity extends Equatable {
  final int id;

  final String coverPhoto;

  final String seriesName;

  final String description;

  final String titleRunTime;

  final String difficulty;

  final String intensity;

  final List<CoachEntity> coaches;

  final List<ClassEntity> classes;

  const OverviewEntity(
      {required this.id,
      required this.coverPhoto,
      required this.seriesName,
      required this.description,
      required this.titleRunTime,
      required this.difficulty,
      required this.intensity,
      required this.coaches,
      required this.classes});

  @override
  List<Object?> get props => [id,coverPhoto,seriesName,description,titleRunTime,difficulty,intensity];
}


/*   {
          "id": 1,
          "name": "",
          "bio" : ""
        },*/
class CoachEntity extends Equatable {
  final int id;
  final String name;
  final String bio;

  const CoachEntity({required this.id, required this.name, required this.bio});

  @override
  List<Object?> get props => [id, name, bio];
}


/*   {
          "id":"",
          "title": "",
          "durations":"",
          "isSeen": false,
          "dis": "",
          "video": "",
          "community": {
            "count_likes":0,
            "users_community":  [
              {
                "user_id": "",
                "user_name": "",
                "user_photo": "",
                "time_comment": "",
                "dis_comment": ""
              }
            ]
          }
        },*/
class ClassEntity extends Equatable {
  final int id;
  final String title;
  final String durations;
  final String description;
  final String video;
  final bool isSeen;
  final CommunityEntity? community;

  const ClassEntity(
      {required this.id,
     required  this.title,
     required  this.durations,
     required  this.description,
     required  this.video,
     required  this.isSeen,
       this.community});
  @override
  List<Object?> get props => [id,title ,durations,description,video,isSeen,community];
}


/* "community": {
            "count_likes":0,
            "users_community":  [
              {
                "user_id": "",
                "user_name": "",
                "user_photo": "",
                "time_comment": "",
                "dis_comment": ""
              }
            ]
          }*/
class CommunityEntity extends Equatable{
  final int countLikes ;
  final List<UsersCommunityEntity>usersCommunity;

  const CommunityEntity({required this.countLikes, required this.usersCommunity});
  @override
  List<Object?> get props =>[countLikes,usersCommunity];
}


/* "users_community":  [
              {
                "user_id": "",
                "user_name": "",
                "user_photo": "",
                "time_comment": "",
                "des_comment": ""
              }
            ]*/
class UsersCommunityEntity  extends Equatable{
  final int userId;
  final String userName;
  final String userPhoto;
  final String timeComment;
  final String desComment;

  const UsersCommunityEntity(
      {required this.userId,
     required  this.userName,
      required this.userPhoto,
     required  this.timeComment,
     required  this.desComment});

  @override
  List<Object?> get props => [userId, userName, timeComment, desComment];

}
