enum ScreenType { sqlite, hive, objectBox }

extension Title on ScreenType {
  String get title {
    switch (this) {
      case ScreenType.sqlite:
        return 'Sqlite';
      case ScreenType.hive:
        return 'Hive';
      case ScreenType.objectBox:
        return 'ObjectBox';
    }
  }
}
