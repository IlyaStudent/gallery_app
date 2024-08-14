part of '../code_kit.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  S get localization => S.of(this);
  TabsRouter get autoTabsRouter => AutoTabsRouter.of(this);
  TabController get tabController => DefaultTabController.of(this);
}
