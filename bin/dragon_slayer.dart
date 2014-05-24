import 'dart:math';

void main() {
  DragonSlayer();
}

void DragonSlayer() {
  var slaying = true;
  var youHit = new Random().nextBool();
  var damageThisRound = new Random().nextInt(5) + 1;
  var totalDamage = 0;
  
  while(slaying) {
    if(youHit) {
      print('You hit the dragon!');
      totalDamage += damageThisRound;
      if(totalDamage >= 4) {
        print('You slew the dragon!');
        slaying = false;
      } else {
        youHit = new Random().nextBool();
      }
    } else {
      print('Dragon defeats you!');
      slaying = false;
    }
  }
}