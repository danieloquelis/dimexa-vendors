enum Env {
  dev,
  stage,
  prod
}

extension CatExtension on Env {
  String get url {
    return [
      'https://dev.blaze.me',
      'https://stage.blaze.me',
      'https://prod.blaze.me'
    ][index];
  }
}