import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;

  get count => _count;
}
