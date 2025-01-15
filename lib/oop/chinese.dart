import 'package:human/oop/human.dart';

class Chinese extends Human {
  int _martialArtsExperience = 0;
  String recomendation = '';
  Map<dynamic, dynamic> martialSummary = {};
  Chinese(
      {required super.age,
      int martialArtsExperience = 0,
      required super.name,
      required super.gender,
      required super.weight,
      required super.height,
      required super.nationality,
      required super.isMarried}) {
    _martialArtsExperience = martialArtsExperience;
  }
  int get martialArtsExperience {
    return _martialArtsExperience;
  }

  set martialArtsExperience(int value){
    _martialArtsExperience = value;
  }

  void checkHeight() {
    if (height > 180) {
      recomendation = 'you have the upper hand in long range combat';
    } else {
      recomendation = 'Stick close to the oponent';
    }
  }

  void doMartialArts() {
    checkHeight();
    String level;
    if (_martialArtsExperience < 100) {
      level = 'beginner';
    } else if (_martialArtsExperience > 100 && _martialArtsExperience < 200) {
      level = 'intermidate';
    } else {
      level = 'advanced';
    }
    _martialArtsExperience++;
    martialSummary['MartialArtslevel'] = level;
    martialSummary.addAll(
        {'MartialArtslevel': level, 'recomended movement': recomendation});
  }

  @override
  void highschool(int studied) {
    if (age < 19 && age > 16) {
      if (studied < 7) {
        studiedEnough = false;
      } else {
        studiedEnough = true;
      }
    }
  }

  @override
  void elementary(int studied) {
    if (age < 16 && age > 12) {
      if (studied < 4) {
        studiedEnough = false;
      } else {
        studiedEnough = true;
      }
    }
  }

  @override
  void childStudy(int studied) {
    if (age < 12 && age > 6) {
      if (studied < 3) {
        studiedEnough = false;
      } else {
        studiedEnough = true;
      }
    }
  }

  @override
  Map toMap() {
    var superMap = super.toMap();
    return {
      ...superMap,
      ...martialSummary,
    };
  }

// @override
//   void study(int hoursStudied) {

//     super.study(hoursStudied);
//   }
}
