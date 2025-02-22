class Human {
  int age = 0;
  String name;
  String gender;
  int height;
  int weight;
  int sports = 0;
  String nationality;
  bool studiedEnough = false;
  bool hasJob = false;

  bool isMarried;
  Human({
    required this.age,
    required this.name,
    required this.gender,
    required this.weight,
    required this.height,
    required this.nationality,
    required this.isMarried,
  });

  // void run() {}

  void study(int hoursStudied) {
    highschool(hoursStudied);
    elementary(hoursStudied);
    ebtedai(hoursStudied);
    university(hoursStudied, true);
  }

  void playgames(int hours) {
    if (age > 5 && studiedEnough) {
      for (int i = 0; i < hours; i++) {
        if (i != hours) {
          print('You have played $i hours');
        } else
          print('You have played enough today ');
      }
    }
  }

  void getMarried() {
    if (gender == 'male' && hasJob && age > 18) {
      isMarried = true;
    } else if (age > 18) {
      isMarried = true;
    }
  }

  void playBasketball(int experience) {
    if (age < 7) {
      print('youre too young to play');
    } else {
      if (experience > 1) {
        sports += 1;
      } else {
        print('keep learning');
      }
    }
  }

  void highschool(int studied) {
    if (age < 19 && age > 16) {
      if (studied < 6) {
        studiedEnough = false;
      } else {
        studiedEnough = true;
      }
    }
  }

  void elementary(int studied) {
    if (age < 16 && age > 12) {
      if (studied < 3) {
        studiedEnough = false;
      } else {
        studiedEnough = true;
      }
    }
  }

  void ebtedai(int studied) {
    if (age < 12 && age > 6) {
      if (studied < 2) {
        studiedEnough = false;
      } else {
        studiedEnough = true;
      }
    }
  }

  void university(int studied, bool shabeEmtahan) {
    if (age > 18) {
      if (!shabeEmtahan) {
        studiedEnough = true;
      } else if (studied > 4) {
        studiedEnough = true;
      } else if (studied < 4) {
        print('inshalah obisi term');
      }
    }
  }

  Map toMap() {
    return {
      'age': age,
      'height': height,
      'weight': weight,
      'studiedEnough': studiedEnough,
      'nationality': nationality,
      'name': name,
      'married': isMarried
    };
  }
}
