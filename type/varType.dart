import 'Piloted.dart';
import 'Spacecraft.dart';

void main(List<String> args) {
  var a = 1;
  var b = '2';
  var array = [1, 2, 3];
  for (var arr in array) {
    print("arr: $arr");
  }
  var l = array.where((element) => element == 2).first;
  print(l);
  var info = {'name': 'Jack'};
  print(info);
  var s1 = Spacecraft('1', DateTime.now());
  var s = Spacecraft.unlaunched('aaa');
  s.launchDate = DateTime.now();
  print(s.launchYear);
  s1.describe();
  var s2 = Orbiter('test', DateTime.now(), 2.4);
  s2.describeCrew();
  var record = ('first', a: 2, b: true, 'last','aaa');

  print(record.$3);
}
