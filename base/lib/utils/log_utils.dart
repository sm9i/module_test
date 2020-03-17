///
class LogUtil {
  static String _tag = '';
  static bool _isDebug = false;
  static int _logMaxLength = 300;

  static void init({
    bool isDebug = false,
    String tag = '[FLUTTER-LOG]:',
    int maxLength = 300,
  }) {
    _isDebug = isDebug;
    _tag = tag;
    _logMaxLength = maxLength;
  }

  static p(String p) {
    if (_isDebug) {
      int length = p.length;
      String printText = '';
      var rows = (length / _logMaxLength).floor();
      print(rows);
      if (rows != 0) {
        for (int i = 0; i < rows; i++) {
          printText +=
              '${p.substring(i * _logMaxLength, (i + 1) * _logMaxLength)} \n';
        }
        print("$_tag \n$printText");
      } else {
        printText = p;
        print("$_tag $printText");
      }
    }
  }
}
