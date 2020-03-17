import 'package:base/utils/log_utils.dart';
import 'package:flutter/services.dart';

main() {
  LogUtil.init(isDebug: true, );
  String a = '';
  for (var _ in List(201)) {
    a += 'Ω';
  }
  LogUtil.p(a);
}
