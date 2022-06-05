enum weather {
  sunny,
  rainy,
  winter,
}

void main() {
  var Weather = weather.rainy;
  switch (Weather) {
    case weather.rainy:
      print('too hot today');
      break;
    case weather.winter:
      print('too cold today');
      break;
  }
}
