abstract class SettingEvent {}

class SetCurrentPageIndex extends SettingEvent {
  int index;
  SetCurrentPageIndex({required this.index});
}
