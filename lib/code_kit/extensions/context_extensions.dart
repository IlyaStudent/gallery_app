part of '../code_kit.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  S get localization => S.of(this);
  TabsRouter get autoTabsRouter => AutoTabsRouter.of(this);
  TabController get tabController => DefaultTabController.of(this);
  Size get deviceSize => MediaQuery.sizeOf(this);
  ScaffoldMessengerState get scaffoldMessanger => ScaffoldMessenger.of(this);
  NavigatorState get navigator => Navigator.of(this);
}
