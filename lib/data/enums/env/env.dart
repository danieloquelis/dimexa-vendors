enum Env {
  dev,
  stage,
  prod
}

extension CatExtension on Env {
  String get url {
    return [
      'http://190.117.109.188:3000',//'http://190.117.109.188:3000',//'http://190.117.166.223:3000',
      'http://190.117.109.188:3000',
      'http://190.117.109.188:3000'
    ][index];
  }
}