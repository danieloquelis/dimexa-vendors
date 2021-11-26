import 'package:objectbox/objectbox.dart';

@Entity()
class Session {
  int id = 0;
  String token;
  String deviceToken; //serial number

  Session({
    required this.token,
    required this.deviceToken
  });
}