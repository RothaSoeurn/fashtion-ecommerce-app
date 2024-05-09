abstract class ItemFilterEvent {}

class SetSelectedChipIndex extends ItemFilterEvent {
  int index;
  SetSelectedChipIndex({required this.index});
}
