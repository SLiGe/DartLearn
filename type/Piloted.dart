import 'Spacecraft.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
    const oneSecond = Duration(seconds: 1);
// ···
    Future<void> printWithDelay(String message) async {
      await Future.delayed(oneSecond);
      print(message);
    }

    printWithDelay.call("jjj");
  }
}

class Orbiter extends Spacecraft with Piloted {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}
