import 'package:human/human.dart' as human;
import 'package:human/oop/chinese.dart';

void main(List<String> arguments) {
  var chineseMan = Chinese(
      age: 15,
      name: 'Hiung su',
      gender: 'male',
      weight: 66,
      height: 190,
      nationality: 'chinese',
      isMarried: false);
  chineseMan.study(7);
  chineseMan.doMartialArts();
  print(chineseMan.toMap());
}
